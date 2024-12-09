.class public final Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final SHOW_TYPES_FOR_PANIC:I

.field public static final SHOW_TYPES_FOR_SWIPE:I

.field public static final USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

.field public static final sTmpClientFrames:Landroid/window/ClientWindowFrames;

.field public static final sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

.field public static final sTmpRect:Landroid/graphics/Rect;

.field public static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAllowLockscreenWhenOn:Z

.field public final mAppTransitionListener:Lcom/android/server/wm/DisplayPolicy$2;

.field public volatile mAwake:Z

.field public mBottomGestureHost:Lcom/android/server/wm/WindowState;

.field public mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

.field public mCanSystemBarsBeShownByUser:Z

.field public final mCarDockEnablesAccelerometer:Z

.field public mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserResources:Landroid/content/res/Resources;

.field public final mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

.field public mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

.field public mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

.field public mDefaultStatusBar:Lcom/android/server/wm/WindowState;

.field public final mDeskDockEnablesAccelerometer:Z

.field public mDexTaskbarHeight:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public volatile mDockMode:I

.field public mDreamingLockscreen:Z

.field public mEdgeEnabled:Z

.field public final mExt:Lcom/android/server/wm/DisplayPolicyExt;

.field public mFocusedApp:Ljava/lang/String;

.field public mFocusedWindow:Lcom/android/server/wm/WindowState;

.field public final mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

.field public mForceShowNavigationBarEnabled:Z

.field public mForciblyShownTypes:I

.field public mFreeformTaskSurfaceOverlappingWithNavBar:Z

.field public final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field public final mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

.field public volatile mHasNavigationBar:Z

.field public volatile mHdmiPlugged:Z

.field public final mHiddenNavPanic:Lcom/android/server/wm/DisplayPolicy$4;

.field public mImeInsetsConsumed:Z

.field public mImmersiveConfirmationWindowExists:Z

.field public final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field public final mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

.field public mIsFreeformWindowOverlappingWithNavBar:Z

.field public mIsImmersiveMode:Z

.field public mIsKnoxZtStarted:Z

.field public mIsPipWindowOverlappingWithNavBar:Z

.field public mIsResizingByDivider:Z

.field public volatile mKeyguardDrawComplete:Z

.field public mLastAppearance:I

.field public mLastBehavior:I

.field public mLastDisableFlags:I

.field public mLastFocusIsFullscreen:Z

.field public mLastFocusIsFullscreenAll:Z

.field public mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public mLastRequestedVisibleTypes:I

.field public mLastShowingDream:Z

.field public mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mLeftGestureHost:Lcom/android/server/wm/WindowState;

.field public mLeftGestureInset:I

.field public final mLetterboxDetails:Ljava/util/ArrayList;

.field public volatile mLidState:I

.field public final mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarOpacityMode:I

.field public mNavigationBar:Lcom/android/server/wm/WindowState;

.field public volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field public volatile mNavigationBarCanMove:Z

.field public mNavigationBarPosition:I

.field public volatile mNotificationShade:Lcom/android/server/wm/WindowState;

.field public final mPanicThresholdMs:J

.field public mPanicTime:J

.field public mPendingPanicGestureUptime:J

.field public volatile mPersistentVrModeEnabled:Z

.field public mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field public final mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field public final mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

.field public mRemoteInsetsControllerControlsSystemBars:Z

.field public mRightGestureHost:Lcom/android/server/wm/WindowState;

.field public mRightGestureInset:I

.field public volatile mScreenOnEarly:Z

.field public volatile mScreenOnFully:Z

.field public volatile mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mShouldAttachNavBarToAppDuringTransition:Z

.field public mShowingDream:Z

.field public mSkipTransferTouchToStatusBar:Z

.field public mStatusBar:Lcom/android/server/wm/WindowState;

.field public final mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

.field public final mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

.field public final mStatusBarBackgroundWindows:Ljava/util/ArrayList;

.field public final mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSystemBarColorApps:Landroid/util/ArraySet;

.field public final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field public mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

.field public final mTmpFrame:Landroid/graphics/Rect;

.field public mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field public mTopGestureHost:Lcom/android/server/wm/WindowState;

.field public mTopIsFullscreen:Z

.field public mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

.field public mTouchEventViewHash:I

.field public mUiContext:Landroid/content/Context;

.field public final mWindowBounds:Landroid/graphics/Rect;

.field public final mWindowLayout:Landroid/view/WindowLayout;

