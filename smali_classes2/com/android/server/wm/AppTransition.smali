.class public final Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field public static final sFlagToString:Ljava/util/ArrayList;


# instance fields
.field public mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field public mAppTransitionState:I

.field public final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field public mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field public final mDefaultWindowAnimationStyleResId:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mHandleAppTransitionTimeoutRunnable:Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;

.field public final mHandler:Landroid/os/Handler;

.field public mLastChangingApp:Ljava/lang/String;

.field public mLastClosingApp:Ljava/lang/String;

.field public mLastOpeningApp:Ljava/lang/String;

.field public mLastUsedAppTransition:I

.field public final mListeners:Ljava/util/ArrayList;

.field public final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

.field public mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field public mNextAppTransitionAnimationsSpecsPending:Z

.field public mNextAppTransitionBackgroundColor:I

.field public mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field public mNextAppTransitionEnter:I

.field public mNextAppTransitionExit:I

.field public mNextAppTransitionFlags:I

.field public mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field public mNextAppTransitionIsSync:Z

.field public mNextAppTransitionOverrideRequested:Z

.field public mNextAppTransitionPackage:Ljava/lang/String;

.field public final mNextAppTransitionRequests:Ljava/util/ArrayList;

.field public mNextAppTransitionScaleUp:Z

.field public mNextAppTransitionType:I

.field public mOverrideTaskTransition:Z

.field public mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpRect:Landroid/graphics/Rect;

