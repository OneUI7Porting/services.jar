.class public final Lcom/android/server/wm/AppCompatLetterboxPolicy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

.field public mLastShouldShowLetterboxUi:Z

.field public final mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/AppCompatRoundedCorners;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLetterboxDirection()I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 20
    .line 21
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-lez v1, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 46
    .line 47
    iget-object v4, v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ne v1, v2, :cond_1

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    if-lez v0, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-ne v0, p0, :cond_3

    .line 92
    .line 93
    const/4 v3, 0x2

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_0
    return v3
.end method

.method public shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsRelaunchingAfterRequestedOrientationChanged:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLastShouldShowLetterboxUi:Z

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInLetterboxAnimation()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    .line 44
    const/high16 v0, 0x100000

    .line 45
    .line 46
    and-int/2addr p1, v0

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLastShouldShowLetterboxUi:Z

    .line 53
    .line 54
    return p1
.end method

.method public final start(Lcom/android/server/wm/WindowState;)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 5
    .line 6
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    :cond_2
    :goto_0
    return-void

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    if-eqz v3, :cond_5

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_4
    iget-object v4, v0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-float v0, v0

    .line 54
    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 55
    .line 56
    .line 57
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_15

    .line 64
    .line 65
    if-eq v3, p1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eq v3, v4, :cond_6

    .line 76
    .line 77
    goto/16 :goto_8

    .line 78
    .line 79
    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 82
    .line 83
    iget-object v3, v3, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundType()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    const/4 v5, 0x0

    .line 90
    if-ne v4, v1, :cond_9

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_9

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_9

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperBlurRadiusPx()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-gtz v1, :cond_7

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperDarkScrimAlpha()F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/4 v4, 0x0

    .line 115
    cmpl-float v1, v1, v4

    .line 116
    .line 117
    if-lez v1, :cond_9

    .line 118
    .line 119
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperBlurRadiusPx()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-lez v1, :cond_8

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->isLetterboxWallpaperBlurSupported()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_9

    .line 130
    .line 131
    :cond_8
    move v1, v2

    .line 132
    goto :goto_2

    .line 133
    :cond_9
    move v1, v5

    .line 134
    :goto_2
    iget-boolean v4, v3, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mShowWallpaperForLetterboxBackground:Z

    .line 135
    .line 136
    if-eq v4, v1, :cond_b

    .line 137
    .line 138
    iput-boolean v1, v3, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mShowWallpaperForLetterboxBackground:Z

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    .line 141
    .line 142
    .line 143
    if-nez v1, :cond_b

    .line 144
    .line 145
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 146
    .line 147
    if-eqz v0, :cond_b

    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 152
    .line 153
    if-ne v1, p1, :cond_b

    .line 154
    .line 155
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 156
    .line 157
    if-eqz v1, :cond_a

    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 160
    .line 161
    if-eqz v1, :cond_a

    .line 162
    .line 163
    invoke-virtual {v1, v5}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->onAdjustWallpaperWindows(Z)V

    .line 164
    .line 165
    .line 166
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 169
    .line 170
    new-instance v4, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    invoke-direct {v4, v0, v3, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppCompatLetterboxOverrides;Lcom/android/server/wm/WindowState;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 183
    .line 184
    if-eqz v0, :cond_14

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 191
    .line 192
    if-nez v0, :cond_e

    .line 193
    .line 194
    iget-object v0, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 195
    .line 196
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 197
    .line 198
    iget-object v3, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 199
    .line 200
    iget-object v10, v3, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 201
    .line 202
    new-instance v3, Lcom/android/server/wm/Letterbox;

    .line 203
    .line 204
    new-instance v7, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;

    .line 205
    .line 206
    const/4 v4, 0x1

    .line 207
    invoke-direct {v7, v4, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iget-object v4, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 211
    .line 212
    iget-object v6, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 213
    .line 214
    iget-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 215
    .line 216
    new-instance v11, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;

    .line 217
    .line 218
    const/4 v6, 0x0

    .line 219
    invoke-direct {v11, v6, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    iget-object v9, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 223
    .line 224
    move-object v6, v3

    .line 225
    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/Letterbox;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;Ljava/util/function/Supplier;Lcom/android/server/wm/AppCompatReachabilityPolicy;Lcom/android/server/wm/AppCompatLetterboxOverrides;Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;)V

    .line 226
    .line 227
    .line 228
    iput-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 229
    .line 230
    iput-object p1, v3, Lcom/android/server/wm/Letterbox;->mInputWindow:Lcom/android/server/wm/WindowState;

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    iput-boolean v0, v3, Lcom/android/server/wm/Letterbox;->mLastUseFullWindowSurface:Z

    .line 237
    .line 238
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_c

    .line 243
    .line 244
    iget-object v0, v3, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 245
    .line 246
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_c
    iget-object v0, v3, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 251
    .line 252
    array-length v3, v0

    .line 253
    :goto_3
    if-ge v5, v3, :cond_d

    .line 254
    .line 255
    aget-object v6, v0, v5

    .line 256
    .line 257
    invoke-virtual {v6, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 258
    .line 259
    .line 260
    add-int/lit8 v5, v5, 0x1

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_d
    :goto_4
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 264
    .line 265
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 266
    .line 267
    iget-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 268
    .line 269
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    new-instance v4, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;

    .line 273
    .line 274
    const/4 v5, 0x2

    .line 275
    invoke-direct {v4, v5, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iput-object v4, v0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    .line 279
    .line 280
    :cond_e
    new-instance v0, Landroid/graphics/Point;

    .line 281
    .line 282
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 283
    .line 284
    .line 285
    iget-object v3, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 286
    .line 287
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isInLetterboxAnimation()Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    iget-object v1, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 292
    .line 293
    if-eqz v3, :cond_f

    .line 294
    .line 295
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 296
    .line 297
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ConfigurationContainer;->getPosition(Landroid/graphics/Point;)V

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_f
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ConfigurationContainer;->getPosition(Landroid/graphics/Point;)V

    .line 302
    .line 303
    .line 304
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    if-eqz v3, :cond_10

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_11

    .line 316
    .line 317
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    goto :goto_6

    .line 326
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    :goto_6
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 339
    .line 340
    if-eqz v4, :cond_12

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_12

    .line 347
    .line 348
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 357
    .line 358
    .line 359
    :cond_12
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 360
    .line 361
    iget-object v4, v4, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 362
    .line 363
    iget-object v4, v4, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 364
    .line 365
    invoke-virtual {v4}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    if-eqz v4, :cond_13

    .line 370
    .line 371
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    goto :goto_7

    .line 376
    :cond_13
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 377
    .line 378
    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 379
    .line 380
    :goto_7
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 381
    .line 382
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 383
    .line 384
    .line 385
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 386
    .line 387
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 388
    .line 389
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 390
    .line 391
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 392
    .line 393
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 394
    .line 395
    if-eqz p0, :cond_15

    .line 396
    .line 397
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 398
    .line 399
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 400
    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-eqz p1, :cond_15

    .line 408
    .line 409
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 410
    .line 411
    sget-object p1, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 412
    .line 413
    sget-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    .line 414
    .line 415
    invoke-virtual {p0, p1, p1, v0}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 416
    .line 417
    .line 418
    :cond_15
    :goto_8
    return-void
.end method