.field public volatile mWindowManagerDrawComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    or-int/2addr v0, v1

    .line 10
    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    .line 11
    .line 12
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    .line 17
    .line 18
    const-string/jumbo v0, "persist.wm.debug.cached_insets_switch"

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance v0, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 41
    .line 42
    new-instance v0, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 48
    .line 49
    new-instance v0, Landroid/window/ClientWindowFrames;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 11

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
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 24
    .line 25
    new-instance v3, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 31
    .line 32
    new-instance v3, Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 38
    .line 39
    new-instance v3, Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    .line 45
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 72
    .line 73
    new-instance v3, Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 79
    .line 80
    new-instance v3, Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 88
    .line 89
    new-instance v3, Landroid/view/WindowLayout;

    .line 90
    .line 91
    invoke-direct {v3}, Landroid/view/WindowLayout;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 95
    .line 96
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 99
    .line 100
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 101
    .line 102
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    .line 103
    .line 104
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDexTaskbarHeight:I

    .line 105
    .line 106
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultStatusBar:Lcom/android/server/wm/WindowState;

    .line 107
    .line 108
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    .line 109
    .line 110
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    .line 111
    .line 112
    new-instance v0, Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 118
    .line 119
    new-instance v0, Landroid/graphics/Rect;

    .line 120
    .line 121
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    .line 125
    .line 126
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$4;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Lcom/android/server/wm/DisplayPolicy$4;

    .line 132
    .line 133
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 134
    .line 135
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 136
    .line 137
    if-eqz v0, :cond_0

    .line 138
    .line 139
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    iget-object v3, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 153
    .line 154
    if-eqz v3, :cond_1

    .line 155
    .line 156
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 157
    .line 158
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 162
    .line 163
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 164
    .line 165
    iget v4, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 172
    .line 173
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 174
    .line 175
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 176
    .line 177
    invoke-direct {v3, p2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 178
    .line 179
    .line 180
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 181
    .line 182
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 183
    .line 184
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 185
    .line 186
    new-instance v3, Lcom/android/server/wm/DisplayPolicyExt;

    .line 187
    .line 188
    invoke-direct {v3, v0, p1, p0}, Lcom/android/server/wm/DisplayPolicyExt;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V

    .line 189
    .line 190
    .line 191
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 192
    .line 193
    iget v3, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    const v5, 0x111006f

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 207
    .line 208
    const v5, 0x1110137

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 216
    .line 217
    const v5, 0x1110006

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    const/4 v6, 0x1

    .line 225
    if-eqz v5, :cond_2

    .line 226
    .line 227
    const v5, 0x111020a

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_3

    .line 235
    .line 236
    :cond_2
    move v1, v6

    .line 237
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    .line 238
    .line 239
    const v1, 0x10e00b8

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    int-to-long v4, v1

    .line 247
    iput-wide v4, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicThresholdMs:J

    .line 248
    .line 249
    const-string v1, "accessibility"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 256
    .line 257
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 258
    .line 259
    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 260
    .line 261
    if-nez v1, :cond_4

    .line 262
    .line 263
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 264
    .line 265
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 266
    .line 267
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 268
    .line 269
    :cond_4
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 278
    .line 279
    invoke-direct {v4, p0, v1}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    .line 280
    .line 281
    .line 282
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 283
    .line 284
    sget-boolean v5, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 285
    .line 286
    if-nez v5, :cond_5

    .line 287
    .line 288
    new-instance v6, Lcom/android/server/wm/DisplayPolicy$1;

    .line 289
    .line 290
    invoke-direct {v6, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 291
    .line 292
    .line 293
    new-instance v7, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 294
    .line 295
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 296
    .line 297
    invoke-direct {v7, v8, v4, v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayPolicy$PolicyHandler;Lcom/android/server/wm/DisplayPolicy$1;)V

    .line 298
    .line 299
    .line 300
    iput-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 301
    .line 302
    new-instance v6, Landroid/view/TwoFingerSwipeGestureDetector;

    .line 303
    .line 304
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 305
    .line 306
    new-instance v9, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;

    .line 307
    .line 308
    invoke-direct {v9, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 309
    .line 310
    .line 311
    const-string v10, "DP"

    .line 312
    .line 313
    invoke-direct {v6, v8, v9, v10}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, v6}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 317
    .line 318
    .line 319
    iput-object p2, v7, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 320
    .line 321
    invoke-virtual {p2, v7}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 322
    .line 323
    .line 324
    :cond_5
    new-instance v6, Lcom/android/server/wm/DisplayPolicy$2;

    .line 325
    .line 326
    invoke-direct {v6, p0, v3}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 327
    .line 328
    .line 329
    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/DisplayPolicy$2;

    .line 330
    .line 331
    iget-object v3, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 332
    .line 333
    invoke-virtual {v3, v6}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 334
    .line 335
    .line 336
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 337
    .line 338
    invoke-virtual {v3, v6}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 339
    .line 340
    .line 341
    if-nez v5, :cond_7

    .line 342
    .line 343
    sget-boolean v3, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 344
    .line 345
    if-eqz v3, :cond_6

    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_6
    new-instance v3, Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 349
    .line 350
    iget-boolean v5, p1, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    .line 351
    .line 352
    invoke-direct {v3, v0, v1, v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 353
    .line 354
    .line 355
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_7
    :goto_2
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 359
    .line 360
    :goto_3
    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 361
    .line 362
    if-eqz v1, :cond_8

    .line 363
    .line 364
    new-instance v2, Lcom/android/internal/util/ScreenshotHelper;

    .line 365
    .line 366
    invoke-direct {v2, v0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 367
    .line 368
    .line 369
    :cond_8
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 370
    .line 371
    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 372
    .line 373
    if-eqz v1, :cond_9

    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    const v2, 0x1110226

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 387
    .line 388
    goto :goto_4

    .line 389
    :cond_9
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 394
    .line 395
    :goto_4
    new-instance v1, Lcom/android/server/wm/RefreshRatePolicy;

    .line 396
    .line 397
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 398
    .line 399
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 400
    .line 401
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V

    .line 402
    .line 403
    .line 404
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 405
    .line 406
    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 407
    .line 408
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    .line 413
    .line 414
    const/4 v2, 0x0

    .line 415
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 416
    .line 417
    .line 418
    invoke-direct {p1, v4, p2, v0, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 419
    .line 420
    .line 421
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 422
    .line 423
    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;

    .line 424
    .line 425
    const/4 v1, 0x0

    .line 426
    invoke-direct {p2, p1, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v4, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    .line 431
    .line 432
    new-instance p1, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 433
    .line 434
    invoke-direct {p1, v4, v0}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 435
    .line 436
    .line 437
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 438
    .line 439
    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    .line 440
    .line 441
    const/4 v0, 0x3

    .line 442
    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->setOnChangeRunnable(Ljava/lang/Runnable;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    .line 449
    .line 450
    .line 451
    move-result p2

    .line 452
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 453
    .line 454
    new-instance p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;

    .line 455
    .line 456
    const/4 p2, 0x0

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    .line 462
    .line 463
    return-void
.end method

.method public static calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p1, Landroid/graphics/Insets;->left:I

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    add-int/2addr p1, v0

    .line 11
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget v0, p1, Landroid/graphics/Insets;->top:I

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget v0, p1, Landroid/graphics/Insets;->right:I

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    sub-int/2addr p1, v0

    .line 31
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    sub-int/2addr v0, p1

    .line 41
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public static chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-ne p2, v0, :cond_2

    .line 11
    .line 12
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 15
    .line 16
    const/high16 v0, -0x80000000

    .line 17
    .line 18
    and-int/2addr p2, v0

    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 30
    .line 31
    invoke-static {p2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    return-object p0

    .line 39
    :cond_1
    return-object p1

    .line 40
    :cond_2
    return-object p0
.end method

.method public static drawsBarBackground(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8
    .line 9
    const/high16 v2, -0x80000000

    .line 10
    .line 11
    and-int/2addr v1, v2

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move v1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v1, v2

    .line 18
    :goto_0
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 19
    .line 20
    const v3, 0x8000

    .line 21
    .line 22
    .line 23
    and-int/2addr p0, v3

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    if-eqz v1, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    move v0, v2

    .line 31
    :goto_1
    return v0
.end method

.method public static intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    and-int/2addr v3, p2

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {p0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStashedBounds()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {p0, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_1
    return v1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 91
    .line 92
    :goto_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 113
    .line 114
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-static {v0, p0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    return p0
.end method


# virtual methods
.method public final addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 9

    .line 1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/16 v1, 0x7d0

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    const/16 v2, 0x7e3

    .line 8
    .line 9
    if-eq v0, v2, :cond_2

    .line 10
    .line 11
    const/16 v3, 0x7f8

    .line 12
    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneNotificationShade()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 40
    .line 41
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    if-ne v0, v2, :cond_3

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneNavigationBar()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 62
    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    if-ne v0, v1, :cond_5

    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultStatusBar:Lcom/android/server/wm/WindowState;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneStatusBar()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 77
    .line 78
    :goto_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 79
    .line 80
    const/high16 v1, 0x20000

    .line 81
    .line 82
    and-int/2addr v0, v1

    .line 83
    const/4 v1, 0x1

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    .line 87
    .line 88
    :cond_6
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 89
    .line 90
    if-eqz v0, :cond_9

    .line 91
    .line 92
    array-length v0, v0

    .line 93
    sub-int/2addr v0, v1

    .line 94
    :goto_1
    if-ltz v0, :cond_9

    .line 95
    .line 96
    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 97
    .line 98
    aget-object v2, v2, v0

    .line 99
    .line 100
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    const/4 v4, -0x1

    .line 103
    invoke-direct {v3, p1, v0, v4}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    if-eqz v4, :cond_7

    .line 111
    .line 112
    new-instance v5, Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 115
    .line 116
    .line 117
    array-length v6, v4

    .line 118
    sub-int/2addr v6, v1

    .line 119
    :goto_2
    if-ltz v6, :cond_8

    .line 120
    .line 121
    aget-object v7, v4, v6

    .line 122
    .line 123
    invoke-virtual {v7}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->getWindowType()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    new-instance v8, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    invoke-direct {v8, p1, v0, v6}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v6, v6, -0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    const/4 v5, 0x0

    .line 139
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 140
    .line 141
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getId()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getType()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/InsetsStateController;->getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget-object v6, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getFlags()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-virtual {v6, v2}, Landroid/view/InsetsSource;->setFlags(I)Landroid/view/InsetsSource;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 168
    .line 169
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    add-int/lit8 v0, v0, -0x1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 181
    .line 182
    const/16 v2, 0x7e8

    .line 183
    .line 184
    if-eq v0, v2, :cond_d

    .line 185
    .line 186
    const/16 p2, 0x833

    .line 187
    .line 188
    if-eq v0, p2, :cond_c

    .line 189
    .line 190
    const/16 p2, 0x97e

    .line 191
    .line 192
    if-eq v0, p2, :cond_b

    .line 193
    .line 194
    const/16 p2, 0x97f

    .line 195
    .line 196
    if-eq v0, p2, :cond_a

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_a
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 203
    .line 204
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayPolicyExt;->notifyRequestedGameToolsWin(Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_c
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 209
    .line 210
    if-eqz p2, :cond_10

    .line 211
    .line 212
    iput-object p1, p2, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_d
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 216
    .line 217
    const-string v2, "com.samsung.android.spay"

    .line 218
    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_e

    .line 224
    .line 225
    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 226
    .line 227
    const-string v0, "com.samsung.android.rajaampat"

    .line 228
    .line 229
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-eqz p2, :cond_f

    .line 234
    .line 235
    :cond_e
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 236
    .line 237
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    if-eqz p2, :cond_10

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    iget-object p2, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    .line 250
    .line 251
    .line 252
    move-result p2

    .line 253
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-ne p2, v0, :cond_10

    .line 258
    .line 259
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 260
    .line 261
    iput-object p1, p2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 262
    .line 263
    :cond_10
    :goto_3
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 264
    .line 265
    if-eqz p2, :cond_14

    .line 266
    .line 267
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 268
    .line 269
    iget-object v0, p2, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 270
    .line 271
    if-nez v0, :cond_11

    .line 272
    .line 273
    iget-object v0, p2, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    .line 274
    .line 275
    if-eqz v0, :cond_14

    .line 276
    .line 277
    :cond_11
    iget-boolean p2, p2, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 278
    .line 279
    if-eqz p2, :cond_14

    .line 280
    .line 281
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 282
    .line 283
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 286
    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 291
    .line 292
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-nez p2, :cond_14

    .line 297
    .line 298
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 299
    .line 300
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 301
    .line 302
    if-eq v0, v1, :cond_14

    .line 303
    .line 304
    const/4 v1, 0x3

    .line 305
    if-eq v0, v1, :cond_14

    .line 306
    .line 307
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 308
    .line 309
    and-int/lit8 p2, p2, 0x2

    .line 310
    .line 311
    if-eqz p2, :cond_14

    .line 312
    .line 313
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 314
    .line 315
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    if-nez p2, :cond_12

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_12
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 324
    .line 325
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_13

    .line 330
    .line 331
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 332
    .line 333
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 334
    .line 335
    and-int/lit8 v1, v1, 0x2

    .line 336
    .line 337
    iput v1, p2, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    .line 338
    .line 339
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 340
    .line 341
    iput v1, p2, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    .line 342
    .line 343
    iget-wide v0, v0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 344
    .line 345
    iput-wide v0, p2, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    .line 346
    .line 347
    :cond_13
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 348
    .line 349
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 353
    .line 354
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 355
    .line 356
    .line 357
    :cond_14
    :goto_4
    return-void

    .line 358
    nop

    .line 359
    :pswitch_data_0
    .packed-switch 0xa3d
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 8

    .line 1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x10

    .line 6
    .line 7
    if-eq v0, v2, :cond_5

    .line 8
    .line 9
    const/16 v2, 0x7dd

    .line 10
    .line 11
    if-eq v0, v2, :cond_4

    .line 12
    .line 13
    const/16 v2, 0x7df

    .line 14
    .line 15
    if-eq v0, v2, :cond_3

    .line 16
    .line 17
    const/16 v2, 0x7d5

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x7d6

    .line 22
    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    cmp-long v0, v4, v6

    .line 32
    .line 33
    const-wide/16 v6, 0x1004

    .line 34
    .line 35
    if-ltz v0, :cond_1

    .line 36
    .line 37
    cmp-long v0, v4, v6

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    :cond_1
    iput-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 44
    .line 45
    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 46
    .line 47
    long-to-int v2, v4

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-long v0, v0

    .line 53
    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 54
    .line 55
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 56
    .line 57
    or-int/2addr v0, v3

    .line 58
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_3
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    .line 64
    or-int/lit8 v0, v0, 0x18

    .line 65
    .line 66
    const v1, -0x40001

    .line 67
    .line 68
    .line 69
    and-int/2addr v0, v1

    .line 70
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const/4 v0, 0x3

    .line 74
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 94
    .line 95
    const v2, 0x8000

    .line 96
    .line 97
    .line 98
    and-int/2addr v0, v2

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v1, "Illegal attributes: Main window of "

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, " that isn\'t translucent trying to fit insets. fitInsetsTypes="

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    .line 158
    and-int/2addr v0, v1

    .line 159
    iput v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    .line 160
    .line 161
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 162
    .line 163
    iput v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    .line 164
    .line 165
    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 166
    .line 167
    iput-wide v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 172
    .line 173
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 177
    .line 178
    and-int/lit8 v0, v0, -0x21

    .line 179
    .line 180
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 181
    .line 182
    :cond_8
    :goto_1
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 183
    .line 184
    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 185
    .line 186
    and-int/lit16 v2, v1, 0x200

    .line 187
    .line 188
    if-eqz v2, :cond_9

    .line 189
    .line 190
    or-int/2addr v1, v3

    .line 191
    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 192
    .line 193
    :cond_9
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 194
    .line 195
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_a

    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 202
    .line 203
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 204
    .line 205
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 206
    .line 207
    cmpl-float v1, v1, v0

    .line 208
    .line 209
    if-lez v1, :cond_a

    .line 210
    .line 211
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 212
    .line 213
    and-int/2addr v1, v3

    .line 214
    if-eqz v1, :cond_a

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isTrustedOverlay()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_a

    .line 221
    .line 222
    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 223
    .line 224
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 225
    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 231
    .line 232
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    const-string v2, "App %s has a system alert window (type = %d) with FLAG_NOT_TOUCHABLE and LayoutParams.alpha = %.2f > %.2f, setting alpha to %.2f to let touches pass through (if this is isn\'t desirable, remove flag FLAG_NOT_TOUCHABLE)."

    .line 249
    .line 250
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v2, "WindowManager"

    .line 255
    .line 256
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 260
    .line 261
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 262
    .line 263
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 264
    .line 265
    :cond_a
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 266
    .line 267
    iget-boolean p1, p1, Lcom/android/server/wm/Session;->mCanSetUnrestrictedGestureExclusion:Z

    .line 268
    .line 269
    if-nez p1, :cond_b

    .line 270
    .line 271
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 272
    .line 273
    and-int/lit8 p1, p1, -0x21

    .line 274
    .line 275
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 276
    .line 277
    :cond_b
    iget-object p1, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 278
    .line 279
    iget v0, p1, Landroid/view/InsetsFlags;->appearance:I

    .line 280
    .line 281
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 282
    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 287
    .line 288
    const/high16 v1, 0x100000

    .line 289
    .line 290
    and-int/2addr p0, v1

    .line 291
    const/4 v1, 0x0

    .line 292
    if-eqz p0, :cond_d

    .line 293
    .line 294
    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    if-nez p0, :cond_d

    .line 299
    .line 300
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 301
    .line 302
    const/high16 v2, -0x80000000

    .line 303
    .line 304
    and-int/2addr v2, p0

    .line 305
    if-eqz v2, :cond_c

    .line 306
    .line 307
    const/high16 v2, 0x8000000

    .line 308
    .line 309
    and-int/2addr v2, p0

    .line 310
    if-eqz v2, :cond_c

    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_c
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 314
    .line 315
    invoke-static {p2, p0, v1, v1}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    if-eqz p0, :cond_e

    .line 320
    .line 321
    :cond_d
    :goto_2
    move v3, v1

    .line 322
    :cond_e
    or-int p0, v0, v3

    .line 323
    .line 324
    iput p0, p1, Landroid/view/InsetsFlags;->appearance:I

    .line 325
    .line 326
    return-void
.end method

.method public final beginPostLayoutPolicyLw()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 52
    .line 53
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 56
    .line 57
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    .line 67
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 70
    .line 71
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    .line 73
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v5, "FreeformController"

    .line 80
    .line 81
    if-nez v4, :cond_0

    .line 82
    .line 83
    const-string v3, "Default display content is null"

    .line 84
    .line 85
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iput-object v0, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 97
    .line 98
    iput-object v0, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 99
    .line 100
    new-instance v6, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    const/4 v7, 0x1

    .line 103
    invoke-direct {v6, v3, v7}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FreeformController;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 107
    .line 108
    .line 109
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 110
    .line 111
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 112
    .line 113
    const-string v7, ", new="

    .line 114
    .line 115
    if-eq v4, v6, :cond_2

    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v6, "beginPostLayoutPolicyLw: forceHideRequester changed, old="

    .line 120
    .line 121
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 125
    .line 126
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 133
    .line 134
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 145
    .line 146
    iput-object v4, v3, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 147
    .line 148
    invoke-virtual {v3, v1}, Lcom/android/server/wm/FreeformController;->setBlockToAddForceHideFreeformTasks(Z)V

    .line 149
    .line 150
    .line 151
    :cond_2
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 152
    .line 153
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 154
    .line 155
    if-eq v4, v6, :cond_3

    .line 156
    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v6, "beginPostLayoutPolicyLw: forceHide minimize Requester changed, old="

    .line 160
    .line 161
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 165
    .line 166
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 173
    .line 174
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 185
    .line 186
    iput-object v4, v3, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 187
    .line 188
    :cond_3
    :goto_0
    iput-object v0, v2, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 189
    .line 190
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 191
    .line 192
    if-eqz v2, :cond_5

    .line 193
    .line 194
    iget-object v3, v2, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 197
    .line 198
    .line 199
    iput-object v0, v2, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 200
    .line 201
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 206
    .line 207
    if-nez v0, :cond_4

    .line 208
    .line 209
    iput-boolean v1, v2, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 210
    .line 211
    :cond_4
    iput-boolean v1, v2, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 212
    .line 213
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 214
    .line 215
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    .line 216
    .line 217
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    .line 218
    .line 219
    return-void
.end method

.method public final callStatusBarSafely(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final canReplaceSystemWindowForDexStandAlone(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5

    .line 1
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/16 v0, 0x7d0

    .line 4
    .line 5
    if-eq p1, v0, :cond_5

    .line 6
    .line 7
    const/16 v1, 0x7e3

    .line 8
    .line 9
    if-eq p1, v1, :cond_4

    .line 10
    .line 11
    const/16 v2, 0x7f8

    .line 12
    .line 13
    if-eq p1, v2, :cond_3

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    return v4

    .line 21
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 26
    .line 27
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 28
    .line 29
    if-ne p0, v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v4

    .line 33
    :goto_0
    return v3

    .line 34
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 43
    .line 44
    if-ne p0, v2, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v3, v4

    .line 48
    :goto_1
    return v3

    .line 49
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 54
    .line 55
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    .line 57
    if-ne p0, v0, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move v3, v4

    .line 61
    :goto_2
    return v3

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneNotificationShade()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneNavigationBar()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneStatusBar()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :pswitch_data_0
    .packed-switch 0xa3d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final finishPostLayoutPolicyLw()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 38
    .line 39
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    if-nez v1, :cond_7

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 50
    .line 51
    iget-object v4, v1, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 54
    .line 55
    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/4 v6, 0x0

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v7, v6

    .line 70
    :goto_0
    if-eqz v7, :cond_3

    .line 71
    .line 72
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    new-instance v7, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda5;

    .line 79
    .line 80
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v7, v3}, Lcom/android/server/wm/DisplayArea;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 90
    .line 91
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v4, v1, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 95
    .line 96
    if-nez v4, :cond_4

    .line 97
    .line 98
    iput-boolean v2, v1, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    .line 99
    .line 100
    :cond_4
    if-eqz v4, :cond_6

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_5

    .line 107
    .line 108
    iget-object v4, v1, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 109
    .line 110
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 111
    .line 112
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 113
    .line 114
    const/16 v5, 0xa48

    .line 115
    .line 116
    if-ne v4, v5, :cond_6

    .line 117
    .line 118
    :cond_5
    move v4, v3

    .line 119
    goto :goto_1

    .line 120
    :cond_6
    move v4, v2

    .line 121
    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/server/wm/FreeformController;->setBlockToAddForceHideFreeformTasks(Z)V

    .line 122
    .line 123
    .line 124
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 125
    .line 126
    if-eqz v1, :cond_d

    .line 127
    .line 128
    iget-boolean v4, v1, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 129
    .line 130
    iget-object v5, v1, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 131
    .line 132
    if-eqz v4, :cond_8

    .line 133
    .line 134
    iget v4, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 135
    .line 136
    or-int/lit8 v4, v4, 0x4

    .line 137
    .line 138
    iput v4, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 139
    .line 140
    :cond_8
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    .line 145
    .line 146
    packed-switch v4, :pswitch_data_0

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    if-eqz v4, :cond_d

    .line 155
    .line 156
    :try_start_0
    iget-object v6, v1, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 157
    .line 158
    if-eqz v6, :cond_9

    .line 159
    .line 160
    iget-boolean v6, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 161
    .line 162
    if-nez v6, :cond_a

    .line 163
    .line 164
    invoke-interface {v4, v3}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    .line 165
    .line 166
    .line 167
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    and-int/lit8 v6, v4, 0x10

    .line 169
    .line 170
    if-eqz v6, :cond_b

    .line 171
    .line 172
    :try_start_1
    iput-boolean v3, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 173
    .line 174
    iget-object v6, v1, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    .line 175
    .line 176
    new-instance v7, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    invoke-direct {v7, v1}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :catch_0
    move-exception v1

    .line 186
    goto :goto_2

    .line 187
    :catch_1
    move-exception v1

    .line 188
    move v4, v2

    .line 189
    goto :goto_2

    .line 190
    :cond_9
    :try_start_2
    iget-boolean v6, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 191
    .line 192
    if-eqz v6, :cond_a

    .line 193
    .line 194
    invoke-interface {v4, v2}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    .line 195
    .line 196
    .line 197
    move-result v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    and-int/lit8 v6, v4, 0x20

    .line 199
    .line 200
    if-eqz v6, :cond_b

    .line 201
    .line 202
    :try_start_3
    iput-boolean v2, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 203
    .line 204
    iget-object v6, v1, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    .line 205
    .line 206
    new-instance v7, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    invoke-direct {v7, v1}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_a
    move v4, v2

    .line 216
    goto :goto_3

    .line 217
    :goto_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 218
    .line 219
    .line 220
    :cond_b
    :goto_3
    and-int/lit8 v1, v4, 0x1

    .line 221
    .line 222
    if-nez v1, :cond_c

    .line 223
    .line 224
    and-int/lit8 v1, v4, 0x2

    .line 225
    .line 226
    if-eqz v1, :cond_d

    .line 227
    .line 228
    :cond_c
    iget v1, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 229
    .line 230
    or-int/2addr v1, v3

    .line 231
    iput v1, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 232
    .line 233
    :cond_d
    :goto_4
    iget v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 234
    .line 235
    if-eqz v1, :cond_11

    .line 236
    .line 237
    new-instance v1, Landroid/graphics/Rect;

    .line 238
    .line 239
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 240
    .line 241
    .line 242
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 243
    .line 244
    if-eqz v3, :cond_e

    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 251
    .line 252
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 253
    .line 254
    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 255
    .line 256
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 257
    .line 258
    .line 259
    :cond_e
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    .line 260
    .line 261
    if-ne v2, v3, :cond_f

    .line 262
    .line 263
    if-eqz v2, :cond_11

    .line 264
    .line 265
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    .line 266
    .line 267
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-nez v3, :cond_11

    .line 272
    .line 273
    :cond_f
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    .line 274
    .line 275
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    .line 276
    .line 277
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 278
    .line 279
    .line 280
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 287
    .line 288
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 289
    .line 290
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 291
    .line 292
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 293
    .line 294
    iget-object v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 295
    .line 296
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 297
    .line 298
    if-eqz v4, :cond_10

    .line 299
    .line 300
    :try_start_4
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 301
    .line 302
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 303
    .line 304
    invoke-interface {v3, v0, v2, v1}, Lcom/android/internal/statusbar/IStatusBar;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 305
    .line 306
    .line 307
    :catch_2
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string/jumbo v3, "notifySamsungPayInfo: "

    .line 310
    .line 311
    .line 312
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v2, ", "

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    const-string v1, "DisplayPolicyExt"

    .line 331
    .line 332
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 336
    .line 337
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 338
    .line 339
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 340
    .line 341
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 342
    .line 343
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 344
    .line 345
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 346
    .line 347
    if-eqz p0, :cond_12

    .line 348
    .line 349
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 350
    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_12
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 360
    .line 361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    :goto_5
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object p0, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 30
    .line 31
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/4 v6, 0x1

    .line 58
    sub-int/2addr v5, v6

    .line 59
    :goto_1
    if-ltz v5, :cond_7

    .line 60
    .line 61
    invoke-virtual {p1, v5}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eq v8, p2, :cond_2

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-ne p2, v8, :cond_6

    .line 77
    .line 78
    iget-object v8, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v0, v6}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    iget v9, v8, Landroid/graphics/Insets;->left:I

    .line 88
    .line 89
    if-lez v9, :cond_3

    .line 90
    .line 91
    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    iget v9, v2, Landroid/graphics/Insets;->left:I

    .line 94
    .line 95
    add-int/2addr v9, v8

    .line 96
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    iput v8, v1, Landroid/graphics/Rect;->left:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    iget v9, v8, Landroid/graphics/Insets;->top:I

    .line 104
    .line 105
    if-lez v9, :cond_4

    .line 106
    .line 107
    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 108
    .line 109
    iget v9, v2, Landroid/graphics/Insets;->top:I

    .line 110
    .line 111
    add-int/2addr v9, v8

    .line 112
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    iput v8, v1, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget v9, v8, Landroid/graphics/Insets;->right:I

    .line 120
    .line 121
    if-lez v9, :cond_5

    .line 122
    .line 123
    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    iget v9, v2, Landroid/graphics/Insets;->right:I

    .line 126
    .line 127
    sub-int v9, v8, v9

    .line 128
    .line 129
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    iget v8, v8, Landroid/graphics/Insets;->bottom:I

    .line 137
    .line 138
    if-lez v8, :cond_6

    .line 139
    .line 140
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 141
    .line 142
    iget v9, v2, Landroid/graphics/Insets;->bottom:I

    .line 143
    .line 144
    sub-int v9, v8, v9

    .line 145
    .line 146
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 151
    .line 152
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 163
    .line 164
    .line 165
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_7
    return-object v3
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 4
    .line 5
    aget-object v0, v0, p1

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNeedUpdate:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(IIILcom/android/server/wm/DisplayContent;)Landroid/view/InsetsState;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public final getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

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
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final hasDexStandAloneNavigationBar()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8
    .line 9
    const/16 v0, 0xa3f

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

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

.method public final hasDexStandAloneNotificationShade()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 10
    .line 11
    const/16 v0, 0xa3e

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final hasDexStandAloneStatusBar()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8
    .line 9
    const/16 v0, 0xa3d

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

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

.method public final isDexStandAloneMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

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

.method public isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    if-eqz p1, :cond_8

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 22
    .line 23
    iget-object v1, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    new-instance v1, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 33
    .line 34
    :cond_1
    iget-object v1, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget-object v1, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 49
    .line 50
    :cond_2
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_8

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 65
    .line 66
    array-length p2, p1

    .line 67
    const/4 v1, 0x0

    .line 68
    move v2, v1

    .line 69
    move v3, v2

    .line 70
    move v4, v3

    .line 71
    :goto_0
    if-ge v2, p2, :cond_6

    .line 72
    .line 73
    aget-object v5, p1, v2

    .line 74
    .line 75
    iget-object v5, v5, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v5, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_4

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {v5, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    add-int/2addr v3, v4

    .line 106
    array-length p0, p1

    .line 107
    if-ne v3, p0, :cond_7

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    move v0, v1

    .line 111
    :cond_8
    :goto_2
    return v0
.end method

.method public final isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x7d0

    .line 20
    .line 21
    invoke-static {v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-gt v1, v2, :cond_e

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 40
    .line 41
    if-eqz v1, :cond_d

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    if-ne v1, v2, :cond_7

    .line 49
    .line 50
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 56
    .line 57
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :cond_2
    if-eqz v3, :cond_3

    .line 68
    .line 69
    move-object p1, v3

    .line 70
    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    return v0

    .line 81
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 82
    .line 83
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p1, v1}, Lcom/android/server/wm/InsetsPolicy;->hasHiddenSources(I)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_5

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 94
    .line 95
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_6

    .line 104
    .line 105
    :cond_5
    move v0, v2

    .line 106
    :cond_6
    return v0

    .line 107
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mDexForceImmersiveModeControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    .line 110
    .line 111
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 116
    .line 117
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/view/InsetsState;->sourceSize()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    sub-int/2addr v4, v2

    .line 124
    :goto_0
    if-ltz v4, :cond_c

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    and-int/2addr v6, v1

    .line 135
    if-nez v6, :cond_8

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_8
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_b

    .line 147
    .line 148
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isVisible()Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-nez v6, :cond_b

    .line 153
    .line 154
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Ljava/util/ArrayList;

    .line 165
    .line 166
    if-eqz p0, :cond_a

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_a

    .line 177
    .line 178
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 183
    .line 184
    iget-object p1, p1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 185
    .line 186
    if-eqz p1, :cond_9

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-ne p1, v1, :cond_9

    .line 193
    .line 194
    move v0, v2

    .line 195
    :cond_a
    xor-int/2addr v0, v2

    .line 196
    goto :goto_2

    .line 197
    :cond_b
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_c
    :goto_2
    return v0

    .line 201
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 202
    .line 203
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->hasHiddenSources(I)Z

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    return p0

    .line 212
    :cond_e
    :goto_3
    return v0
.end method

.method public final layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 18

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
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->canShowInCurrentDevice()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move-object/from16 v3, p3

    .line 61
    .line 62
    :goto_1
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 63
    .line 64
    iget v5, v3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    move-object v2, v5

    .line 81
    :goto_2
    iput-object v2, v4, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 82
    .line 83
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 84
    .line 85
    const/4 v15, 0x1

    .line 86
    const/4 v14, 0x0

    .line 87
    if-ne v7, v2, :cond_5

    .line 88
    .line 89
    move v2, v15

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    move v2, v14

    .line 92
    :goto_3
    const/4 v6, -0x1

    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    iget v8, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 96
    .line 97
    move v12, v8

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    move v12, v6

    .line 100
    :goto_4
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 101
    .line 102
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_7

    .line 107
    .line 108
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 109
    .line 110
    if-ne v1, v8, :cond_7

    .line 111
    .line 112
    iget v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDexTaskbarHeight:I

    .line 113
    .line 114
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 115
    .line 116
    move v13, v2

    .line 117
    goto :goto_5

    .line 118
    :cond_7
    if-eqz v2, :cond_8

    .line 119
    .line 120
    iget v6, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 121
    .line 122
    :cond_8
    move v13, v6

    .line 123
    :goto_5
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_12

    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    if-nez v2, :cond_9

    .line 143
    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    iget-object v8, v6, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 151
    .line 152
    if-eqz v8, :cond_a

    .line 153
    .line 154
    invoke-interface {v8}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    :cond_a
    if-eqz v5, :cond_c

    .line 159
    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_b

    .line 165
    .line 166
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    if-ne v2, v5, :cond_c

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_b
    if-ne v1, v5, :cond_c

    .line 174
    .line 175
    :goto_6
    move v2, v15

    .line 176
    goto :goto_7

    .line 177
    :cond_c
    move v2, v14

    .line 178
    :goto_7
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 179
    .line 180
    if-eqz v2, :cond_11

    .line 181
    .line 182
    if-eqz v5, :cond_11

    .line 183
    .line 184
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_11

    .line 189
    .line 190
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 191
    .line 192
    iget-object v2, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 193
    .line 194
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 195
    .line 196
    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 201
    .line 202
    .line 203
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 204
    .line 205
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    or-int/2addr v8, v9

    .line 214
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    or-int/2addr v8, v9

    .line 219
    invoke-virtual {v2, v5, v8, v14}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 231
    .line 232
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 233
    .line 234
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 235
    .line 236
    sub-int/2addr v2, v5

    .line 237
    if-lez v2, :cond_12

    .line 238
    .line 239
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 240
    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 246
    .line 247
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 248
    .line 249
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-nez v9, :cond_d

    .line 259
    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    if-eqz v9, :cond_f

    .line 265
    .line 266
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight()I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    sub-int/2addr v6, v9

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-eqz v9, :cond_e

    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    sub-int/2addr v6, v9

    .line 282
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    if-eqz v9, :cond_f

    .line 287
    .line 288
    iget-object v5, v5, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 289
    .line 290
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 291
    .line 292
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 293
    .line 294
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    const/high16 v9, 0x42000000    # 32.0f

    .line 299
    .line 300
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-static {v15, v9, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    float-to-int v5, v5

    .line 309
    sub-int/2addr v6, v5

    .line 310
    :cond_f
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    sub-int/2addr v5, v8

    .line 315
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    .line 324
    .line 325
    neg-int v2, v2

    .line 326
    invoke-virtual {v5, v14, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 327
    .line 328
    .line 329
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    .line 330
    .line 331
    if-nez v2, :cond_10

    .line 332
    .line 333
    iput-boolean v15, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    .line 334
    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    .line 336
    .line 337
    .line 338
    :cond_10
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 339
    .line 340
    iput-boolean v15, v2, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 341
    .line 342
    goto :goto_8

    .line 343
    :cond_11
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    .line 344
    .line 345
    if-eqz v2, :cond_12

    .line 346
    .line 347
    iput-boolean v14, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    .line 348
    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    .line 350
    .line 351
    .line 352
    :cond_12
    :goto_8
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 353
    .line 354
    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 359
    .line 360
    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    .line 361
    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    iget v0, v1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 367
    .line 368
    iget v2, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 369
    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 371
    .line 372
    .line 373
    move-result v17

    .line 374
    move v3, v14

    .line 375
    move v14, v0

    .line 376
    move v0, v15

    .line 377
    move v15, v2

    .line 378
    move-object/from16 v16, v4

    .line 379
    .line 380
    invoke-virtual/range {v6 .. v17}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V

    .line 381
    .line 382
    .line 383
    iget v2, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 384
    .line 385
    iget v5, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 386
    .line 387
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 388
    .line 389
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 390
    .line 391
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 392
    .line 393
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 394
    .line 395
    .line 396
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 397
    .line 398
    iget-object v8, v4, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 399
    .line 400
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 401
    .line 402
    .line 403
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 404
    .line 405
    iget-object v8, v4, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 406
    .line 407
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 408
    .line 409
    .line 410
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 411
    .line 412
    iget-object v8, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 413
    .line 414
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 415
    .line 416
    .line 417
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 418
    .line 419
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 420
    .line 421
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 422
    .line 423
    .line 424
    iget v7, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 425
    .line 426
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 427
    .line 428
    const/high16 v9, 0x3f800000    # 1.0f

    .line 429
    .line 430
    cmpl-float v10, v7, v9

    .line 431
    .line 432
    if-eqz v10, :cond_14

    .line 433
    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 439
    .line 440
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getCompatSandboxInvScale()F

    .line 441
    .line 442
    .line 443
    move-result v10

    .line 444
    cmpl-float v10, v10, v9

    .line 445
    .line 446
    if-nez v10, :cond_13

    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_13
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 454
    .line 455
    .line 456
    move-result v10

    .line 457
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 458
    .line 459
    int-to-float v11, v11

    .line 460
    mul-float/2addr v11, v7

    .line 461
    const/high16 v12, 0x3f000000    # 0.5f

    .line 462
    .line 463
    add-float/2addr v11, v12

    .line 464
    float-to-int v11, v11

    .line 465
    iput v11, v8, Landroid/graphics/Rect;->left:I

    .line 466
    .line 467
    iget v13, v8, Landroid/graphics/Rect;->top:I

    .line 468
    .line 469
    int-to-float v13, v13

    .line 470
    mul-float/2addr v13, v7

    .line 471
    add-float/2addr v13, v12

    .line 472
    float-to-int v13, v13

    .line 473
    iput v13, v8, Landroid/graphics/Rect;->top:I

    .line 474
    .line 475
    int-to-float v9, v9

    .line 476
    mul-float/2addr v9, v7

    .line 477
    add-float/2addr v9, v12

    .line 478
    float-to-int v9, v9

    .line 479
    add-int/2addr v11, v9

    .line 480
    iput v11, v8, Landroid/graphics/Rect;->right:I

    .line 481
    .line 482
    int-to-float v9, v10

    .line 483
    mul-float/2addr v9, v7

    .line 484
    add-float/2addr v9, v12

    .line 485
    float-to-int v7, v9

    .line 486
    add-int/2addr v13, v7

    .line 487
    iput v13, v8, Landroid/graphics/Rect;->bottom:I

    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_14
    :goto_9
    iget v7, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 491
    .line 492
    cmpl-float v8, v7, v9

    .line 493
    .line 494
    if-eqz v8, :cond_15

    .line 495
    .line 496
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 497
    .line 498
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 499
    .line 500
    .line 501
    :cond_15
    :goto_a
    iget-boolean v4, v4, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 502
    .line 503
    iput-boolean v4, v6, Lcom/android/server/wm/WindowFrames;->mParentFrameWasClippedByDisplayCutout:Z

    .line 504
    .line 505
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 506
    .line 507
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 508
    .line 509
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 517
    .line 518
    if-eqz v7, :cond_16

    .line 519
    .line 520
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 521
    .line 522
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 523
    .line 524
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 525
    .line 526
    iget v14, v4, Landroid/graphics/Rect;->left:I

    .line 527
    .line 528
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 529
    .line 530
    goto :goto_b

    .line 531
    :cond_16
    if-eqz v4, :cond_17

    .line 532
    .line 533
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    iget v14, v4, Landroid/graphics/Rect;->left:I

    .line 538
    .line 539
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 540
    .line 541
    goto :goto_b

    .line 542
    :cond_17
    move v4, v3

    .line 543
    move v14, v4

    .line 544
    :goto_b
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 545
    .line 546
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 547
    .line 548
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 549
    .line 550
    sub-int/2addr v9, v14

    .line 551
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 552
    .line 553
    sub-int/2addr v8, v4

    .line 554
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 555
    .line 556
    .line 557
    iget v4, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 558
    .line 559
    if-ne v2, v4, :cond_18

    .line 560
    .line 561
    iget v4, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 562
    .line 563
    if-ne v5, v4, :cond_18

    .line 564
    .line 565
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 566
    .line 567
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 568
    .line 569
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    if-nez v4, :cond_19

    .line 574
    .line 575
    :cond_18
    iput v2, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 576
    .line 577
    iput v5, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 578
    .line 579
    iput-boolean v0, v6, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 580
    .line 581
    :cond_19
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 582
    .line 583
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 584
    .line 585
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    if-eqz v2, :cond_1a

    .line 590
    .line 591
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 592
    .line 593
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 594
    .line 595
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-nez v2, :cond_1b

    .line 600
    .line 601
    :cond_1a
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 602
    .line 603
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    .line 604
    .line 605
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    :cond_1b
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 609
    .line 610
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 611
    .line 612
    const/16 v4, 0x7f2

    .line 613
    .line 614
    if-ne v2, v4, :cond_1c

    .line 615
    .line 616
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 617
    .line 618
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 619
    .line 620
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    if-nez v2, :cond_1c

    .line 625
    .line 626
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 627
    .line 628
    :cond_1c
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 629
    .line 630
    if-eqz v2, :cond_1e

    .line 631
    .line 632
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 633
    .line 634
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 635
    .line 636
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 641
    .line 642
    .line 643
    move-result v7

    .line 644
    if-ne v5, v7, :cond_1d

    .line 645
    .line 646
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 647
    .line 648
    .line 649
    move-result v2

    .line 650
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 651
    .line 652
    .line 653
    move-result v4

    .line 654
    if-eq v2, v4, :cond_1e

    .line 655
    .line 656
    :cond_1d
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 657
    .line 658
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 659
    .line 660
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z

    .line 661
    .line 662
    .line 663
    :cond_1e
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 664
    .line 665
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 666
    .line 667
    .line 668
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 669
    .line 670
    if-eqz v2, :cond_1f

    .line 671
    .line 672
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 673
    .line 674
    if-nez v3, :cond_1f

    .line 675
    .line 676
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 677
    .line 678
    iget-object v2, v2, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 679
    .line 680
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    .line 681
    .line 682
    .line 683
    :cond_1f
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 684
    .line 685
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 686
    .line 687
    return-void
.end method

.method public final navigationBarPosition(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    if-eqz p0, :cond_3

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 22
    .line 23
    const/4 p1, 0x3

    .line 24
    if-eq p0, p1, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x5

    .line 27
    if-eq p0, p1, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const/4 p0, 0x2

    .line 31
    return p0

    .line 32
    :cond_2
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_3
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public final notifyDisplayReady()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v1, "notifyDisplayReady() >> KnoxZT startEnableTouchEvent called for Display Id : "

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 25
    .line 26
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 27
    .line 28
    const-string v1, "WindowManager"

    .line 29
    .line 30
    invoke-static {v0, p0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v1, 0x1110226

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const v1, 0x105057f

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDexTaskbarHeight:I

    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 40
    .line 41
    .line 42
    const v1, 0x10e00ef

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    .line 66
    .line 67
    const v1, 0x11101e6

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 75
    .line 76
    const v1, 0x1110006

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 86
    .line 87
    .line 88
    const v1, 0x111003a

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v1, 0x0

    .line 96
    const/4 v2, 0x1

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-static {}, Lcom/android/wm/shell/Flags;->enableTinyTaskbar()Z

    .line 100
    .line 101
    .line 102
    move v0, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move v0, v1

    .line 105
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    .line 106
    .line 107
    if-eq v3, v0, :cond_3

    .line 108
    .line 109
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    .line 110
    .line 111
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iget v4, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 120
    .line 121
    const v5, 0x10e00ee

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    iput v5, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 129
    .line 130
    if-eq v4, v5, :cond_4

    .line 131
    .line 132
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 133
    .line 134
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 135
    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v5, "DisplayPolicyExt#onConfigurationChanged, NavigationMode(new)="

    .line 141
    .line 142
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v5, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 146
    .line 147
    const-string v6, ", NavigationMode(old)="

    .line 148
    .line 149
    const-string v7, ", callers="

    .line 150
    .line 151
    invoke-static {v5, v4, v6, v7, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 152
    .line 153
    .line 154
    const/4 v4, 0x3

    .line 155
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v4, "DisplayPolicyExt"

    .line 167
    .line 168
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 172
    .line 173
    if-nez v0, :cond_5

    .line 174
    .line 175
    const v0, 0x11101ea

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    :cond_5
    move v1, v2

    .line 185
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    .line 186
    .line 187
    return-void
.end method

.method public final onDisplaySwitchFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/wm/WallpaperController;->mIsWallpaperNotifiedOnDisplaySwitch:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iput-boolean v2, v0, Lcom/android/server/wm/WallpaperController;->mIsWallpaperNotifiedOnDisplaySwitch:Z

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController;->notifyDisplaySwitch(Z)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DisplayUpdater;

    .line 37
    .line 38
    invoke-interface {p0, v2}, Lcom/android/server/wm/DisplayUpdater;->onDisplaySwitching(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    const-string v1, "WindowManager"

    .line 4
    .line 5
    const-string v2, ", now="

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, p1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneStatusBar()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultStatusBar:Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    if-ne v0, v4, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 29
    .line 30
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v5, "restoreDefaultStatusBar: prev="

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_2
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 66
    .line 67
    if-ne v0, p1, :cond_7

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneNavigationBar()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    .line 78
    .line 79
    if-ne v0, v4, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 83
    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 87
    .line 88
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo v5, "restoreDefaultNavigationBar: prev="

    .line 94
    .line 95
    .line 96
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 106
    .line 107
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 122
    .line 123
    if-ne v0, p1, :cond_b

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneNotificationShade()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 132
    .line 133
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    .line 134
    .line 135
    if-ne v0, v4, :cond_8

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 139
    .line 140
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    .line 143
    .line 144
    if-eqz v4, :cond_9

    .line 145
    .line 146
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 147
    .line 148
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v5, "restoreDefaultNotificationShade: prev="

    .line 154
    .line 155
    .line 156
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 166
    .line 167
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_a
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 179
    .line 180
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 181
    .line 182
    if-ne v0, p1, :cond_c

    .line 183
    .line 184
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 185
    .line 186
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasInsetsSourceProvider()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_e

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 197
    .line 198
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    add-int/lit8 v2, v2, -0x1

    .line 205
    .line 206
    :goto_1
    if-ltz v2, :cond_e

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 213
    .line 214
    invoke-virtual {v4, v3, v3, v3}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    .line 215
    .line 216
    .line 217
    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 218
    .line 219
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getId()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    .line 227
    .line 228
    if-eq v4, v5, :cond_d

    .line 229
    .line 230
    iget-object v5, v1, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 231
    .line 232
    invoke-virtual {v5, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 233
    .line 234
    .line 235
    iget-object v5, v1, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 236
    .line 237
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 238
    .line 239
    .line 240
    :cond_d
    add-int/lit8 v2, v2, -0x1

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 244
    .line 245
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultStatusBar:Lcom/android/server/wm/WindowState;

    .line 249
    .line 250
    if-ne v0, p1, :cond_f

    .line 251
    .line 252
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultStatusBar:Lcom/android/server/wm/WindowState;

    .line 253
    .line 254
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    .line 255
    .line 256
    if-ne v0, p1, :cond_10

    .line 257
    .line 258
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    .line 259
    .line 260
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    .line 261
    .line 262
    if-ne v0, p1, :cond_11

    .line 263
    .line 264
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    .line 265
    .line 266
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 267
    .line 268
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 269
    .line 270
    if-eqz v1, :cond_12

    .line 271
    .line 272
    iget-object v2, v1, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 273
    .line 274
    if-ne v2, p1, :cond_12

    .line 275
    .line 276
    iput-object v3, v1, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 277
    .line 278
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 279
    .line 280
    if-ne v1, p1, :cond_13

    .line 281
    .line 282
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 283
    .line 284
    :cond_13
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 285
    .line 286
    const/4 v2, 0x0

    .line 287
    if-eqz v1, :cond_15

    .line 288
    .line 289
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 290
    .line 291
    iget-object v4, v1, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 292
    .line 293
    if-nez v4, :cond_14

    .line 294
    .line 295
    iget-object v1, v1, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    .line 296
    .line 297
    if-eqz v1, :cond_15

    .line 298
    .line 299
    :cond_14
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 300
    .line 301
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 302
    .line 303
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 309
    .line 310
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    if-eqz v4, :cond_15

    .line 315
    .line 316
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 317
    .line 318
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_15

    .line 323
    .line 324
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 325
    .line 326
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 330
    .line 331
    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 332
    .line 333
    .line 334
    :cond_15
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 335
    .line 336
    iget-object v4, v1, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 337
    .line 338
    if-ne v4, p1, :cond_19

    .line 339
    .line 340
    iput-object v3, v1, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 341
    .line 342
    iget-object v4, v1, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 343
    .line 344
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 345
    .line 346
    if-nez v4, :cond_16

    .line 347
    .line 348
    move-object v4, v3

    .line 349
    goto :goto_2

    .line 350
    :cond_16
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    :goto_2
    if-eqz v4, :cond_19

    .line 355
    .line 356
    iget-object v4, v1, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 357
    .line 358
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 359
    .line 360
    if-nez v4, :cond_17

    .line 361
    .line 362
    move-object v4, v3

    .line 363
    goto :goto_3

    .line 364
    :cond_17
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    :goto_3
    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 369
    .line 370
    if-eqz v4, :cond_19

    .line 371
    .line 372
    iget-object v1, v1, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 373
    .line 374
    iget-object v4, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 375
    .line 376
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 377
    .line 378
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 379
    .line 380
    if-nez v1, :cond_18

    .line 381
    .line 382
    move-object v1, v3

    .line 383
    goto :goto_4

    .line 384
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    :goto_4
    iget-object v1, v1, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 389
    .line 390
    invoke-virtual {v4, v1}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 391
    .line 392
    .line 393
    :cond_19
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 394
    .line 395
    if-ne v1, p1, :cond_1a

    .line 396
    .line 397
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 398
    .line 399
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayPolicyExt;->notifyRequestedGameToolsWin(Z)V

    .line 400
    .line 401
    .line 402
    goto :goto_5

    .line 403
    :cond_1a
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 404
    .line 405
    if-ne v1, p1, :cond_1b

    .line 406
    .line 407
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 408
    .line 409
    :cond_1b
    :goto_5
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 410
    .line 411
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 412
    .line 413
    const/high16 v0, 0x20000

    .line 414
    .line 415
    and-int/2addr p1, v0

    .line 416
    if-eqz p1, :cond_1c

    .line 417
    .line 418
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    .line 419
    .line 420
    :cond_1c
    return-void
.end method

.method public requestTransientBars(Lcom/android/server/wm/WindowState;Z)V
    .locals 7

    .line 1
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    .line 7
    .line 8
    const-string v1, "WindowManager"

    .line 9
    .line 10
    if-nez v0, :cond_16

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_16

    .line 19
    .line 20
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 38
    .line 39
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 40
    .line 41
    if-ne v0, v2, :cond_2

    .line 42
    .line 43
    const-string p0, "Not showing transient bar, because lock task mode pinned"

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    if-eqz p1, :cond_15

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 54
    .line 55
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    .line 66
    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    const-string p0, "Remote insets controller disallows showing system bars - ignoring request"

    .line 70
    .line 71
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 76
    .line 77
    if-ne p1, v0, :cond_7

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 88
    .line 89
    if-ne v0, p1, :cond_5

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasInsetsSourceProvider()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    add-int/lit8 v3, v3, -0x1

    .line 107
    .line 108
    :goto_0
    if-ltz v3, :cond_7

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 115
    .line 116
    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-ne v4, v5, :cond_6

    .line 127
    .line 128
    :goto_1
    return-void

    .line 129
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const/4 v3, 0x0

    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    iget-object v0, v0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    move-object v0, v3

    .line 143
    :goto_2
    if-eqz v0, :cond_15

    .line 144
    .line 145
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 146
    .line 147
    if-ne v0, v4, :cond_9

    .line 148
    .line 149
    goto/16 :goto_6

    .line 150
    .line 151
    :cond_9
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    if-eqz v4, :cond_a

    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_a

    .line 162
    .line 163
    return-void

    .line 164
    :cond_a
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    or-int/2addr v4, v5

    .line 173
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    and-int/2addr v4, v5

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string/jumbo v6, "requestTransientBars: swipeTarget="

    .line 181
    .line 182
    .line 183
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v6, ", controlTarget="

    .line 190
    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v6, ", canShowTransient="

    .line 198
    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v6, ", restorePositionTypes=0x"

    .line 210
    .line 211
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v6, ", from="

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const/4 v5, 0x0

    .line 245
    if-eqz v2, :cond_b

    .line 246
    .line 247
    iget-object v2, v2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 248
    .line 249
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    if-ne v2, v6, :cond_b

    .line 258
    .line 259
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    and-int/2addr v2, v4

    .line 264
    if-eqz v2, :cond_b

    .line 265
    .line 266
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    invoke-interface {v0, p0, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_b
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_d

    .line 279
    .line 280
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 281
    .line 282
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 283
    .line 284
    instance-of v1, v0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 285
    .line 286
    iput-boolean v1, p1, Lcom/android/server/wm/InsetsPolicy;->mLastTransientRequestedByPolicyControl:Z

    .line 287
    .line 288
    sget v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    .line 289
    .line 290
    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_c

    .line 300
    .line 301
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    not-int p1, p1

    .line 306
    and-int/2addr p1, v4

    .line 307
    invoke-interface {v0, p1, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_c
    invoke-interface {v0, v4, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_d
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 316
    .line 317
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    if-eqz p2, :cond_e

    .line 322
    .line 323
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    invoke-interface {v0, p2, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 328
    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_e
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    or-int/2addr p2, v2

    .line 340
    invoke-interface {v0, p2, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 341
    .line 342
    .line 343
    :goto_3
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 344
    .line 345
    if-ne p1, p2, :cond_11

    .line 346
    .line 347
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 348
    .line 349
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-eqz p1, :cond_f

    .line 354
    .line 355
    return-void

    .line 356
    :cond_f
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mSkipTransferTouchToStatusBar:Z

    .line 357
    .line 358
    if-eqz p1, :cond_10

    .line 359
    .line 360
    return-void

    .line 361
    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 362
    .line 363
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 364
    .line 365
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 366
    .line 367
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 368
    .line 369
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    invoke-virtual {p2, v0, p1}, Lcom/android/server/input/InputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-nez p1, :cond_11

    .line 378
    .line 379
    const-string p1, "Could not transfer touch to the status bar"

    .line 380
    .line 381
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    :cond_11
    :goto_4
    sget-boolean p1, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 385
    .line 386
    if-nez p1, :cond_13

    .line 387
    .line 388
    sget-boolean p1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 389
    .line 390
    if-eqz p1, :cond_12

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 394
    .line 395
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 396
    .line 397
    if-eqz p1, :cond_15

    .line 398
    .line 399
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    .line 400
    .line 401
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 402
    .line 403
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    .line 405
    .line 406
    goto :goto_6

    .line 407
    :cond_13
    :goto_5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 408
    .line 409
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 410
    .line 411
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 412
    .line 413
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 414
    .line 415
    if-nez p1, :cond_14

    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 419
    .line 420
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 421
    .line 422
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->confirmImmersivePrompt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .line 424
    .line 425
    :catch_0
    :cond_15
    :goto_6
    return-void

    .line 426
    :cond_16
    :goto_7
    const-string p0, "Not showing transient bar, because factory test mode"

    .line 427
    .line 428
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iput-object p1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 43
    .line 44
    if-ne v2, v1, :cond_1

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 47
    .line 48
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const-wide/16 v0, 0x20

    .line 52
    .line 53
    const-string/jumbo v2, "screenTurnedOnWhileDozing"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0
.end method

.method public final setAwake(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 13
    .line 14
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_2
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 62
    .line 63
    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 64
    .line 65
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->updateDeferTransitionForAod(Z)V

    .line 74
    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchFinished()V

    .line 79
    .line 80
    .line 81
    :cond_5
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method public setCanSystemBarsBeShownByUser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDropInputModePolicy(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/16 v1, 0x7d5

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 8
    .line 9
    const/high16 v0, 0x20000000

    .line 10
    .line 11
    and-int/2addr p2, v0

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final setHdmiPlugged(ZZ)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 4
    .line 5
    if-eq p2, p1, :cond_1

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    .line 18
    .line 19
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/high16 v0, 0x4000000

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "state"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 36
    .line 37
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final setPointerLocationEnabled(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    .line 9
    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    .line 10
    .line 11
    const v2, 0x8000

    .line 12
    .line 13
    .line 14
    and-int/2addr v0, v2

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string p0, "SPEG"

    .line 18
    .line 19
    const-string p1, "Pointer location is not supported"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const/4 p1, 0x4

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    const/4 p1, 0x5

    .line 42
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public setRemoteInsetsControllerControlsSystemBars(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 2
    .line 3
    return-void
.end method

.method public final shouldAttachNavBarToAppDuringTransition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final shouldKeepSystemUiControllingWindow()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    return p0
.end method

.method public final simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v2, :cond_3

    .line 19
    .line 20
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isDexStandAloneMode()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneNavigationBar()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    .line 41
    .line 42
    if-ne v4, v5, :cond_0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 46
    .line 47
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 50
    .line 51
    invoke-virtual {v5, v7}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 56
    .line 57
    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget-object v10, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    iget v14, v4, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 66
    .line 67
    iget v15, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 68
    .line 69
    sget-object v16, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 72
    .line 73
    .line 74
    move-result v17

    .line 75
    const/4 v12, -0x1

    .line 76
    const/4 v13, -0x1

    .line 77
    invoke-virtual/range {v6 .. v17}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    add-int/lit8 v6, v6, -0x1

    .line 91
    .line 92
    :goto_1
    if-ltz v6, :cond_2

    .line 93
    .line 94
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    .line 99
    .line 100
    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 101
    .line 102
    iget-object v8, v8, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    new-instance v9, Landroid/view/InsetsSource;

    .line 108
    .line 109
    iget-object v10, v7, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 110
    .line 111
    invoke-direct {v9, v10}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 112
    .line 113
    .line 114
    iget-object v10, v7, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 115
    .line 116
    invoke-virtual {v10, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 117
    .line 118
    .line 119
    iget-object v8, v7, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriFunction;

    .line 120
    .line 121
    if-eqz v8, :cond_1

    .line 122
    .line 123
    iget-object v10, v7, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 124
    .line 125
    iget-object v11, v7, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 126
    .line 127
    invoke-interface {v8, v1, v10, v11}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_1
    iget-object v7, v7, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 131
    .line 132
    invoke-virtual {v9, v7}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 133
    .line 134
    .line 135
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 136
    .line 137
    invoke-virtual {v9, v7}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v3}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v9}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v6, v6, -0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_3
    return-void
.end method

.method public final startEnableTouchEvent(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x6b

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x65

    .line 13
    .line 14
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p1, 0x66

    .line 18
    .line 19
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final systemReady()V
    .locals 4

    .line 1
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-string v3, "SystemGesture"

    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v1, "systemReady() >> KnoxZT startEnableTouchEvent called for Display Id : "

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 61
    .line 62
    const-string v1, "WindowManager"

    .line 63
    .line 64
    invoke-static {v0, p0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final topAppHidesSystemBar(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 11
    .line 12
    and-int/2addr p0, p1

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    xor-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    :goto_0
    return v1
.end method

.method public updateCachedDecorInsets()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    iput v2, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 38
    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final updateConfigurationAndScreenSizeDependentBehaviors()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_MOVABLE_POLICY:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 14
    .line 15
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 16
    .line 17
    if-eq v3, v1, :cond_1

    .line 18
    .line 19
    const v1, 0x11101e7

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const v2, 0x1110023

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput-boolean v0, v1, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 46
    .line 47
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 54
    .line 55
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 56
    .line 57
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 58
    .line 59
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 83
    .line 84
    iput v2, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    .line 85
    .line 86
    iput v3, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 87
    .line 88
    iput v4, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 89
    .line 90
    iput p0, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    .line 96
    .line 97
    .line 98
    iget p0, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 99
    .line 100
    iget v1, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    .line 103
    .line 104
    iput p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayWidth:I

    .line 105
    .line 106
    iput v1, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayHeight:I

    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method public final updateCurrentUserResources()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 61
    .line 62
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 85
    .line 86
    return-void
.end method

.method public final updateDecorInsetsInfo()Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    .line 9
    .line 10
    if-eqz v4, :cond_1

    .line 11
    .line 12
    iget v4, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 13
    .line 14
    if-eq v4, v3, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TransitionController;->inTransition(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 37
    .line 38
    iget v5, v4, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 39
    .line 40
    iget v6, v4, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    .line 41
    .line 42
    iget v4, v4, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    .line 43
    .line 44
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 45
    .line 46
    iget-object v7, v7, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 47
    .line 48
    invoke-virtual {v7, v5, v6, v4, v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(IIILcom/android/server/wm/DisplayContent;)Landroid/view/InsetsState;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-object v9, v7, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 57
    .line 58
    iget-object v10, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_f

    .line 65
    .line 66
    iget-object v9, v7, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 67
    .line 68
    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_f

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 79
    .line 80
    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 81
    .line 82
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    .line 84
    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mConfigTypes:I

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    sub-int/2addr v9, v2

    .line 91
    move v10, v1

    .line 92
    :goto_1
    if-ltz v9, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0, v9}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-virtual {v11}, Landroid/view/InsetsSource;->getType()I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    and-int/2addr v12, v8

    .line 103
    if-nez v12, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 107
    .line 108
    invoke-virtual {v11}, Landroid/view/InsetsSource;->getId()I

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    invoke-virtual {v3, v12}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    if-eqz v12, :cond_8

    .line 117
    .line 118
    invoke-virtual {v12}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-virtual {v11}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-nez v11, :cond_4

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, -0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {v3}, Landroid/view/InsetsState;->sourceSize()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    sub-int/2addr v0, v2

    .line 141
    move v9, v1

    .line 142
    :goto_3
    if-ltz v0, :cond_7

    .line 143
    .line 144
    invoke-virtual {v3, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    invoke-virtual {v11}, Landroid/view/InsetsSource;->getType()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    and-int/2addr v11, v8

    .line 153
    if-eqz v11, :cond_6

    .line 154
    .line 155
    add-int/lit8 v9, v9, 0x1

    .line 156
    .line 157
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_7
    if-eq v10, v9, :cond_e

    .line 161
    .line 162
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 165
    .line 166
    array-length v0, v0

    .line 167
    sub-int/2addr v0, v2

    .line 168
    :goto_5
    if-ltz v0, :cond_d

    .line 169
    .line 170
    if-eq v0, v5, :cond_c

    .line 171
    .line 172
    add-int v3, v0, v5

    .line 173
    .line 174
    rem-int/lit8 v3, v3, 0x2

    .line 175
    .line 176
    if-ne v3, v2, :cond_9

    .line 177
    .line 178
    move v3, v2

    .line 179
    goto :goto_6

    .line 180
    :cond_9
    move v3, v1

    .line 181
    :goto_6
    if-eqz v3, :cond_a

    .line 182
    .line 183
    move v8, v4

    .line 184
    goto :goto_7

    .line 185
    :cond_a
    move v8, v6

    .line 186
    :goto_7
    if-eqz v3, :cond_b

    .line 187
    .line 188
    move v3, v6

    .line 189
    goto :goto_8

    .line 190
    :cond_b
    move v3, v4

    .line 191
    :goto_8
    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 192
    .line 193
    iget-object v9, v9, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 194
    .line 195
    aget-object v9, v9, v0

    .line 196
    .line 197
    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 198
    .line 199
    invoke-virtual {v9, v0, v8, v3, v10}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(IIILcom/android/server/wm/DisplayContent;)Landroid/view/InsetsState;

    .line 200
    .line 201
    .line 202
    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 208
    .line 209
    aget-object p0, p0, v5

    .line 210
    .line 211
    invoke-virtual {p0, v7}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    .line 212
    .line 213
    .line 214
    :cond_e
    return v1

    .line 215
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 216
    .line 217
    if-eqz v0, :cond_11

    .line 218
    .line 219
    iget v1, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 220
    .line 221
    if-eq v1, v3, :cond_11

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->inTransition(I)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_10

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 237
    .line 238
    if-eqz v0, :cond_11

    .line 239
    .line 240
    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 242
    .line 243
    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->invalidate()V

    .line 246
    .line 247
    .line 248
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 249
    .line 250
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 251
    .line 252
    aget-object p0, p0, v5

    .line 253
    .line 254
    invoke-virtual {p0, v7}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    .line 255
    .line 256
    .line 257
    return v2
.end method

.method public final updateForceShowNavBarSettings()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

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

.method public updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I
    .locals 4

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v1, v3, v0}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 37
    .line 38
    iget-boolean p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    move v2, v3

    .line 43
    :cond_1
    if-nez v0, :cond_5

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_4

    .line 53
    .line 54
    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 55
    .line 56
    if-eqz p0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-ne p0, v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_4

    .line 75
    .line 76
    :cond_3
    and-int/lit8 p0, p1, -0x11

    .line 77
    .line 78
    or-int/lit8 p0, p0, 0x2

    .line 79
    .line 80
    return p0

    .line 81
    :cond_4
    and-int/lit8 p0, p1, -0x11

    .line 82
    .line 83
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 84
    .line 85
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 86
    .line 87
    iget p1, p1, Landroid/view/InsetsFlags;->appearance:I

    .line 88
    .line 89
    and-int/lit8 p1, p1, 0x10

    .line 90
    .line 91
    or-int/2addr p0, p1

    .line 92
    return p0

    .line 93
    :cond_5
    :goto_0
    and-int/lit8 p0, p1, -0x11

    .line 94
    .line 95
    return p0

    .line 96
    :cond_6
    :goto_1
    and-int/lit8 p1, p1, -0x11

    .line 97
    .line 98
    if-eqz p2, :cond_7

    .line 99
    .line 100
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_7

    .line 112
    .line 113
    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 114
    .line 115
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 116
    .line 117
    iget p0, p0, Landroid/view/InsetsFlags;->appearance:I

    .line 118
    .line 119
    and-int/lit8 p0, p0, 0x10

    .line 120
    .line 121
    or-int/2addr p1, p0

    .line 122
    :cond_7
    return p1
.end method

.method public final updateSystemBarAttributes()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepSystemUiControllingWindow()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 23
    .line 24
    const/high16 v3, 0x20000

    .line 25
    .line 26
    and-int/2addr v2, v3

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_5

    .line 29
    .line 30
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 59
    .line 60
    :goto_1
    if-nez v0, :cond_5

    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    move-object v2, v0

    .line 64
    iput-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 65
    .line 66
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 67
    .line 68
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 69
    .line 70
    iget v4, v2, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v5, 0x1

    .line 77
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_6

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_6

    .line 88
    .line 89
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_6

    .line 98
    .line 99
    move v6, v5

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    move v6, v3

    .line 102
    :goto_2
    const/4 v7, 0x5

    .line 103
    invoke-virtual {v0, v7, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    move v0, v5

    .line 116
    goto :goto_3

    .line 117
    :cond_7
    move v0, v3

    .line 118
    :goto_3
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 119
    .line 120
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 121
    .line 122
    if-nez v6, :cond_9

    .line 123
    .line 124
    iget-object v8, v7, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 125
    .line 126
    iget-boolean v8, v8, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 127
    .line 128
    if-eqz v8, :cond_8

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-ne v8, v5, :cond_8

    .line 135
    .line 136
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    goto :goto_4

    .line 141
    :cond_8
    move v8, v3

    .line 142
    goto :goto_4

    .line 143
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    or-int/2addr v8, v9

    .line 155
    :goto_4
    iput v8, v7, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 156
    .line 157
    if-eqz v6, :cond_c

    .line 158
    .line 159
    iget-object v8, v7, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 160
    .line 161
    invoke-static {v8, v3}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-nez v8, :cond_a

    .line 166
    .line 167
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-virtual {v7, v8}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-nez v8, :cond_b

    .line 176
    .line 177
    :cond_a
    iget-object v8, v7, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 178
    .line 179
    invoke-static {v8}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-nez v8, :cond_c

    .line 184
    .line 185
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    invoke-virtual {v7, v8}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_c

    .line 194
    .line 195
    :cond_b
    invoke-virtual {v7}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 196
    .line 197
    .line 198
    :cond_c
    iget v8, v7, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 199
    .line 200
    invoke-virtual {v7, v2}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-eqz v9, :cond_d

    .line 205
    .line 206
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    or-int/2addr v9, v10

    .line 215
    goto :goto_5

    .line 216
    :cond_d
    move v9, v3

    .line 217
    :goto_5
    or-int/2addr v8, v9

    .line 218
    iget-object v9, v7, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 219
    .line 220
    iget v10, v9, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    .line 221
    .line 222
    const/4 v11, 0x4

    .line 223
    if-eq v10, v8, :cond_10

    .line 224
    .line 225
    iput v8, v9, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    .line 226
    .line 227
    iget-object v10, v9, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 228
    .line 229
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    sub-int/2addr v10, v5

    .line 234
    move v12, v3

    .line 235
    :goto_6
    if-ltz v10, :cond_f

    .line 236
    .line 237
    iget-object v13, v9, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 238
    .line 239
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    check-cast v13, Lcom/android/server/wm/InsetsSourceProvider;

    .line 244
    .line 245
    iget-object v15, v13, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 246
    .line 247
    invoke-virtual {v15}, Landroid/view/InsetsSource;->getType()I

    .line 248
    .line 249
    .line 250
    move-result v15

    .line 251
    and-int/2addr v15, v8

    .line 252
    if-eqz v15, :cond_e

    .line 253
    .line 254
    move v15, v11

    .line 255
    goto :goto_7

    .line 256
    :cond_e
    move v15, v3

    .line 257
    :goto_7
    invoke-virtual {v13, v15}, Lcom/android/server/wm/InsetsSourceProvider;->setFlags(I)Z

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    or-int/2addr v12, v13

    .line 262
    add-int/lit8 v10, v10, -0x1

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_f
    if-eqz v12, :cond_10

    .line 266
    .line 267
    invoke-virtual {v9}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 268
    .line 269
    .line 270
    :cond_10
    invoke-virtual {v7, v2}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 271
    .line 272
    .line 273
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    invoke-virtual {v1, v7}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    iget-object v8, v1, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 282
    .line 283
    if-eqz v8, :cond_11

    .line 284
    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    if-eqz v8, :cond_11

    .line 290
    .line 291
    check-cast v8, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 292
    .line 293
    iget-object v8, v8, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 294
    .line 295
    iget-object v8, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 296
    .line 297
    if-eqz v8, :cond_11

    .line 298
    .line 299
    :try_start_0
    invoke-interface {v8, v7}, Lcom/android/internal/statusbar/IStatusBar;->setTopAppHidesStatusBar(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .line 301
    .line 302
    :catch_0
    :cond_11
    if-eqz v7, :cond_13

    .line 303
    .line 304
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 305
    .line 306
    if-eqz v7, :cond_12

    .line 307
    .line 308
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 309
    .line 310
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    if-nez v7, :cond_13

    .line 315
    .line 316
    :cond_12
    move v7, v5

    .line 317
    goto :goto_8

    .line 318
    :cond_13
    move v7, v3

    .line 319
    :goto_8
    iput-boolean v7, v1, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 320
    .line 321
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    sub-int/2addr v7, v5

    .line 328
    move v8, v5

    .line 329
    move v9, v8

    .line 330
    :goto_9
    if-ltz v7, :cond_14

    .line 331
    .line 332
    iget-object v10, v1, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 339
    .line 340
    invoke-static {v10}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    and-int/2addr v8, v12

    .line 345
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 346
    .line 347
    .line 348
    move-result v12

    .line 349
    invoke-virtual {v1, v10, v12}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    .line 350
    .line 351
    .line 352
    move-result v10

    .line 353
    and-int/2addr v9, v10

    .line 354
    add-int/lit8 v7, v7, -0x1

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_14
    const/4 v7, 0x2

    .line 358
    if-eqz v8, :cond_15

    .line 359
    .line 360
    move v8, v7

    .line 361
    goto :goto_a

    .line 362
    :cond_15
    const/4 v8, 0x3

    .line 363
    :goto_a
    if-nez v9, :cond_16

    .line 364
    .line 365
    or-int/lit8 v8, v8, 0x20

    .line 366
    .line 367
    :cond_16
    iget-object v9, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 368
    .line 369
    iget-object v10, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 370
    .line 371
    iget-object v12, v10, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 372
    .line 373
    iget v13, v1, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 374
    .line 375
    invoke-static {v9, v12, v13}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    if-nez v9, :cond_18

    .line 380
    .line 381
    iget-object v12, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 382
    .line 383
    if-nez v12, :cond_17

    .line 384
    .line 385
    goto :goto_b

    .line 386
    :cond_17
    move v12, v3

    .line 387
    goto :goto_c

    .line 388
    :cond_18
    :goto_b
    move v12, v5

    .line 389
    :goto_c
    iget v13, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 390
    .line 391
    const/high16 v16, 0x100000

    .line 392
    .line 393
    if-ne v13, v7, :cond_1b

    .line 394
    .line 395
    if-eqz v0, :cond_1a

    .line 396
    .line 397
    iget-boolean v13, v1, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 398
    .line 399
    if-nez v13, :cond_19

    .line 400
    .line 401
    iget-boolean v13, v1, Lcom/android/server/wm/DisplayPolicy;->mFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 402
    .line 403
    if-eqz v13, :cond_1a

    .line 404
    .line 405
    :cond_19
    :goto_d
    and-int/lit8 v8, v8, -0x3

    .line 406
    .line 407
    or-int v8, v8, v16

    .line 408
    .line 409
    goto :goto_10

    .line 410
    :cond_1a
    if-eqz v12, :cond_1f

    .line 411
    .line 412
    :goto_e
    and-int/lit8 v8, v8, -0x3

    .line 413
    .line 414
    goto :goto_10

    .line 415
    :cond_1b
    if-nez v13, :cond_1e

    .line 416
    .line 417
    if-nez v6, :cond_1d

    .line 418
    .line 419
    if-eqz v0, :cond_1c

    .line 420
    .line 421
    goto :goto_f

    .line 422
    :cond_1c
    if-eqz v12, :cond_1f

    .line 423
    .line 424
    goto :goto_e

    .line 425
    :cond_1d
    :goto_f
    iget-boolean v13, v1, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 426
    .line 427
    if-nez v13, :cond_19

    .line 428
    .line 429
    iget-boolean v13, v1, Lcom/android/server/wm/DisplayPolicy;->mFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 430
    .line 431
    if-eqz v13, :cond_1f

    .line 432
    .line 433
    goto :goto_d

    .line 434
    :cond_1e
    if-ne v13, v5, :cond_1f

    .line 435
    .line 436
    if-eqz v0, :cond_1f

    .line 437
    .line 438
    goto :goto_e

    .line 439
    :cond_1f
    :goto_10
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    invoke-virtual {v1, v9, v13}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    .line 444
    .line 445
    .line 446
    move-result v13

    .line 447
    if-nez v13, :cond_20

    .line 448
    .line 449
    or-int/lit8 v8, v8, 0x40

    .line 450
    .line 451
    :cond_20
    iget-object v13, v1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 452
    .line 453
    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 454
    .line 455
    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 456
    .line 457
    iget-boolean v13, v13, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 458
    .line 459
    const/4 v15, -0x1

    .line 460
    const/high16 v17, 0x200000

    .line 461
    .line 462
    if-nez v13, :cond_23

    .line 463
    .line 464
    iget-object v13, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 465
    .line 466
    iget-object v13, v13, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 467
    .line 468
    if-eqz v13, :cond_21

    .line 469
    .line 470
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 471
    .line 472
    .line 473
    move-result v13

    .line 474
    if-eqz v13, :cond_21

    .line 475
    .line 476
    goto :goto_11

    .line 477
    :cond_21
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_SYSTEM_BAR_POLICY:Z

    .line 478
    .line 479
    if-eqz v13, :cond_22

    .line 480
    .line 481
    iget-object v13, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 482
    .line 483
    if-eqz v13, :cond_22

    .line 484
    .line 485
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    .line 486
    .line 487
    .line 488
    move-result v13

    .line 489
    if-eqz v13, :cond_22

    .line 490
    .line 491
    and-int/lit8 v0, v8, -0x3

    .line 492
    .line 493
    or-int v16, v0, v17

    .line 494
    .line 495
    goto/16 :goto_16

    .line 496
    .line 497
    :cond_22
    if-eqz v0, :cond_24

    .line 498
    .line 499
    if-eqz v12, :cond_24

    .line 500
    .line 501
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 502
    .line 503
    if-eqz v0, :cond_23

    .line 504
    .line 505
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-nez v0, :cond_23

    .line 514
    .line 515
    goto/16 :goto_16

    .line 516
    .line 517
    :cond_23
    :goto_11
    and-int/lit8 v16, v8, -0x3

    .line 518
    .line 519
    goto/16 :goto_16

    .line 520
    .line 521
    :cond_24
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_SYSTEMUI_VISIBILITY:Z

    .line 522
    .line 523
    if-eqz v0, :cond_25

    .line 524
    .line 525
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-eqz v0, :cond_25

    .line 534
    .line 535
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-nez v0, :cond_23

    .line 544
    .line 545
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 546
    .line 547
    if-eqz v0, :cond_25

    .line 548
    .line 549
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 550
    .line 551
    if-eqz v0, :cond_25

    .line 552
    .line 553
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 554
    .line 555
    if-eqz v0, :cond_25

    .line 556
    .line 557
    goto :goto_11

    .line 558
    :cond_25
    iget-boolean v0, v1, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 559
    .line 560
    if-eqz v0, :cond_26

    .line 561
    .line 562
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v0, v7, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    if-eqz v0, :cond_26

    .line 571
    .line 572
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    if-eqz v0, :cond_26

    .line 577
    .line 578
    and-int/lit8 v0, v8, -0x3

    .line 579
    .line 580
    or-int/lit8 v16, v0, 0x40

    .line 581
    .line 582
    goto/16 :goto_16

    .line 583
    .line 584
    :cond_26
    if-eqz v6, :cond_2f

    .line 585
    .line 586
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_TRANSPARENT_NAVIGATION_BAR:Z

    .line 587
    .line 588
    if-eqz v0, :cond_2e

    .line 589
    .line 590
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 591
    .line 592
    if-nez v0, :cond_28

    .line 593
    .line 594
    iget v0, v1, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 595
    .line 596
    and-int/2addr v0, v7

    .line 597
    if-nez v0, :cond_27

    .line 598
    .line 599
    goto :goto_14

    .line 600
    :cond_27
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 601
    .line 602
    if-nez v0, :cond_2d

    .line 603
    .line 604
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 605
    .line 606
    if-eqz v0, :cond_32

    .line 607
    .line 608
    goto :goto_14

    .line 609
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    if-nez v0, :cond_29

    .line 614
    .line 615
    goto :goto_14

    .line 616
    :cond_29
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 617
    .line 618
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 619
    .line 620
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 621
    .line 622
    .line 623
    move-result v9

    .line 624
    invoke-virtual {v0, v9, v3}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-eqz v0, :cond_2a

    .line 629
    .line 630
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 631
    .line 632
    const/high16 v9, -0x80000000

    .line 633
    .line 634
    and-int/2addr v0, v9

    .line 635
    if-eqz v0, :cond_2a

    .line 636
    .line 637
    move v0, v5

    .line 638
    goto :goto_12

    .line 639
    :cond_2a
    move v0, v3

    .line 640
    :goto_12
    iget-object v9, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 641
    .line 642
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    if-eqz v0, :cond_2b

    .line 647
    .line 648
    if-eqz v9, :cond_2b

    .line 649
    .line 650
    iget v10, v9, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 651
    .line 652
    if-eq v10, v15, :cond_2b

    .line 653
    .line 654
    sget-object v10, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 655
    .line 656
    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 660
    .line 661
    .line 662
    move-result v10

    .line 663
    iget v9, v9, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 664
    .line 665
    if-ge v10, v9, :cond_2b

    .line 666
    .line 667
    move v0, v3

    .line 668
    :cond_2b
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 669
    .line 670
    and-int/2addr v6, v11

    .line 671
    if-eqz v6, :cond_2c

    .line 672
    .line 673
    move v6, v5

    .line 674
    goto :goto_13

    .line 675
    :cond_2c
    move v6, v3

    .line 676
    :goto_13
    if-nez v0, :cond_2d

    .line 677
    .line 678
    if-eqz v6, :cond_32

    .line 679
    .line 680
    :cond_2d
    :goto_14
    and-int/lit8 v0, v8, -0x3

    .line 681
    .line 682
    move/from16 v16, v0

    .line 683
    .line 684
    goto :goto_16

    .line 685
    :cond_2e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 686
    .line 687
    if-eqz v0, :cond_32

    .line 688
    .line 689
    goto/16 :goto_11

    .line 690
    .line 691
    :cond_2f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    .line 692
    .line 693
    if-eqz v0, :cond_32

    .line 694
    .line 695
    if-eqz v9, :cond_32

    .line 696
    .line 697
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 698
    .line 699
    if-ne v9, v0, :cond_32

    .line 700
    .line 701
    iget-object v0, v9, Lcom/android/server/wm/WindowState;->mMinimizedInsets:Landroid/graphics/Rect;

    .line 702
    .line 703
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 704
    .line 705
    if-nez v0, :cond_30

    .line 706
    .line 707
    goto :goto_15

    .line 708
    :cond_30
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    if-nez v0, :cond_31

    .line 713
    .line 714
    goto :goto_15

    .line 715
    :cond_31
    and-int/lit8 v0, v8, -0x41

    .line 716
    .line 717
    or-int/lit8 v16, v0, 0x2

    .line 718
    .line 719
    goto :goto_16

    .line 720
    :cond_32
    :goto_15
    move/from16 v16, v8

    .line 721
    .line 722
    :goto_16
    iget-boolean v0, v1, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    .line 723
    .line 724
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    .line 725
    .line 726
    .line 727
    move-result v6

    .line 728
    if-eq v0, v6, :cond_39

    .line 729
    .line 730
    iput-boolean v6, v1, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    .line 731
    .line 732
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 733
    .line 734
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-eqz v0, :cond_33

    .line 739
    .line 740
    goto :goto_18

    .line 741
    :cond_33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    if-nez v0, :cond_34

    .line 746
    .line 747
    goto :goto_17

    .line 748
    :cond_34
    iget v15, v0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 749
    .line 750
    :goto_17
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 751
    .line 752
    if-nez v0, :cond_36

    .line 753
    .line 754
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 755
    .line 756
    if-nez v0, :cond_36

    .line 757
    .line 758
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 759
    .line 760
    iget-object v8, v1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 761
    .line 762
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 763
    .line 764
    check-cast v8, Lcom/android/server/policy/PhoneWindowManager;

    .line 765
    .line 766
    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 767
    .line 768
    .line 769
    iget-object v0, v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 770
    .line 771
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    .line 773
    .line 774
    if-eqz v6, :cond_35

    .line 775
    .line 776
    goto :goto_18

    .line 777
    :cond_35
    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 778
    .line 779
    .line 780
    goto :goto_18

    .line 781
    :cond_36
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;

    .line 782
    .line 783
    invoke-direct {v0, v15, v6}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;-><init>(IZ)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 787
    .line 788
    .line 789
    :goto_18
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    .line 790
    .line 791
    if-eqz v0, :cond_39

    .line 792
    .line 793
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 794
    .line 795
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 796
    .line 797
    .line 798
    move-result v0

    .line 799
    if-eqz v0, :cond_39

    .line 800
    .line 801
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    if-eqz v0, :cond_39

    .line 806
    .line 807
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    if-eqz v0, :cond_39

    .line 816
    .line 817
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 818
    .line 819
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 820
    .line 821
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 822
    .line 823
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 824
    .line 825
    .line 826
    move-result-object v8

    .line 827
    iget-boolean v9, v1, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    .line 828
    .line 829
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    const-string v10, "TaskOrganizerController"

    .line 833
    .line 834
    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 835
    .line 836
    .line 837
    move-result v12

    .line 838
    if-eqz v12, :cond_37

    .line 839
    .line 840
    iget-object v0, v8, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 841
    .line 842
    goto :goto_19

    .line 843
    :catch_1
    move-exception v0

    .line 844
    goto :goto_1a

    .line 845
    :cond_37
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    :goto_19
    if-nez v0, :cond_38

    .line 850
    .line 851
    const-string/jumbo v0, "onImmersiveModeChanged: cannot find organizer"

    .line 852
    .line 853
    .line 854
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .line 856
    .line 857
    goto :goto_1b

    .line 858
    :cond_38
    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 859
    .line 860
    invoke-interface {v0, v8, v9}, Landroid/window/ITaskOrganizer;->onImmersiveModeChanged(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 861
    .line 862
    .line 863
    goto :goto_1b

    .line 864
    :goto_1a
    const-string v8, "Exception sending onImmersiveModeChanged callback. "

    .line 865
    .line 866
    invoke-static {v10, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    .line 868
    .line 869
    :cond_39
    :goto_1b
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 874
    .line 875
    .line 876
    move-result v0

    .line 877
    xor-int/2addr v0, v5

    .line 878
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 879
    .line 880
    .line 881
    move-result-wide v8

    .line 882
    iget-wide v12, v1, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 883
    .line 884
    move v15, v4

    .line 885
    const-wide/16 v3, 0x0

    .line 886
    .line 887
    cmp-long v18, v12, v3

    .line 888
    .line 889
    if-eqz v18, :cond_3a

    .line 890
    .line 891
    sub-long/2addr v8, v12

    .line 892
    const-wide/16 v12, 0x7530

    .line 893
    .line 894
    cmp-long v8, v8, v12

    .line 895
    .line 896
    if-gtz v8, :cond_3a

    .line 897
    .line 898
    move v8, v5

    .line 899
    goto :goto_1c

    .line 900
    :cond_3a
    const/4 v8, 0x0

    .line 901
    :goto_1c
    iget-object v9, v1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 902
    .line 903
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 904
    .line 905
    .line 906
    move-result-object v9

    .line 907
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 908
    .line 909
    if-eqz v8, :cond_3c

    .line 910
    .line 911
    if-eqz v0, :cond_3c

    .line 912
    .line 913
    if-eqz v6, :cond_3c

    .line 914
    .line 915
    iget-boolean v0, v9, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 916
    .line 917
    if-eqz v0, :cond_3c

    .line 918
    .line 919
    iput-wide v3, v1, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 920
    .line 921
    const/high16 v0, 0x1600000

    .line 922
    .line 923
    and-int v3, v15, v0

    .line 924
    .line 925
    if-ne v3, v0, :cond_3b

    .line 926
    .line 927
    goto :goto_1d

    .line 928
    :cond_3b
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 929
    .line 930
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 931
    .line 932
    sget v3, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    .line 933
    .line 934
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    .line 935
    .line 936
    .line 937
    :cond_3c
    :goto_1d
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    .line 938
    .line 939
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-nez v0, :cond_3d

    .line 944
    .line 945
    return-void

    .line 946
    :cond_3d
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 947
    .line 948
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 949
    .line 950
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 951
    .line 952
    iget v4, v1, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 953
    .line 954
    invoke-static {v0, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    if-eqz v0, :cond_3e

    .line 959
    .line 960
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 961
    .line 962
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 963
    .line 964
    if-ne v0, v3, :cond_3e

    .line 965
    .line 966
    move v3, v5

    .line 967
    goto :goto_1e

    .line 968
    :cond_3e
    const/4 v3, 0x0

    .line 969
    :goto_1e
    iget-object v4, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 970
    .line 971
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 972
    .line 973
    .line 974
    if-ne v2, v0, :cond_3f

    .line 975
    .line 976
    :goto_1f
    const/4 v13, 0x0

    .line 977
    goto :goto_21

    .line 978
    :cond_3f
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 979
    .line 980
    if-eqz v4, :cond_40

    .line 981
    .line 982
    goto :goto_1f

    .line 983
    :cond_40
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 984
    .line 985
    .line 986
    move-result v4

    .line 987
    if-nez v4, :cond_41

    .line 988
    .line 989
    goto :goto_1f

    .line 990
    :cond_41
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 991
    .line 992
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 993
    .line 994
    and-int/lit8 v4, v4, 0x20

    .line 995
    .line 996
    if-eqz v4, :cond_42

    .line 997
    .line 998
    move v4, v5

    .line 999
    goto :goto_20

    .line 1000
    :cond_42
    const/4 v4, 0x0

    .line 1001
    :goto_20
    move v13, v4

    .line 1002
    :goto_21
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1003
    .line 1004
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 1005
    .line 1006
    iget v4, v4, Landroid/view/InsetsFlags;->appearance:I

    .line 1007
    .line 1008
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v6

    .line 1012
    if-eqz v6, :cond_43

    .line 1013
    .line 1014
    and-int/lit8 v6, v4, 0x4

    .line 1015
    .line 1016
    if-eqz v6, :cond_43

    .line 1017
    .line 1018
    and-int/lit8 v4, v4, -0x5

    .line 1019
    .line 1020
    :cond_43
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_SYSTEM_BAR_POLICY:Z

    .line 1021
    .line 1022
    if-eqz v6, :cond_44

    .line 1023
    .line 1024
    if-eqz v3, :cond_44

    .line 1025
    .line 1026
    iget-object v6, v1, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1027
    .line 1028
    if-eqz v6, :cond_44

    .line 1029
    .line 1030
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    .line 1031
    .line 1032
    .line 1033
    move-result v6

    .line 1034
    if-eqz v6, :cond_44

    .line 1035
    .line 1036
    and-int v6, v16, v17

    .line 1037
    .line 1038
    if-eqz v6, :cond_44

    .line 1039
    .line 1040
    const v6, -0x200001

    .line 1041
    .line 1042
    .line 1043
    and-int v16, v16, v6

    .line 1044
    .line 1045
    :cond_44
    if-eqz v13, :cond_45

    .line 1046
    .line 1047
    move-object v6, v2

    .line 1048
    goto :goto_22

    .line 1049
    :cond_45
    move-object v6, v0

    .line 1050
    :goto_22
    invoke-virtual {v1, v4, v6}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I

    .line 1051
    .line 1052
    .line 1053
    move-result v4

    .line 1054
    or-int v12, v4, v16

    .line 1055
    .line 1056
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 1057
    .line 1058
    .line 1059
    move-result v4

    .line 1060
    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    .line 1061
    .line 1062
    .line 1063
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 1064
    .line 1065
    if-nez v4, :cond_46

    .line 1066
    .line 1067
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 1068
    .line 1069
    if-eqz v4, :cond_47

    .line 1070
    .line 1071
    :cond_46
    invoke-static {v2}, Lcom/android/server/wm/PolicyControl;->canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v4

    .line 1075
    if-eqz v4, :cond_47

    .line 1076
    .line 1077
    move v4, v5

    .line 1078
    goto :goto_23

    .line 1079
    :cond_47
    const/4 v4, 0x0

    .line 1080
    :goto_23
    if-eqz v4, :cond_48

    .line 1081
    .line 1082
    move v9, v7

    .line 1083
    goto :goto_24

    .line 1084
    :cond_48
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1085
    .line 1086
    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 1087
    .line 1088
    iget v6, v6, Landroid/view/InsetsFlags;->behavior:I

    .line 1089
    .line 1090
    move v9, v6

    .line 1091
    :goto_24
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1092
    .line 1093
    iget-object v8, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1094
    .line 1095
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 1096
    .line 1097
    .line 1098
    move-result v6

    .line 1099
    const/4 v10, 0x0

    .line 1100
    invoke-virtual {v2, v6, v10}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v6

    .line 1104
    if-eqz v6, :cond_4a

    .line 1105
    .line 1106
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 1107
    .line 1108
    .line 1109
    move-result v6

    .line 1110
    invoke-virtual {v2, v6, v5}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v6

    .line 1114
    if-nez v6, :cond_49

    .line 1115
    .line 1116
    goto :goto_25

    .line 1117
    :cond_49
    const/4 v6, 0x0

    .line 1118
    goto :goto_26

    .line 1119
    :cond_4a
    :goto_25
    move v6, v5

    .line 1120
    :goto_26
    if-eqz v4, :cond_4d

    .line 1121
    .line 1122
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1123
    .line 1124
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1125
    .line 1126
    const/16 v5, 0x8b2

    .line 1127
    .line 1128
    if-eq v4, v5, :cond_4c

    .line 1129
    .line 1130
    const/16 v5, 0x7f8

    .line 1131
    .line 1132
    if-ne v4, v5, :cond_4b

    .line 1133
    .line 1134
    goto :goto_27

    .line 1135
    :cond_4b
    const/4 v4, 0x0

    .line 1136
    goto :goto_28

    .line 1137
    :cond_4c
    :goto_27
    const/4 v4, 0x1

    .line 1138
    goto :goto_28

    .line 1139
    :cond_4d
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v4

    .line 1143
    :goto_28
    if-nez v4, :cond_4e

    .line 1144
    .line 1145
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 1146
    .line 1147
    .line 1148
    move-result v4

    .line 1149
    const/4 v10, 0x0

    .line 1150
    invoke-virtual {v2, v4, v10}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 1151
    .line 1152
    .line 1153
    move-result v4

    .line 1154
    if-nez v4, :cond_4f

    .line 1155
    .line 1156
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 1157
    .line 1158
    .line 1159
    move-result v4

    .line 1160
    invoke-virtual {v2, v4, v10}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 1161
    .line 1162
    .line 1163
    move-result v4

    .line 1164
    if-nez v4, :cond_4f

    .line 1165
    .line 1166
    const/4 v5, 0x1

    .line 1167
    goto :goto_29

    .line 1168
    :cond_4e
    const/4 v10, 0x0

    .line 1169
    :cond_4f
    move v5, v10

    .line 1170
    :goto_29
    iget-object v4, v1, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 1171
    .line 1172
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1173
    .line 1174
    .line 1175
    move-result v4

    .line 1176
    new-array v4, v4, [Lcom/android/internal/view/AppearanceRegion;

    .line 1177
    .line 1178
    iget-object v10, v1, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 1179
    .line 1180
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    iget-object v10, v1, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 1184
    .line 1185
    invoke-static {v10, v14}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 1186
    .line 1187
    .line 1188
    move-result v10

    .line 1189
    iget v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 1190
    .line 1191
    if-eq v7, v15, :cond_51

    .line 1192
    .line 1193
    iput v15, v1, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 1194
    .line 1195
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v7

    .line 1199
    iget-object v11, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1200
    .line 1201
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 1202
    .line 1203
    .line 1204
    move-result v11

    .line 1205
    if-eqz v11, :cond_50

    .line 1206
    .line 1207
    new-instance v11, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;

    .line 1208
    .line 1209
    invoke-direct {v11, v14, v15, v10, v7}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;-><init>(IIILjava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v1, v11}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 1213
    .line 1214
    .line 1215
    goto :goto_2a

    .line 1216
    :cond_50
    new-instance v10, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    .line 1217
    .line 1218
    invoke-direct {v10, v14, v15, v7}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;-><init>(IILjava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v1, v10}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 1222
    .line 1223
    .line 1224
    :cond_51
    :goto_2a
    iget v15, v2, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 1225
    .line 1226
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 1227
    .line 1228
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1229
    .line 1230
    .line 1231
    move-result v7

    .line 1232
    new-array v11, v7, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1233
    .line 1234
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 1235
    .line 1236
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    iget v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 1240
    .line 1241
    if-ne v7, v12, :cond_52

    .line 1242
    .line 1243
    iget v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 1244
    .line 1245
    if-ne v7, v9, :cond_52

    .line 1246
    .line 1247
    iget v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 1248
    .line 1249
    if-ne v7, v15, :cond_52

    .line 1250
    .line 1251
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 1252
    .line 1253
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v7

    .line 1257
    if-eqz v7, :cond_52

    .line 1258
    .line 1259
    iget-boolean v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 1260
    .line 1261
    if-ne v7, v6, :cond_52

    .line 1262
    .line 1263
    iget-boolean v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreenAll:Z

    .line 1264
    .line 1265
    if-ne v7, v5, :cond_52

    .line 1266
    .line 1267
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1268
    .line 1269
    invoke-static {v7, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v7

    .line 1273
    if-eqz v7, :cond_52

    .line 1274
    .line 1275
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1276
    .line 1277
    invoke-static {v7, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 1278
    .line 1279
    .line 1280
    move-result v7

    .line 1281
    if-eqz v7, :cond_52

    .line 1282
    .line 1283
    return-void

    .line 1284
    :cond_52
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1285
    .line 1286
    iget-boolean v10, v7, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1287
    .line 1288
    if-eqz v10, :cond_57

    .line 1289
    .line 1290
    iget-boolean v10, v1, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 1291
    .line 1292
    if-ne v10, v6, :cond_53

    .line 1293
    .line 1294
    iget v10, v1, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 1295
    .line 1296
    xor-int/2addr v10, v12

    .line 1297
    const/16 v19, 0x4

    .line 1298
    .line 1299
    and-int/lit8 v10, v10, 0x4

    .line 1300
    .line 1301
    if-eqz v10, :cond_57

    .line 1302
    .line 1303
    :cond_53
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1304
    .line 1305
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 1306
    .line 1307
    if-nez v6, :cond_55

    .line 1308
    .line 1309
    and-int/lit8 v10, v12, 0x4

    .line 1310
    .line 1311
    if-eqz v10, :cond_54

    .line 1312
    .line 1313
    goto :goto_2b

    .line 1314
    :cond_54
    const/4 v10, 0x0

    .line 1315
    goto :goto_2c

    .line 1316
    :cond_55
    :goto_2b
    const/4 v10, 0x1

    .line 1317
    :goto_2c
    invoke-virtual {v7, v10}, Lcom/android/server/input/InputManagerService;->setSystemUiLightsOut(Z)V

    .line 1318
    .line 1319
    .line 1320
    :cond_56
    move/from16 v16, v5

    .line 1321
    .line 1322
    goto :goto_2f

    .line 1323
    :cond_57
    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1324
    .line 1325
    const/4 v10, 0x2

    .line 1326
    if-ne v7, v10, :cond_56

    .line 1327
    .line 1328
    iget-boolean v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 1329
    .line 1330
    if-ne v7, v6, :cond_58

    .line 1331
    .line 1332
    iget v7, v1, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 1333
    .line 1334
    xor-int/2addr v7, v12

    .line 1335
    const/4 v10, 0x4

    .line 1336
    and-int/2addr v7, v10

    .line 1337
    if-eqz v7, :cond_56

    .line 1338
    .line 1339
    :cond_58
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1340
    .line 1341
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 1342
    .line 1343
    if-nez v6, :cond_5a

    .line 1344
    .line 1345
    and-int/lit8 v10, v12, 0x4

    .line 1346
    .line 1347
    if-eqz v10, :cond_59

    .line 1348
    .line 1349
    goto :goto_2d

    .line 1350
    :cond_59
    move/from16 v16, v5

    .line 1351
    .line 1352
    const/4 v5, 0x2

    .line 1353
    const/4 v10, 0x0

    .line 1354
    goto :goto_2e

    .line 1355
    :cond_5a
    :goto_2d
    move/from16 v16, v5

    .line 1356
    .line 1357
    const/4 v5, 0x2

    .line 1358
    const/4 v10, 0x1

    .line 1359
    :goto_2e
    invoke-virtual {v7, v10, v5}, Lcom/android/server/input/InputManagerService;->setSystemUiLightsOut(ZI)V

    .line 1360
    .line 1361
    .line 1362
    :goto_2f
    iput v12, v1, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 1363
    .line 1364
    iput v9, v1, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 1365
    .line 1366
    iput v15, v1, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 1367
    .line 1368
    iput-object v8, v1, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 1369
    .line 1370
    iput-boolean v6, v1, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 1371
    .line 1372
    iput-object v4, v1, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1373
    .line 1374
    iput-object v11, v1, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1375
    .line 1376
    new-instance v10, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;

    .line 1377
    .line 1378
    const/16 v17, 0x0

    .line 1379
    .line 1380
    move-object v6, v4

    .line 1381
    move-object v4, v10

    .line 1382
    move/from16 v7, v16

    .line 1383
    .line 1384
    move v5, v14

    .line 1385
    move-object/from16 v16, v6

    .line 1386
    .line 1387
    move v6, v12

    .line 1388
    move/from16 v20, v7

    .line 1389
    .line 1390
    move-object/from16 v7, v16

    .line 1391
    .line 1392
    move-object/from16 v18, v8

    .line 1393
    .line 1394
    move v8, v3

    .line 1395
    move/from16 v19, v9

    .line 1396
    .line 1397
    move-object/from16 v21, v10

    .line 1398
    .line 1399
    move v10, v15

    .line 1400
    move-object/from16 v22, v11

    .line 1401
    .line 1402
    move-object/from16 v11, v18

    .line 1403
    .line 1404
    move/from16 v23, v12

    .line 1405
    .line 1406
    move-object/from16 v12, v22

    .line 1407
    .line 1408
    move-object/from16 v24, v0

    .line 1409
    .line 1410
    move v0, v13

    .line 1411
    move/from16 v13, v17

    .line 1412
    .line 1413
    invoke-direct/range {v4 .. v13}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;I)V

    .line 1414
    .line 1415
    .line 1416
    move-object/from16 v4, v21

    .line 1417
    .line 1418
    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 1419
    .line 1420
    .line 1421
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 1422
    .line 1423
    if-eqz v4, :cond_5b

    .line 1424
    .line 1425
    iget-object v4, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1426
    .line 1427
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 1428
    .line 1429
    .line 1430
    move-result v4

    .line 1431
    if-eqz v4, :cond_5b

    .line 1432
    .line 1433
    new-instance v13, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;

    .line 1434
    .line 1435
    const/16 v17, 0x1

    .line 1436
    .line 1437
    move-object v4, v13

    .line 1438
    move v5, v14

    .line 1439
    move/from16 v6, v23

    .line 1440
    .line 1441
    move-object/from16 v7, v16

    .line 1442
    .line 1443
    move v8, v3

    .line 1444
    move/from16 v9, v19

    .line 1445
    .line 1446
    move v10, v15

    .line 1447
    move-object/from16 v11, v18

    .line 1448
    .line 1449
    move-object/from16 v12, v22

    .line 1450
    .line 1451
    move-object v3, v13

    .line 1452
    move/from16 v13, v17

    .line 1453
    .line 1454
    invoke-direct/range {v4 .. v13}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;I)V

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 1458
    .line 1459
    .line 1460
    :cond_5b
    iget-boolean v3, v1, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreenAll:Z

    .line 1461
    .line 1462
    move/from16 v10, v20

    .line 1463
    .line 1464
    if-eq v3, v10, :cond_5c

    .line 1465
    .line 1466
    iput-boolean v10, v1, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreenAll:Z

    .line 1467
    .line 1468
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;

    .line 1469
    .line 1470
    move-object/from16 v5, v16

    .line 1471
    .line 1472
    move/from16 v4, v23

    .line 1473
    .line 1474
    invoke-direct {v3, v14, v4, v5, v10}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;-><init>(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    .line 1475
    .line 1476
    .line 1477
    iget-object v5, v1, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 1478
    .line 1479
    new-instance v6, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;

    .line 1480
    .line 1481
    invoke-direct {v6, v1, v3}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;)V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1485
    .line 1486
    .line 1487
    goto :goto_30

    .line 1488
    :cond_5c
    move/from16 v4, v23

    .line 1489
    .line 1490
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1491
    .line 1492
    const-string/jumbo v5, "updateSystemBarAttributes: displayId="

    .line 1493
    .line 1494
    .line 1495
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    .line 1501
    const-string v5, ", focusedCanBeNavColorWin="

    .line 1502
    .line 1503
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    .line 1509
    const-string v0, ", win="

    .line 1510
    .line 1511
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    .line 1513
    .line 1514
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1515
    .line 1516
    .line 1517
    const-string v0, ", navColorWin="

    .line 1518
    .line 1519
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    .line 1522
    move-object/from16 v0, v24

    .line 1523
    .line 1524
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1525
    .line 1526
    .line 1527
    const-string v0, ", caller="

    .line 1528
    .line 1529
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    .line 1531
    .line 1532
    const/4 v2, 0x3

    .line 1533
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v0

    .line 1537
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    .line 1539
    .line 1540
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v0

    .line 1544
    const-string v2, "WindowManager"

    .line 1545
    .line 1546
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    .line 1548
    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    const-string/jumbo v3, "updateSystemBarAttributes, bhv="

    .line 1552
    .line 1553
    .line 1554
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    move/from16 v6, v19

    .line 1558
    .line 1559
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1560
    .line 1561
    .line 1562
    const-string v3, ", apr="

    .line 1563
    .line 1564
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1568
    .line 1569
    .line 1570
    const-string v3, ", statusBarAprRegions="

    .line 1571
    .line 1572
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    .line 1575
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 1576
    .line 1577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1578
    .line 1579
    .line 1580
    const-string v1, ", requestedVisibilities="

    .line 1581
    .line 1582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1586
    .line 1587
    .line 1588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v0

    .line 1592
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    .line 1594
    .line 1595
    return-void
.end method

.method public final validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 7

    .line 1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2
    .line 3
    const/high16 v1, 0x20000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const-string v1, "DisplayPolicy"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 13
    .line 14
    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 18
    .line 19
    const/high16 v2, -0x80000000

    .line 20
    .line 21
    and-int/2addr v0, v2

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 28
    .line 29
    const/16 v2, 0x7d0

    .line 30
    .line 31
    const/4 v3, -0x7

    .line 32
    const/4 v4, 0x0

    .line 33
    const-string v5, "android.permission.STATUS_BAR_SERVICE"

    .line 34
    .line 35
    if-eq v0, v2, :cond_9

    .line 36
    .line 37
    const/16 v2, 0x7de

    .line 38
    .line 39
    const/16 v6, -0xa

    .line 40
    .line 41
    if-eq v0, v2, :cond_8

    .line 42
    .line 43
    const/16 v2, 0x7e1

    .line 44
    .line 45
    if-eq v0, v2, :cond_7

    .line 46
    .line 47
    const/16 v2, 0x7e3

    .line 48
    .line 49
    if-eq v0, v2, :cond_5

    .line 50
    .line 51
    const/16 v2, 0x7e8

    .line 52
    .line 53
    if-eq v0, v2, :cond_4

    .line 54
    .line 55
    const/16 v2, 0x7f1

    .line 56
    .line 57
    if-eq v0, v2, :cond_7

    .line 58
    .line 59
    const/16 v2, 0x7f8

    .line 60
    .line 61
    if-eq v0, v2, :cond_2

    .line 62
    .line 63
    const/16 v2, 0x7f9

    .line 64
    .line 65
    if-eq v0, v2, :cond_7

    .line 66
    .line 67
    const-string v2, "WindowManager"

    .line 68
    .line 69
    packed-switch v0, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isDexStandAloneMode()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_NAVIGATION_BAR_STANDALONE"

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return v6

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isDexStandAloneMode()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_NOTIFICATION_SHADE_STANDALONE"

    .line 94
    .line 95
    .line 96
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return v6

    .line 100
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isDexStandAloneMode()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_9

    .line 105
    .line 106
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_STATUS_BAR_STANDALONE"

    .line 107
    .line 108
    .line 109
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    return v6

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v0, v5, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 119
    .line 120
    if-eqz v0, :cond_b

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 125
    .line 126
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_b

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->canReplaceSystemWindowForDexStandAlone(Landroid/view/WindowManager$LayoutParams;)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_3

    .line 141
    .line 142
    return v4

    .line 143
    :cond_3
    return v3

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v0, v5, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {v0, v5, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 156
    .line 157
    if-eqz v0, :cond_b

    .line 158
    .line 159
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 160
    .line 161
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_b

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->canReplaceSystemWindowForDexStandAlone(Landroid/view/WindowManager$LayoutParams;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_6

    .line 176
    .line 177
    return v4

    .line 178
    :cond_6
    return v3

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    invoke-virtual {v0, v5, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_8
    return v6

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    invoke-virtual {v0, v5, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 192
    .line 193
    if-eqz v0, :cond_b

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 196
    .line 197
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_b

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->canReplaceSystemWindowForDexStandAlone(Landroid/view/WindowManager$LayoutParams;)Z

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    if-eqz p0, :cond_a

    .line 212
    .line 213
    return v4

    .line 214
    :cond_a
    return v3

    .line 215
    :cond_b
    :goto_0
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 216
    .line 217
    if-eqz p1, :cond_c

    .line 218
    .line 219
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 220
    .line 221
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 222
    .line 223
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 224
    .line 225
    invoke-virtual {p1, p3}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-nez p1, :cond_c

    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 232
    .line 233
    invoke-virtual {p0, v5, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_c
    return v4

    .line 237
    :pswitch_data_0
    .packed-switch 0xa3d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