.field final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Landroid/util/Pair;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_SHADE"

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/util/Pair;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_NO_ANIMATION"

    .line 31
    .line 32
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance v1, Landroid/util/Pair;

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_WITH_WALLPAPER"

    .line 46
    .line 47
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance v1, Landroid/util/Pair;

    .line 54
    .line 55
    const/16 v2, 0x8

    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_SUBTLE_ANIMATION"

    .line 62
    .line 63
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    new-instance v1, Landroid/util/Pair;

    .line 70
    .line 71
    const/16 v2, 0x200

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_LAUNCHER_WITH_IN_WINDOW_ANIMATIONS"

    .line 78
    .line 79
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v1, Landroid/util/Pair;

    .line 86
    .line 87
    const/16 v2, 0x10

    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, "TRANSIT_FLAG_APP_CRASHED"

    .line 94
    .line 95
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance v1, Landroid/util/Pair;

    .line 102
    .line 103
    const/16 v2, 0x20

    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v3, "TRANSIT_FLAG_OPEN_BEHIND"

    .line 110
    .line 111
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 16
    .line 17
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 18
    .line 19
    new-instance v1, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 25
    .line 26
    new-instance v1, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AppTransition;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 56
    .line 57
    new-instance v1, Landroid/os/Handler;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    new-instance p2, Lcom/android/internal/policy/TransitionAnimation;

    .line 73
    .line 74
    sget-object p3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 75
    .line 76
    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 77
    .line 78
    invoke-static {p3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    const-string v1, "WindowManager"

    .line 83
    .line 84
    invoke-direct {p2, p1, p3, v1}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sget-object p2, Lcom/android/internal/R$styleable;->Window:[I

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/16 p2, 0x8

    .line 100
    .line 101
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public static appTransitionOldToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "<UNKNOWN: "

    .line 5
    .line 6
    const-string v1, ">"

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_1
    const-string p0, "TRANSIT_OLD_KEYGUARD_OCCLUDE_BY_DREAM"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_2
    const-string p0, "TRANSIT_OLD_DREAM_ACTIVITY_CLOSE"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    const-string p0, "TRANSIT_OLD_DREAM_ACTIVITY_OPEN"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_4
    const-string p0, "TRANSIT_OLD_TASK_FRAGMENT_CHANGE"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_5
    const-string p0, "TRANSIT_OLD_TASK_FRAGMENT_CLOSE"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_6
    const-string p0, "TRANSIT_OLD_TASK_FRAGMENT_OPEN"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_7
    const-string p0, "TRANSIT_OLD_CRASHING_ACTIVITY_CLOSE"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_8
    const-string p0, "TRANSIT_OLD_TRANSLUCENT_ACTIVITY_CLOSE"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_9
    const-string p0, "TRANSIT_OLD_TRANSLUCENT_ACTIVITY_OPEN"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_a
    const-string p0, "TRANSIT_OLD_KEYGUARD_UNOCCLUDE"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_b
    const-string p0, "TRANSIT_OLD_KEYGUARD_OCCLUDE"

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_c
    const-string p0, "TRANSIT_OLD_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_d
    const-string p0, "TRANSIT_OLD_KEYGUARD_GOING_AWAY"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_e
    const-string p0, "TRANSIT_OLD_ACTIVITY_RELAUNCH"

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_f
    const-string p0, "TRANSIT_OLD_TASK_OPEN_BEHIND"

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_10
    const-string p0, "TRANSIT_OLD_WALLPAPER_INTRA_CLOSE"

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_11
    const-string p0, "TRANSIT_OLD_WALLPAPER_INTRA_OPEN"

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_12
    const-string p0, "TRANSIT_OLD_WALLPAPER_OPEN"

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_13
    const-string p0, "TRANSIT_OLD_WALLPAPER_CLOSE"

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_14
    const-string p0, "TRANSIT_OLD_TASK_TO_BACK"

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_15
    const-string p0, "TRANSIT_OLD_TASK_TO_FRONT"

    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_16
    const-string p0, "TRANSIT_OLD_TASK_CLOSE"

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_17
    const-string p0, "TRANSIT_OLD_TASK_OPEN"

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_18
    const-string p0, "TRANSIT_OLD_ACTIVITY_CLOSE"

    .line 83
    .line 84
    return-object p0

    .line 85
    :pswitch_19
    const-string p0, "TRANSIT_OLD_ACTIVITY_OPEN"

    .line 86
    .line 87
    return-object p0

    .line 88
    :pswitch_1a
    const-string p0, "TRANSIT_OLD_NONE"

    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_1b
    const-string p0, "TRANSIT_OLD_UNSET"

    .line 92
    .line 93
    return-object p0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isKeyguardGoingAwayTransitOld(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method


# virtual methods
.method public final canOverridePendingAppTransition()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final canSkipFirstFrame()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1
.end method

.method public final clear(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionIsSync:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 27
    .line 28
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final containsTransitRequest(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "mAppTransitionState="

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v0, v2, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v2, "unknown state="

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v0, "APP_STATE_TIMEOUT"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "APP_STATE_RUNNING"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "APP_STATE_READY"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-string v0, "APP_STATE_IDLE"

    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string/jumbo v0, "mNextAppTransitionType="

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 74
    .line 75
    packed-switch v0, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string/jumbo v2, "unknown type="

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_1

    .line 96
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :pswitch_7
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_8
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :pswitch_9
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    .line 121
    .line 122
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 126
    .line 127
    const-string/jumbo v2, "mNextAppTransitionPackage="

    .line 128
    .line 129
    .line 130
    if-nez v0, :cond_5

    .line 131
    .line 132
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 133
    .line 134
    if-ne v0, v1, :cond_6

    .line 135
    .line 136
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 143
    .line 144
    const-string/jumbo v1, "mNextAppTransitionEnter=0x"

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v0, p2, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 151
    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v0, " mNextAppTransitionExit=0x"

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 165
    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v0, " mNextAppTransitionBackgroundColor=0x"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    .line 179
    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 188
    .line 189
    packed-switch v0, :pswitch_data_1

    .line 190
    .line 191
    .line 192
    goto/16 :goto_4

    .line 193
    .line 194
    :pswitch_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/4 v0, 0x0

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_4

    .line 223
    .line 224
    :pswitch_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v0, "mDefaultNextAppTransitionAnimationSpec="

    .line 228
    .line 229
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string/jumbo v0, "mNextAppTransitionAnimationsSpecs="

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 267
    .line 268
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 269
    .line 270
    if-eqz v1, :cond_8

    .line 271
    .line 272
    iget-object v1, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 273
    .line 274
    if-nez v1, :cond_7

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_7
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_8
    :goto_2
    new-instance v1, Ljava/lang/Throwable;

    .line 282
    .line 283
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v2, "WindowManager"

    .line 287
    .line 288
    const-string v3, "Starting rect for app requested, but none available"

    .line 289
    .line 290
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 294
    .line 295
    .line 296
    :goto_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string/jumbo v0, "mNextAppTransitionStartX="

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 306
    .line 307
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 310
    .line 311
    .line 312
    const-string v0, " mNextAppTransitionStartY="

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 318
    .line 319
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 320
    .line 321
    const-string/jumbo v1, "mNextAppTransitionStartWidth="

    .line 322
    .line 323
    .line 324
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 334
    .line 335
    .line 336
    const-string v0, " mNextAppTransitionStartHeight="

    .line 337
    .line 338
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 342
    .line 343
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 348
    .line 349
    .line 350
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 351
    .line 352
    if-eqz v0, :cond_9

    .line 353
    .line 354
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    const-string/jumbo v0, "mNextAppTransitionCallback="

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 364
    .line 365
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_9
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 369
    .line 370
    if-eqz v0, :cond_a

    .line 371
    .line 372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const-string/jumbo v0, "mLastUsedAppTransition="

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 382
    .line 383
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    const-string/jumbo v0, "mLastOpeningApp="

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 400
    .line 401
    const-string/jumbo v1, "mLastClosingApp="

    .line 402
    .line 403
    .line 404
    invoke-static {p1, v0, p2, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 408
    .line 409
    const-string/jumbo v1, "mLastChangingApp="

    .line 410
    .line 411
    .line 412
    invoke-static {p1, v0, p2, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :cond_a
    return-void

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getDefaultWindowAnimationStyleResId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFirstAppTransition()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/4 v3, 0x7

    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    .line 28
    const/16 v3, 0x8

    .line 29
    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    const/16 v3, 0x9

    .line 33
    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    return v2

    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v0
.end method

.method public final getKeyguardTransition()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v1, 0x9

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/4 v4, 0x0

    .line 41
    if-ne v0, v2, :cond_1

    .line 42
    .line 43
    if-ne p0, v2, :cond_1

    .line 44
    .line 45
    return v4

    .line 46
    :cond_1
    if-eq v0, v2, :cond_2

    .line 47
    .line 48
    if-ge v0, p0, :cond_2

    .line 49
    .line 50
    return v4

    .line 51
    :cond_2
    if-eq v0, v2, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move v1, v3

    .line 55
    :goto_0
    return v1
.end method

.method public final goodToGo(ILcom/android/server/wm/ActivityRecord;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    iput v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 9
    .line 10
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    iput v3, v0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v4, v3

    .line 30
    :goto_0
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v5, v3

    .line 38
    :goto_1
    if-eqz v5, :cond_2

    .line 39
    .line 40
    invoke-interface {v5}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    :goto_2
    move v9, v6

    .line 50
    :goto_3
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-ge v9, v10, :cond_3

    .line 57
    .line 58
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 65
    .line 66
    invoke-virtual {v10, v7, v8}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(J)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v9, v9, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/4 v7, 0x1

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    move v4, v7

    .line 82
    goto :goto_4

    .line 83
    :cond_4
    move v4, v6

    .line 84
    :goto_4
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 85
    .line 86
    const/16 v9, 0x10

    .line 87
    .line 88
    if-eqz v8, :cond_1a

    .line 89
    .line 90
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 91
    .line 92
    aget-boolean v1, v0, v6

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 97
    .line 98
    const/4 v14, 0x0

    .line 99
    const/4 v15, 0x0

    .line 100
    const-wide v11, 0x60f364391ffb3860L

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    const/4 v13, 0x0

    .line 106
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-boolean v1, v8, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    .line 110
    .line 111
    if-eqz v1, :cond_7

    .line 112
    .line 113
    aget-boolean v0, v0, v6

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 118
    .line 119
    const/4 v13, 0x0

    .line 120
    const/4 v14, 0x0

    .line 121
    const-wide v10, -0x1a68c1e5abcac998L    # -2.4111371486104395E181

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    const/4 v12, 0x0

    .line 127
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-virtual {v8}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 131
    .line 132
    .line 133
    const-string v0, "already_cancelled"

    .line 134
    .line 135
    invoke-virtual {v8, v0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_d

    .line 139
    .line 140
    :cond_7
    iget-object v1, v8, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    .line 141
    .line 142
    iget-object v4, v8, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;

    .line 143
    .line 144
    iget-object v5, v8, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 145
    .line 146
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    const v10, 0x461c4000    # 10000.0f

    .line 151
    .line 152
    .line 153
    mul-float/2addr v5, v10

    .line 154
    float-to-long v10, v5

    .line 155
    invoke-virtual {v1, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    .line 157
    .line 158
    new-instance v1, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 159
    .line 160
    invoke-direct {v1}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v8, v1, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteAnimationController;

    .line 164
    .line 165
    iput-object v1, v8, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 166
    .line 167
    aget-boolean v1, v0, v6

    .line 168
    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 172
    .line 173
    const-wide v11, 0x62745a837b8f3badL    # 1.8753321224178653E166

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    const/4 v13, 0x0

    .line 179
    const/4 v14, 0x0

    .line 180
    const/4 v15, 0x0

    .line 181
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    iget-object v4, v8, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    sub-int/2addr v4, v7

    .line 196
    :goto_5
    if-ltz v4, :cond_10

    .line 197
    .line 198
    iget-object v5, v8, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    check-cast v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 205
    .line 206
    iget-object v10, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 207
    .line 208
    iget-object v11, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 209
    .line 210
    if-eqz v10, :cond_a

    .line 211
    .line 212
    iget-object v12, v10, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 213
    .line 214
    if-eqz v12, :cond_a

    .line 215
    .line 216
    iget-object v10, v10, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 217
    .line 218
    if-nez v10, :cond_9

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_9
    invoke-virtual {v11, v5}, Lcom/android/server/wm/WindowContainer;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    iput-object v10, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_a
    :goto_6
    move-object v10, v3

    .line 229
    :goto_7
    if-eqz v10, :cond_c

    .line 230
    .line 231
    aget-boolean v5, v0, v6

    .line 232
    .line 233
    if-eqz v5, :cond_b

    .line 234
    .line 235
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 240
    .line 241
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v16

    .line 245
    const/4 v15, 0x0

    .line 246
    const-wide v12, -0x3d37450040baca7aL    # -5.438286741770705E13

    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    const/4 v14, 0x0

    .line 252
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_b
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_8

    .line 259
    :cond_c
    aget-boolean v10, v0, v6

    .line 260
    .line 261
    if-eqz v10, :cond_d

    .line 262
    .line 263
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 268
    .line 269
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v16

    .line 273
    const/4 v15, 0x0

    .line 274
    const-wide v12, -0x3d39437e8072c76cL    # -4.999776456561716E13

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    const/4 v14, 0x0

    .line 280
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_d
    iget-object v10, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 284
    .line 285
    if-eqz v10, :cond_e

    .line 286
    .line 287
    iget-object v11, v10, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 288
    .line 289
    if-eqz v11, :cond_e

    .line 290
    .line 291
    iget v12, v10, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I

    .line 292
    .line 293
    invoke-interface {v11, v12, v10}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 294
    .line 295
    .line 296
    :cond_e
    iget-object v5, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 297
    .line 298
    if-eqz v5, :cond_f

    .line 299
    .line 300
    iget-object v10, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 301
    .line 302
    if-eqz v10, :cond_f

    .line 303
    .line 304
    iget v11, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I

    .line 305
    .line 306
    invoke-interface {v10, v11, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 307
    .line 308
    .line 309
    :cond_f
    iget-object v5, v8, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    :goto_8
    add-int/lit8 v4, v4, -0x1

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    new-array v4, v4, [Landroid/view/RemoteAnimationTarget;

    .line 322
    .line 323
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    move-object v4, v1

    .line 328
    check-cast v4, [Landroid/view/RemoteAnimationTarget;

    .line 329
    .line 330
    array-length v1, v4

    .line 331
    if-nez v1, :cond_13

    .line 332
    .line 333
    const/16 v1, 0x16

    .line 334
    .line 335
    if-eq v2, v1, :cond_13

    .line 336
    .line 337
    const/16 v1, 0x21

    .line 338
    .line 339
    if-eq v2, v1, :cond_13

    .line 340
    .line 341
    const/16 v1, 0x17

    .line 342
    .line 343
    if-ne v2, v1, :cond_11

    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_11
    aget-boolean v0, v0, v6

    .line 347
    .line 348
    if-eqz v0, :cond_12

    .line 349
    .line 350
    iget-object v0, v8, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    int-to-long v0, v0

    .line 357
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 358
    .line 359
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v14

    .line 367
    const/4 v13, 0x0

    .line 368
    const-wide v10, 0x5d5d4d4260333d2bL    # 5.5830586633983385E141

    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    const/4 v12, 0x1

    .line 374
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    :cond_12
    invoke-virtual {v8}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 378
    .line 379
    .line 380
    const-string/jumbo v0, "no_app_targets"

    .line 381
    .line 382
    .line 383
    invoke-virtual {v8, v0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_d

    .line 387
    .line 388
    :cond_13
    :goto_9
    iget-object v1, v8, Lcom/android/server/wm/RemoteAnimationController;->mOnRemoteAnimationReady:Ljava/lang/Runnable;

    .line 389
    .line 390
    if-eqz v1, :cond_14

    .line 391
    .line 392
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 393
    .line 394
    .line 395
    iput-object v3, v8, Lcom/android/server/wm/RemoteAnimationController;->mOnRemoteAnimationReady:Ljava/lang/Runnable;

    .line 396
    .line 397
    :cond_14
    aget-boolean v1, v0, v6

    .line 398
    .line 399
    if-eqz v1, :cond_15

    .line 400
    .line 401
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 402
    .line 403
    const-wide v11, -0x612cebf31396c470L

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    const/4 v13, 0x0

    .line 409
    const/4 v14, 0x0

    .line 410
    const/4 v15, 0x0

    .line 411
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    :cond_15
    iget-object v1, v8, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 415
    .line 416
    iget-object v3, v8, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 417
    .line 418
    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    .line 419
    .line 420
    .line 421
    move-result-wide v17

    .line 422
    iget-object v3, v8, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 423
    .line 424
    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    .line 425
    .line 426
    .line 427
    move-result-wide v19

    .line 428
    new-instance v3, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda3;

    .line 429
    .line 430
    invoke-direct {v3, v8}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    .line 431
    .line 432
    .line 433
    iget-object v5, v8, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 434
    .line 435
    move-object/from16 v16, v1

    .line 436
    .line 437
    move-object/from16 v21, v3

    .line 438
    .line 439
    move-object/from16 v22, v5

    .line 440
    .line 441
    invoke-static/range {v16 .. v22}, Lcom/android/server/wm/WallpaperAnimationAdapter;->startWallpaperAnimations(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    aget-boolean v0, v0, v6

    .line 446
    .line 447
    if-eqz v0, :cond_16

    .line 448
    .line 449
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 450
    .line 451
    const-wide v11, 0x79578d4e3cfd39b7L    # 3.261695165029107E276

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    const/4 v13, 0x0

    .line 457
    const/4 v14, 0x0

    .line 458
    const/4 v15, 0x0

    .line 459
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    :cond_16
    iget-object v0, v8, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 463
    .line 464
    iget-object v1, v8, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 465
    .line 466
    iget-object v3, v8, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 467
    .line 468
    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    .line 469
    .line 470
    .line 471
    move-result-wide v12

    .line 472
    iget-object v3, v8, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 473
    .line 474
    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    .line 475
    .line 476
    .line 477
    move-result-wide v14

    .line 478
    iget-object v3, v8, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    .line 479
    .line 480
    new-instance v11, Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .line 484
    .line 485
    const/16 v10, 0x14

    .line 486
    .line 487
    if-eq v2, v10, :cond_17

    .line 488
    .line 489
    const/16 v10, 0x15

    .line 490
    .line 491
    if-ne v2, v10, :cond_18

    .line 492
    .line 493
    :cond_17
    move-object v7, v11

    .line 494
    goto :goto_a

    .line 495
    :cond_18
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-eqz v0, :cond_19

    .line 500
    .line 501
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 502
    .line 503
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 504
    .line 505
    new-instance v1, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    .line 506
    .line 507
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 508
    .line 509
    move-object/from16 v16, v10

    .line 510
    .line 511
    move-object v10, v1

    .line 512
    move-object v7, v11

    .line 513
    move-object/from16 v11, v16

    .line 514
    .line 515
    invoke-direct/range {v10 .. v15}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;-><init>(Lcom/android/server/wm/WindowContainer;JJ)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 522
    .line 523
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    invoke-virtual {v0, v3, v1, v6, v9}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    goto :goto_b

    .line 538
    :cond_19
    move-object v7, v11

    .line 539
    goto :goto_b

    .line 540
    :goto_a
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 541
    .line 542
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 543
    .line 544
    new-instance v9, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;

    .line 545
    .line 546
    move-object/from16 v16, v9

    .line 547
    .line 548
    move-object/from16 v17, v0

    .line 549
    .line 550
    move-wide/from16 v18, v12

    .line 551
    .line 552
    move-wide/from16 v20, v14

    .line 553
    .line 554
    move-object/from16 v22, v3

    .line 555
    .line 556
    move-object/from16 v23, v7

    .line 557
    .line 558
    invoke-direct/range {v16 .. v23}, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 559
    .line 560
    .line 561
    const/4 v0, 0x1

    .line 562
    invoke-virtual {v1, v9, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 563
    .line 564
    .line 565
    :goto_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    new-array v0, v0, [Landroid/view/RemoteAnimationTarget;

    .line 570
    .line 571
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    move-object v7, v0

    .line 576
    check-cast v7, [Landroid/view/RemoteAnimationTarget;

    .line 577
    .line 578
    iget-object v0, v8, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 579
    .line 580
    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 581
    .line 582
    new-instance v10, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;

    .line 583
    .line 584
    move-object v0, v10

    .line 585
    move-object v1, v8

    .line 586
    move/from16 v2, p1

    .line 587
    .line 588
    move-object v3, v4

    .line 589
    move-object v4, v5

    .line 590
    move-object v5, v7

    .line 591
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RemoteAnimationController;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 595
    .line 596
    .line 597
    const/4 v0, 0x1

    .line 598
    invoke-virtual {v8, v0}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 599
    .line 600
    .line 601
    goto :goto_d

    .line 602
    :cond_1a
    const/16 v3, 0x8

    .line 603
    .line 604
    if-eq v2, v3, :cond_1c

    .line 605
    .line 606
    if-eq v2, v9, :cond_1c

    .line 607
    .line 608
    const/16 v3, 0xa

    .line 609
    .line 610
    if-ne v2, v3, :cond_1b

    .line 611
    .line 612
    goto :goto_c

    .line 613
    :cond_1b
    const/16 v3, 0xc

    .line 614
    .line 615
    if-ne v2, v3, :cond_1d

    .line 616
    .line 617
    :cond_1c
    :goto_c
    if-eqz v5, :cond_1d

    .line 618
    .line 619
    if-nez v4, :cond_1d

    .line 620
    .line 621
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 622
    .line 623
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 624
    .line 625
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-eqz v2, :cond_1d

    .line 630
    .line 631
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 632
    .line 633
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 634
    .line 635
    if-nez v2, :cond_1d

    .line 636
    .line 637
    new-instance v2, Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 638
    .line 639
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 640
    .line 641
    invoke-direct {v2, v0}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 642
    .line 643
    .line 644
    invoke-interface {v5}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    .line 645
    .line 646
    .line 647
    move-result-wide v3

    .line 648
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 649
    .line 650
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeOutAndInSequentially(JLandroid/view/SurfaceControl;)V

    .line 651
    .line 652
    .line 653
    :cond_1d
    :goto_d
    return v6
.end method

.method public isNextAppTransitionOverrideRequested()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isReady()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :cond_1
    :goto_0
    return v0
.end method

.method public final isTransitionSet()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    const-string p0, "WindowManager"

    .line 2
    .line 3
    invoke-static {p1, p2, p0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final overridePendingAppTransition(Ljava/lang/String;IIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->clear(Z)V

    .line 9
    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 14
    .line 15
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 16
    .line 17
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 18
    .line 19
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 22
    .line 23
    .line 24
    iput-object p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 25
    .line 26
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 27
    .line 28
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->clear(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x6

    .line 16
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 17
    .line 18
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    const/4 p4, 0x0

    .line 23
    :goto_1
    array-length v0, p1

    .line 24
    if-ge p4, v0, :cond_3

    .line 25
    .line 26
    aget-object v0, p1, p4

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const-class v2, Lcom/android/server/wm/Task;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v3, v0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 58
    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    if-nez p4, :cond_2

    .line 73
    .line 74
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 75
    .line 76
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    iget-object v7, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    .line 89
    .line 90
    move-object v2, p0

    .line 91
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_2
    add-int/lit8 p4, p4, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 101
    .line 102
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public final overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->clear(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x6

    .line 16
    :goto_0
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 19
    .line 20
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    new-instance p3, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;ZZ)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const/4 v5, 0x3

    .line 27
    const/4 v6, 0x0

    .line 28
    const-wide v3, 0x564916acc45f3ce5L    # 4.6032487276588904E107

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionIsSync:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    xor-int/lit8 v0, p3, 0x1

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->clear(Z)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0xa

    .line 52
    .line 53
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 54
    .line 55
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    move-object v1, v0

    .line 64
    move-object v4, p1

    .line 65
    move v6, p3

    .line 66
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;Z)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 70
    .line 71
    iput-boolean p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionIsSync:Z

    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public final postAnimationCallback()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, v3}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final prepare()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    if-nez v0, :cond_2

    .line 12
    .line 13
    iput v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 16
    .line 17
    .line 18
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ge v2, v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return v3

    .line 41
    :cond_2
    return v2
.end method

.method public final putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    .line 5
    add-int/2addr p3, p1

    .line 6
    add-int/2addr p4, p2

    .line 7
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    invoke-direct {v0, p1, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 15
    .line 16
    return-void
.end method

.method public final registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "mNextAppTransitionRequests=["

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Integer;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const-string v2, ", "

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    packed-switch v2, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    const-string v3, "<UNKNOWN: "

    .line 43
    .line 44
    const-string v4, ">"

    .line 45
    .line 46
    invoke-static {v2, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_1

    .line 51
    :pswitch_0
    const-string v2, "TRANSIT_KEYGUARD_UNOCCLUDE"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :pswitch_1
    const-string v2, "TRANSIT_KEYGUARD_OCCLUDE"

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :pswitch_2
    const-string v2, "TRANSIT_KEYGUARD_GOING_AWAY"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_3
    const-string v2, "TRANSIT_CHANGE"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_4
    const-string v2, "TRANSIT_RELAUNCH"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :pswitch_5
    const-string v2, "TRANSIT_TO_BACK"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_6
    const-string v2, "TRANSIT_TO_FRONT"

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_7
    const-string v2, "TRANSIT_CLOSE"

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_8
    const-string v2, "TRANSIT_OPEN"

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_9
    const-string v2, "TRANSIT_NONE"

    .line 79
    .line 80
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string v1, "]"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, ", mNextAppTransitionFlags="

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    sget-object v3, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v4, ""

    .line 111
    .line 112
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_3

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Landroid/util/Pair;

    .line 123
    .line 124
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v6, Ljava/lang/Integer;

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    and-int/2addr v6, p0

    .line 133
    if-eqz v6, :cond_2

    .line 134
    .line 135
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v4, Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v4, " | "

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final updateBooster()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 23
    .line 24
    if-eq p0, v3, :cond_1

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq p0, v4, :cond_1

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    :cond_1
    move v2, v3

    .line 32
    :cond_2
    iget-object p0, v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAppTransitionRunning:Z

    .line 36
    .line 37
    if-eq v1, v2, :cond_4

    .line 38
    .line 39
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAppTransitionRunning:Z

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    const/4 v1, -0x4

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/16 v1, -0xa

    .line 46
    .line 47
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/ThreadPriorityBooster;->setBoostToPriority(I)V

    .line 48
    .line 49
    .line 50
    iget v2, v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    .line 51
    .line 52
    invoke-static {v2, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 53
    .line 54
    .line 55
    iget v0, v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    :goto_2
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v0
.end method
