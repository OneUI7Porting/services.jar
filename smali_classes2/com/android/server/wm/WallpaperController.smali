.class public final Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mComputeMaxZoomOutFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field public final mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

.field public volatile mIsWallpaperNotifiedOnDisplaySwitch:Z

.field public mLargestDisplaySize:Landroid/graphics/Point;

.field public mLastFrozen:Z

.field public mLastWallpaperTimeoutTime:J

.field public mLastWallpaperZoomOut:F

.field public mMaxWallpaperScale:F

.field public mMinWallpaperScale:F

.field public mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public final mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mShouldOffsetWallpaperCenter:Z

.field public mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field public mWallpaperCropUtils:Lcom/android/server/wallpaper/WallpaperCropper$WallpaperCropUtils;

.field public mWallpaperDrawState:I

.field public mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public final mWallpaperTokens:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperCropUtils:Lcom/android/server/wallpaper/WallpaperCropper$WallpaperCropUtils;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 23
    .line 24
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 39
    .line 40
    iput-object v0, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 41
    .line 42
    iput-object v3, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 43
    .line 44
    iput-boolean v1, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 45
    .line 46
    iput-object v0, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 47
    .line 48
    iput-boolean v1, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 49
    .line 50
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WallpaperController;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WallpaperController;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 74
    .line 75
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const p2, 0x105011f

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    .line 91
    .line 92
    const p2, 0x105011e

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 100
    .line 101
    const p2, 0x11101f3

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 109
    .line 110
    return-void
.end method

.method public static dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V
    .locals 2

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "="

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    cmpl-float p1, p2, p1

    .line 28
    .line 29
    if-ltz p1, :cond_0

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "NA"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final adjustWallpaperWindows()V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v8, v7, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    iput-boolean v9, v8, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 7
    .line 8
    iget-object v10, v7, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 9
    .line 10
    iget-object v0, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    iput-boolean v9, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 18
    .line 19
    iput-object v1, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    iput-boolean v9, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 22
    .line 23
    iput-boolean v9, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 24
    .line 25
    iget-object v0, v7, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    .line 29
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 30
    .line 31
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 32
    .line 33
    iget-boolean v3, v3, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 34
    .line 35
    const/4 v11, 0x1

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 39
    .line 40
    iget-boolean v2, v2, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    .line 41
    .line 42
    xor-int/2addr v2, v11

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iput-boolean v11, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 46
    .line 47
    :cond_0
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    sub-int/2addr v2, v11

    .line 54
    :goto_0
    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 55
    .line 56
    if-ltz v2, :cond_a

    .line 57
    .line 58
    iget-object v3, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/android/server/wm/WallpaperWindowToken;

    .line 65
    .line 66
    iget-boolean v4, v3, Lcom/android/server/wm/WallpaperWindowToken;->mShowWhenLocked:Z

    .line 67
    .line 68
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    .line 69
    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    iget-boolean v5, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 73
    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperWindowToken;->canShowInCurrentDevice()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_1

    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    sub-int/2addr v5, v11

    .line 89
    :goto_1
    if-ltz v5, :cond_9

    .line 90
    .line 91
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 96
    .line 97
    iget-boolean v13, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 98
    .line 99
    if-nez v13, :cond_2

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_2
    iget-object v13, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 103
    .line 104
    if-eqz v4, :cond_5

    .line 105
    .line 106
    iget-object v14, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 107
    .line 108
    if-eqz v14, :cond_3

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    if-eq v14, v6, :cond_4

    .line 112
    .line 113
    aget-boolean v14, v12, v9

    .line 114
    .line 115
    if-eqz v14, :cond_4

    .line 116
    .line 117
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    iget-object v15, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 122
    .line 123
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 128
    .line 129
    filled-new-array {v14, v15}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v21

    .line 133
    const-wide v17, 0x605add785e27328bL    # 1.4408093641668366E156

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    const/16 v19, 0x0

    .line 139
    .line 140
    const/16 v20, 0x0

    .line 141
    .line 142
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    iput-object v6, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    :goto_2
    if-nez v4, :cond_8

    .line 149
    .line 150
    iget-object v14, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 151
    .line 152
    if-eqz v14, :cond_6

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    if-eq v14, v6, :cond_7

    .line 156
    .line 157
    aget-boolean v14, v12, v9

    .line 158
    .line 159
    if-eqz v14, :cond_7

    .line 160
    .line 161
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    iget-object v15, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 166
    .line 167
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 172
    .line 173
    filled-new-array {v14, v15}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v21

    .line 177
    const-wide v17, 0x399c7a35ffd03f3cL    # 3.5101088849872048E-31

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    const/16 v19, 0x0

    .line 183
    .line 184
    const/16 v20, 0x0

    .line 185
    .line 186
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_7
    iput-object v6, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 190
    .line 191
    :cond_8
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_9
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_a
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    .line 199
    .line 200
    invoke-virtual {v8, v2, v11}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 201
    .line 202
    .line 203
    iget-boolean v2, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 204
    .line 205
    if-eqz v2, :cond_b

    .line 206
    .line 207
    iput-boolean v11, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 208
    .line 209
    :cond_b
    iget-object v2, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 210
    .line 211
    if-nez v2, :cond_f

    .line 212
    .line 213
    iget-boolean v2, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 214
    .line 215
    if-eqz v2, :cond_f

    .line 216
    .line 217
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_d

    .line 222
    .line 223
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_c

    .line 228
    .line 229
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 230
    .line 231
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 232
    .line 233
    iget-boolean v2, v2, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 234
    .line 235
    if-nez v2, :cond_c

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_c
    move v2, v9

    .line 239
    goto :goto_6

    .line 240
    :cond_d
    :goto_5
    move v2, v11

    .line 241
    :goto_6
    iget-object v3, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 242
    .line 243
    if-nez v2, :cond_e

    .line 244
    .line 245
    iget-object v2, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 246
    .line 247
    if-eqz v2, :cond_e

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_e
    iget-object v2, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 251
    .line 252
    :goto_7
    iput-object v2, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 253
    .line 254
    :cond_f
    iget-object v2, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 255
    .line 256
    iget-object v3, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 257
    .line 258
    const/4 v4, 0x3

    .line 259
    if-eq v3, v2, :cond_1e

    .line 260
    .line 261
    iget-object v3, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 262
    .line 263
    if-eqz v3, :cond_10

    .line 264
    .line 265
    if-ne v3, v2, :cond_10

    .line 266
    .line 267
    goto/16 :goto_b

    .line 268
    .line 269
    :cond_10
    aget-boolean v3, v12, v11

    .line 270
    .line 271
    if-eqz v3, :cond_11

    .line 272
    .line 273
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    iget-object v5, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 278
    .line 279
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    const/4 v6, 0x5

    .line 284
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 293
    .line 294
    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v18

    .line 298
    const/16 v16, 0x0

    .line 299
    .line 300
    const/16 v17, 0x0

    .line 301
    .line 302
    const-wide v14, -0x340f41839ad4cc1aL    # -6.569020556411756E57

    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :cond_11
    iput-object v1, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 311
    .line 312
    iget-object v3, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 313
    .line 314
    iput-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 315
    .line 316
    if-nez v3, :cond_12

    .line 317
    .line 318
    if-eqz v2, :cond_12

    .line 319
    .line 320
    invoke-virtual {v7, v2, v9}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 321
    .line 322
    .line 323
    :cond_12
    if-eqz v2, :cond_21

    .line 324
    .line 325
    if-nez v3, :cond_13

    .line 326
    .line 327
    goto/16 :goto_c

    .line 328
    .line 329
    :cond_13
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    aget-boolean v6, v12, v11

    .line 338
    .line 339
    if-eqz v6, :cond_14

    .line 340
    .line 341
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 350
    .line 351
    filled-new-array {v6, v13}, [Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v19

    .line 355
    const/16 v17, 0x0

    .line 356
    .line 357
    const/16 v18, 0x0

    .line 358
    .line 359
    const-wide v15, 0x4e10cf5a90ab34e7L    # 1.132990118440253E68

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_14
    if-eqz v4, :cond_21

    .line 368
    .line 369
    if-nez v5, :cond_15

    .line 370
    .line 371
    goto/16 :goto_c

    .line 372
    .line 373
    :cond_15
    new-instance v4, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;

    .line 374
    .line 375
    invoke-direct {v4, v3}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowState;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    if-nez v4, :cond_16

    .line 383
    .line 384
    goto/16 :goto_c

    .line 385
    .line 386
    :cond_16
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 387
    .line 388
    if-eqz v4, :cond_17

    .line 389
    .line 390
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-nez v4, :cond_17

    .line 395
    .line 396
    move v4, v11

    .line 397
    goto :goto_8

    .line 398
    :cond_17
    move v4, v9

    .line 399
    :goto_8
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 400
    .line 401
    if-eqz v5, :cond_18

    .line 402
    .line 403
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-nez v5, :cond_18

    .line 408
    .line 409
    move v5, v11

    .line 410
    goto :goto_9

    .line 411
    :cond_18
    move v5, v9

    .line 412
    :goto_9
    aget-boolean v6, v12, v11

    .line 413
    .line 414
    if-eqz v6, :cond_19

    .line 415
    .line 416
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v13

    .line 424
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 425
    .line 426
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 427
    .line 428
    .line 429
    move-result-object v15

    .line 430
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    filled-new-array {v6, v15, v13, v9}, [Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v19

    .line 438
    const/16 v18, 0x0

    .line 439
    .line 440
    const-wide v15, 0x69f347bd77e2314cL    # 2.3612905130085716E202

    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    const/16 v17, 0xcc

    .line 446
    .line 447
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    :cond_19
    iput-object v3, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 451
    .line 452
    if-eqz v4, :cond_1b

    .line 453
    .line 454
    if-nez v5, :cond_1b

    .line 455
    .line 456
    aget-boolean v4, v12, v11

    .line 457
    .line 458
    if-eqz v4, :cond_1a

    .line 459
    .line 460
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 461
    .line 462
    const/16 v17, 0x0

    .line 463
    .line 464
    const/16 v18, 0x0

    .line 465
    .line 466
    const-wide v14, -0x3c4cd0cffd3dc73cL    # -1.38237639903259955E18

    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    const/16 v16, 0x0

    .line 472
    .line 473
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    :cond_1a
    iput-object v3, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 477
    .line 478
    goto :goto_a

    .line 479
    :cond_1b
    if-ne v4, v5, :cond_1d

    .line 480
    .line 481
    iget-object v4, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 482
    .line 483
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 484
    .line 485
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v4

    .line 489
    if-nez v4, :cond_1d

    .line 490
    .line 491
    iget-object v4, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 492
    .line 493
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 494
    .line 495
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    if-nez v4, :cond_1c

    .line 500
    .line 501
    iget-object v4, v8, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 502
    .line 503
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 504
    .line 505
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    if-eqz v4, :cond_1d

    .line 510
    .line 511
    :cond_1c
    iput-object v3, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 512
    .line 513
    :cond_1d
    :goto_a
    iput-object v2, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 514
    .line 515
    goto :goto_c

    .line 516
    :cond_1e
    :goto_b
    iget-object v3, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 517
    .line 518
    if-nez v3, :cond_1f

    .line 519
    .line 520
    goto :goto_c

    .line 521
    :cond_1f
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    if-nez v3, :cond_21

    .line 526
    .line 527
    aget-boolean v3, v12, v11

    .line 528
    .line 529
    if-eqz v3, :cond_20

    .line 530
    .line 531
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 532
    .line 533
    const/16 v17, 0x0

    .line 534
    .line 535
    const/16 v18, 0x0

    .line 536
    .line 537
    const-wide v14, -0x304118fe7ad8c55bL    # -1.3977537621012356E76

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    const/16 v16, 0x0

    .line 543
    .line 544
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    :cond_20
    iput-object v1, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 548
    .line 549
    iput-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 550
    .line 551
    :cond_21
    :goto_c
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 552
    .line 553
    invoke-virtual {v7, v2}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    if-eqz v2, :cond_22

    .line 558
    .line 559
    move v9, v11

    .line 560
    goto :goto_d

    .line 561
    :cond_22
    const/4 v9, 0x0

    .line 562
    :goto_d
    if-eqz v9, :cond_26

    .line 563
    .line 564
    iget-object v3, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 565
    .line 566
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 567
    .line 568
    const/4 v5, 0x0

    .line 569
    cmpl-float v6, v4, v5

    .line 570
    .line 571
    if-ltz v6, :cond_23

    .line 572
    .line 573
    iput v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 574
    .line 575
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 576
    .line 577
    iput v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 578
    .line 579
    :cond_23
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 580
    .line 581
    cmpl-float v5, v4, v5

    .line 582
    .line 583
    if-ltz v5, :cond_24

    .line 584
    .line 585
    iput v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 586
    .line 587
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 588
    .line 589
    iput v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 590
    .line 591
    :cond_24
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 592
    .line 593
    const/high16 v5, -0x80000000

    .line 594
    .line 595
    if-eq v4, v5, :cond_25

    .line 596
    .line 597
    iput v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 598
    .line 599
    :cond_25
    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 600
    .line 601
    if-eq v3, v5, :cond_26

    .line 602
    .line 603
    iput v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 604
    .line 605
    :cond_26
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    if-nez v2, :cond_28

    .line 610
    .line 611
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    if-eqz v2, :cond_27

    .line 616
    .line 617
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 618
    .line 619
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 620
    .line 621
    iget-boolean v0, v0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 622
    .line 623
    if-nez v0, :cond_27

    .line 624
    .line 625
    goto :goto_e

    .line 626
    :cond_27
    const/4 v0, 0x0

    .line 627
    goto :goto_f

    .line 628
    :cond_28
    :goto_e
    move v0, v11

    .line 629
    :goto_f
    aget-boolean v2, v12, v11

    .line 630
    .line 631
    if-eqz v2, :cond_29

    .line 632
    .line 633
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 634
    .line 635
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v18

    .line 647
    const/16 v17, 0x0

    .line 648
    .line 649
    const-wide v14, 0x39249a0d81e31e2L

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    const/16 v16, 0xf

    .line 655
    .line 656
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    :cond_29
    iget-object v2, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 660
    .line 661
    if-nez v0, :cond_2a

    .line 662
    .line 663
    iget-object v0, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 664
    .line 665
    if-eqz v0, :cond_2a

    .line 666
    .line 667
    goto :goto_10

    .line 668
    :cond_2a
    iget-object v0, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 669
    .line 670
    :goto_10
    if-nez v0, :cond_2b

    .line 671
    .line 672
    goto :goto_11

    .line 673
    :cond_2b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 674
    .line 675
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    :goto_11
    iget-object v0, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 680
    .line 681
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 682
    .line 683
    .line 684
    move-result v0

    .line 685
    sub-int/2addr v0, v11

    .line 686
    :goto_12
    if-ltz v0, :cond_35

    .line 687
    .line 688
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 689
    .line 690
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 695
    .line 696
    if-eqz v9, :cond_2c

    .line 697
    .line 698
    if-ne v2, v1, :cond_2c

    .line 699
    .line 700
    move v3, v11

    .line 701
    goto :goto_13

    .line 702
    :cond_2c
    const/4 v3, 0x0

    .line 703
    :goto_13
    iget-boolean v4, v2, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 704
    .line 705
    if-eq v4, v3, :cond_2e

    .line 706
    .line 707
    const/4 v4, 0x0

    .line 708
    aget-boolean v5, v12, v4

    .line 709
    .line 710
    if-eqz v5, :cond_2d

    .line 711
    .line 712
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 713
    .line 714
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 719
    .line 720
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 721
    .line 722
    .line 723
    move-result-object v5

    .line 724
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v18

    .line 728
    const-wide v14, -0x6e2447dcd5a9cbebL

    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    const/16 v16, 0xc

    .line 734
    .line 735
    const/16 v17, 0x0

    .line 736
    .line 737
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 738
    .line 739
    .line 740
    :cond_2d
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    .line 741
    .line 742
    .line 743
    :cond_2e
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 744
    .line 745
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 746
    .line 747
    iget-object v4, v4, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 748
    .line 749
    if-eqz v3, :cond_33

    .line 750
    .line 751
    if-eqz v4, :cond_33

    .line 752
    .line 753
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 754
    .line 755
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 756
    .line 757
    if-eqz v5, :cond_30

    .line 758
    .line 759
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 760
    .line 761
    .line 762
    move-result-object v6

    .line 763
    invoke-virtual {v5, v6}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    .line 764
    .line 765
    .line 766
    move-result v6

    .line 767
    if-eqz v6, :cond_30

    .line 768
    .line 769
    iget-object v4, v5, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 770
    .line 771
    if-nez v4, :cond_2f

    .line 772
    .line 773
    goto :goto_14

    .line 774
    :cond_2f
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 775
    .line 776
    .line 777
    goto :goto_14

    .line 778
    :cond_30
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 779
    .line 780
    if-eqz v5, :cond_31

    .line 781
    .line 782
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    if-eqz v5, :cond_32

    .line 787
    .line 788
    :cond_31
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 789
    .line 790
    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 791
    .line 792
    .line 793
    move-result v5

    .line 794
    if-eqz v5, :cond_32

    .line 795
    .line 796
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 797
    .line 798
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 799
    .line 800
    .line 801
    goto :goto_14

    .line 802
    :cond_32
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 803
    .line 804
    if-eqz v5, :cond_33

    .line 805
    .line 806
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 807
    .line 808
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 809
    .line 810
    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 811
    .line 812
    if-nez v5, :cond_33

    .line 813
    .line 814
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 815
    .line 816
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    .line 817
    .line 818
    .line 819
    move-result v5

    .line 820
    if-eqz v5, :cond_33

    .line 821
    .line 822
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 823
    .line 824
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 825
    .line 826
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 827
    .line 828
    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    .line 829
    .line 830
    invoke-virtual {v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    .line 831
    .line 832
    .line 833
    move-result v4

    .line 834
    if-eqz v4, :cond_33

    .line 835
    .line 836
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 837
    .line 838
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 839
    .line 840
    if-eqz v4, :cond_33

    .line 841
    .line 842
    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    .line 843
    .line 844
    .line 845
    move-result v5

    .line 846
    if-eqz v5, :cond_33

    .line 847
    .line 848
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 849
    .line 850
    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 851
    .line 852
    .line 853
    move-result v5

    .line 854
    if-eqz v5, :cond_33

    .line 855
    .line 856
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 857
    .line 858
    .line 859
    :cond_33
    :goto_14
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 860
    .line 861
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 862
    .line 863
    .line 864
    move-result v4

    .line 865
    if-eqz v4, :cond_34

    .line 866
    .line 867
    goto :goto_15

    .line 868
    :cond_34
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisible$1(Z)V

    .line 869
    .line 870
    .line 871
    :goto_15
    add-int/lit8 v0, v0, -0x1

    .line 872
    .line 873
    goto/16 :goto_12

    .line 874
    .line 875
    :cond_35
    aget-boolean v0, v12, v11

    .line 876
    .line 877
    if-eqz v0, :cond_38

    .line 878
    .line 879
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 880
    .line 881
    int-to-long v0, v0

    .line 882
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 883
    .line 884
    .line 885
    move-result v2

    .line 886
    if-nez v2, :cond_37

    .line 887
    .line 888
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    if-eqz v2, :cond_36

    .line 893
    .line 894
    goto :goto_16

    .line 895
    :cond_36
    const/4 v4, 0x0

    .line 896
    goto :goto_17

    .line 897
    :cond_37
    :goto_16
    move v4, v11

    .line 898
    :goto_17
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 899
    .line 900
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v18

    .line 916
    const/16 v16, 0x3d

    .line 917
    .line 918
    const/16 v17, 0x0

    .line 919
    .line 920
    const-wide v14, 0x66cfee6d654a358fL    # 1.736699569115551E187

    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 926
    .line 927
    .line 928
    :cond_38
    if-eqz v9, :cond_3a

    .line 929
    .line 930
    iget-boolean v0, v7, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 931
    .line 932
    iget-boolean v1, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 933
    .line 934
    if-eq v0, v1, :cond_3a

    .line 935
    .line 936
    iput-boolean v1, v7, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 937
    .line 938
    if-eqz v1, :cond_39

    .line 939
    .line 940
    const-string v0, "android.wallpaper.freeze"

    .line 941
    .line 942
    :goto_18
    move-object v1, v0

    .line 943
    goto :goto_19

    .line 944
    :cond_39
    const-string v0, "android.wallpaper.unfreeze"

    .line 945
    .line 946
    goto :goto_18

    .line 947
    :goto_19
    const/4 v3, 0x0

    .line 948
    const/4 v4, 0x0

    .line 949
    const/4 v2, 0x0

    .line 950
    const/4 v5, 0x0

    .line 951
    const/4 v6, 0x0

    .line 952
    move-object/from16 v0, p0

    .line 953
    .line 954
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 955
    .line 956
    .line 957
    :cond_3a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 958
    .line 959
    if-eqz v0, :cond_3c

    .line 960
    .line 961
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 962
    .line 963
    if-eqz v0, :cond_3c

    .line 964
    .line 965
    if-eqz v9, :cond_3b

    .line 966
    .line 967
    iget-boolean v1, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 968
    .line 969
    if-eqz v1, :cond_3b

    .line 970
    .line 971
    goto :goto_1a

    .line 972
    :cond_3b
    const/4 v11, 0x0

    .line 973
    :goto_1a
    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->onAdjustWallpaperWindows(Z)V

    .line 974
    .line 975
    .line 976
    :cond_3c
    const/4 v0, 0x0

    .line 977
    aget-boolean v0, v12, v0

    .line 978
    .line 979
    if-eqz v0, :cond_3d

    .line 980
    .line 981
    iget-object v0, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 982
    .line 983
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    iget-object v1, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 988
    .line 989
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 994
    .line 995
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v7

    .line 999
    const-wide v3, -0x775400407b09c9a8L    # -6.783856069054106E-267

    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    const/4 v5, 0x0

    .line 1005
    const/4 v6, 0x0

    .line 1006
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    .line 1008
    .line 1009
    :cond_3d
    return-void
.end method

.method public canScreenshotWallpaper()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public final canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v0, 0x0

    .line 5
    const-string v1, "WindowManager"

    if-nez p0, :cond_0

    .line 6
    const-string p0, "Attempted to take screenshot while display was off."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    const-string p0, "No visible wallpaper to screenshot"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "displayId="

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 14
    .line 15
    const-string/jumbo v2, "mWallpaperTarget="

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1, v0, v2}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "mLastWallpaperZoomOut="

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "mPrevWallpaperTarget="

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v1, "mFindResults"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "  mTopHideWhenLockedWallpaper="

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 76
    .line 77
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 87
    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v2, "    mTopHideWhenLockedWallpaper.Token="

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 99
    .line 100
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v2, "  mTopShowWhenLockedWallpaper="

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 123
    .line 124
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 125
    .line 126
    if-eqz v2, :cond_2

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v2, "    mTopShowWhenLockedWallpaper.Token="

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 137
    .line 138
    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 139
    .line 140
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    add-int/lit8 v1, v1, -0x1

    .line 152
    .line 153
    :goto_0
    if-ltz v1, :cond_4

    .line 154
    .line 155
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string/jumbo v4, "token "

    .line 169
    .line 170
    .line 171
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v4, ":"

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v3, "  canShowWhenLocked="

    .line 193
    .line 194
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-boolean v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mShowWhenLocked:Z

    .line 198
    .line 199
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 200
    .line 201
    .line 202
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    .line 203
    .line 204
    if-eqz v3, :cond_3

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v3, "  isForPrimaryDevice="

    .line 210
    .line 211
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isForPrimaryDevice()Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v3, "  canShowInCurrentDevice="

    .line 225
    .line 226
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->canShowInCurrentDevice()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 234
    .line 235
    .line 236
    :cond_3
    const-string/jumbo v3, "mWallpaperX"

    .line 237
    .line 238
    .line 239
    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 240
    .line 241
    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 242
    .line 243
    .line 244
    const-string/jumbo v3, "mWallpaperY"

    .line 245
    .line 246
    .line 247
    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 248
    .line 249
    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 250
    .line 251
    .line 252
    const-string/jumbo v3, "mWallpaperXStep"

    .line 253
    .line 254
    .line 255
    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 256
    .line 257
    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 258
    .line 259
    .line 260
    const-string/jumbo v3, "mWallpaperYStep"

    .line 261
    .line 262
    .line 263
    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 264
    .line 265
    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 266
    .line 267
    .line 268
    iget v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 269
    .line 270
    int-to-float v3, v3

    .line 271
    const-string/jumbo v4, "mWallpaperDisplayOffsetX"

    .line 272
    .line 273
    .line 274
    invoke-static {p1, v4, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 275
    .line 276
    .line 277
    iget v2, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 278
    .line 279
    int-to-float v2, v2

    .line 280
    const-string/jumbo v3, "mWallpaperDisplayOffsetY"

    .line 281
    .line 282
    .line 283
    invoke-static {p1, v3, v2}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 284
    .line 285
    .line 286
    add-int/lit8 v1, v1, -0x1

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_4
    return-void
.end method

.method public final getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_4

    .line 30
    .line 31
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 42
    .line 43
    iget-boolean p1, p1, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 p1, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 51
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 54
    .line 55
    if-nez p1, :cond_5

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 58
    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 63
    .line 64
    :goto_2
    if-nez p1, :cond_6

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_6
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_3
    return-object v0
.end method

.method public final getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    :goto_1
    if-ltz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 32
    .line 33
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 42
    .line 43
    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    cmpl-float v4, v4, v5

    .line 47
    .line 48
    if-lez v4, :cond_0

    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public final hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz v0, :cond_4

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    .line 39
    .line 40
    .line 41
    iget-boolean v3, v1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 46
    .line 47
    aget-boolean v2, v3, v2

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const/4 v5, 0x5

    .line 72
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 81
    .line 82
    const/4 v10, 0x0

    .line 83
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    const-wide v7, -0x48eb40cce662c01dL    # -2.3258049552014316E-43

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    return-void
.end method

.method public final isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 6
    .line 7
    if-gtz p0, :cond_0

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

.method public final isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

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

.method public final isWallpaperVisible()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 18
    .line 19
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final notifyDisplaySwitch(Z)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/wm/WallpaperWindowToken;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    sub-int/2addr v4, v1

    .line 25
    :goto_1
    if-ltz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    :try_start_0
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 45
    .line 46
    const-string v8, "android.wallpaper.displayswitch"

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    move v11, p1

    .line 53
    invoke-interface/range {v7 .. v13}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception v2

    .line 58
    const-string v5, "Failed to dispatch COMMAND_DISPLAY_SWITCH "

    .line 59
    .line 60
    const-string v6, "WindowManager"

    .line 61
    .line 62
    invoke-static {v5, v2, v6}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    move v2, v1

    .line 66
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return v2
.end method

.method public final screenshotWallpaperLocked(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    new-instance p0, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    iget p1, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 21
    .line 22
    neg-int p1, p1

    .line 23
    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 24
    .line 25
    neg-int v2, v2

    .line 26
    invoke-virtual {p0, p1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 39
    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-boolean v3, p1, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 49
    .line 50
    invoke-static {p1, p0, v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 56
    .line 57
    invoke-static {p1, p0, v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_1
    if-nez p0, :cond_3

    .line 62
    .line 63
    const-string p0, "WindowManager"

    .line 64
    .line 65
    const-string p1, "Failed to screenshot wallpaper"

    .line 66
    .line 67
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p1, p0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public final sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v1, :cond_1

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    add-int/lit8 v3, v3, -0x1

    .line 27
    .line 28
    move/from16 v11, p6

    .line 29
    .line 30
    :goto_1
    if-ltz v3, :cond_0

    .line 31
    .line 32
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 39
    .line 40
    :try_start_0
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 41
    .line 42
    move-object v5, p1

    .line 43
    move v6, p2

    .line 44
    move v7, p3

    .line 45
    move/from16 v8, p4

    .line 46
    .line 47
    move-object/from16 v9, p5

    .line 48
    .line 49
    move v10, v11

    .line 50
    invoke-interface/range {v4 .. v10}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    :catch_0
    add-int/lit8 v3, v3, -0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public setMaxWallpaperScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setMinWallpaperScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setShouldOffsetWallpaperCenter(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 2
    .line 3
    return-void
.end method

.method public final startRemoteWallpaperAnimation(Landroid/os/IBinder;ILandroid/view/IRemoteAnimationRunner;)Landroid/view/SurfaceControl;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    .line 14
    .line 15
    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v4, v2, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 26
    .line 27
    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    move v5, v4

    .line 32
    :goto_0
    iget-object v6, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-ge v5, v6, :cond_1

    .line 39
    .line 40
    iget-object v6, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/android/server/wm/RootDisplayArea;

    .line 47
    .line 48
    invoke-static {v6, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v5, 0x1

    .line 59
    if-ne v2, v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/server/wm/DisplayArea;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v2, v1

    .line 69
    :goto_1
    if-eqz v2, :cond_3

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;

    .line 81
    .line 82
    move-object v3, v1

    .line 83
    move-object v4, p0

    .line 84
    move-object v5, p1

    .line 85
    move-object v6, v2

    .line 86
    move v7, p2

    .line 87
    move-object v8, p3

    .line 88
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;-><init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;ILandroid/view/IRemoteAnimationRunner;)V

    .line 89
    .line 90
    .line 91
    new-instance v8, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-direct {v8, p0, p1}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;)V

    .line 94
    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/16 v7, 0x200

    .line 98
    .line 99
    move-object v3, v2

    .line 100
    move-object v4, v0

    .line 101
    move-object v5, v1

    .line 102
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getAnimationLeash()Landroid/view/SurfaceControl;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_3
    return-object v1
.end method

.method public final updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    int-to-float v5, v3

    .line 20
    int-to-float v6, v4

    .line 21
    div-float v7, v5, v6

    .line 22
    .line 23
    new-instance v8, Landroid/graphics/Point;

    .line 24
    .line 25
    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 26
    .line 27
    .line 28
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 29
    .line 30
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    const-string v11, "WindowManager"

    .line 39
    .line 40
    const/high16 v12, 0x3f800000    # 1.0f

    .line 41
    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v14, 0x1

    .line 44
    if-eqz v10, :cond_8

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperCropUtils:Lcom/android/server/wallpaper/WallpaperCropper$WallpaperCropUtils;

    .line 47
    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    const-string v0, "Update wallpaper offsets before the system is ready. Aborting"

    .line 51
    .line 52
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return v13

    .line 56
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    .line 57
    .line 58
    iget v4, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 59
    .line 60
    iget v10, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 61
    .line 62
    invoke-direct {v3, v4, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 63
    .line 64
    .line 65
    iget-object v4, v8, Lcom/android/server/wm/WallpaperWindowToken;->mCropHints:Landroid/util/SparseArray;

    .line 66
    .line 67
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 68
    .line 69
    if-lez v4, :cond_2

    .line 70
    .line 71
    iget v4, v3, Landroid/graphics/Point;->y:I

    .line 72
    .line 73
    if-gtz v4, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperCropUtils:Lcom/android/server/wallpaper/WallpaperCropper$WallpaperCropUtils;

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    .line 79
    .line 80
    .line 81
    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;

    .line 82
    .line 83
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v4, Landroid/graphics/Rect;

    .line 89
    .line 90
    iget v10, v3, Landroid/graphics/Point;->x:I

    .line 91
    .line 92
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 93
    .line 94
    invoke-direct {v4, v13, v13, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 99
    .line 100
    iget-object v4, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 101
    .line 102
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    int-to-float v3, v3

    .line 111
    int-to-float v10, v10

    .line 112
    div-float v11, v3, v10

    .line 113
    .line 114
    cmpl-float v11, v11, v7

    .line 115
    .line 116
    if-ltz v11, :cond_3

    .line 117
    .line 118
    move v11, v14

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move v11, v13

    .line 121
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    if-eqz v15, :cond_4

    .line 126
    .line 127
    move v6, v12

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    if-eqz v11, :cond_5

    .line 130
    .line 131
    div-float/2addr v6, v10

    .line 132
    iget v5, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 133
    .line 134
    div-float/2addr v6, v5

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    div-float/2addr v5, v3

    .line 137
    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 138
    .line 139
    div-float v6, v5, v6

    .line 140
    .line 141
    :goto_3
    if-eqz v11, :cond_6

    .line 142
    .line 143
    mul-float v5, v10, v7

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move v5, v3

    .line 147
    :goto_4
    if-eqz v11, :cond_7

    .line 148
    .line 149
    move v7, v10

    .line 150
    goto :goto_5

    .line 151
    :cond_7
    div-float v7, v3, v7

    .line 152
    .line 153
    :goto_5
    iget v11, v4, Landroid/graphics/Rect;->left:I

    .line 154
    .line 155
    neg-int v11, v11

    .line 156
    sub-float v15, v6, v12

    .line 157
    .line 158
    mul-float v16, v15, v5

    .line 159
    .line 160
    const/high16 v17, 0x40000000    # 2.0f

    .line 161
    .line 162
    div-float v12, v16, v17

    .line 163
    .line 164
    float-to-int v12, v12

    .line 165
    add-int/2addr v11, v12

    .line 166
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 167
    .line 168
    neg-int v4, v4

    .line 169
    mul-float/2addr v15, v7

    .line 170
    div-float v15, v15, v17

    .line 171
    .line 172
    float-to-int v12, v15

    .line 173
    add-int/2addr v4, v12

    .line 174
    sub-float/2addr v3, v5

    .line 175
    iget v5, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 176
    .line 177
    mul-float/2addr v3, v5

    .line 178
    float-to-int v3, v3

    .line 179
    sub-float/2addr v10, v7

    .line 180
    iget v5, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 181
    .line 182
    mul-float/2addr v10, v5

    .line 183
    float-to-int v5, v10

    .line 184
    goto :goto_6

    .line 185
    :cond_8
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 186
    .line 187
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 188
    .line 189
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    sub-int v3, v6, v3

    .line 194
    .line 195
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    sub-int v4, v6, v4

    .line 200
    .line 201
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 202
    .line 203
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 204
    .line 205
    and-int/lit16 v6, v6, 0x4000

    .line 206
    .line 207
    if-eqz v6, :cond_9

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-le v6, v14, :cond_9

    .line 214
    .line 215
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-le v6, v14, :cond_9

    .line 220
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v1, "Skip wallpaper offset with inconsistent orientation, bounds="

    .line 224
    .line 225
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v1, " frame="

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    return v13

    .line 247
    :cond_9
    move v5, v4

    .line 248
    move v4, v13

    .line 249
    move v11, v4

    .line 250
    const/high16 v6, 0x3f800000    # 1.0f

    .line 251
    .line 252
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    const/4 v10, 0x0

    .line 257
    if-eqz v7, :cond_a

    .line 258
    .line 259
    const/high16 v7, 0x3f800000    # 1.0f

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_a
    move v7, v10

    .line 263
    :goto_7
    iget v12, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 264
    .line 265
    cmpl-float v15, v12, v10

    .line 266
    .line 267
    if-ltz v15, :cond_b

    .line 268
    .line 269
    move v7, v12

    .line 270
    :cond_b
    iget v12, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 271
    .line 272
    cmpl-float v15, v12, v10

    .line 273
    .line 274
    const/high16 v16, -0x40800000    # -1.0f

    .line 275
    .line 276
    if-ltz v15, :cond_c

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_c
    move/from16 v12, v16

    .line 280
    .line 281
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    .line 282
    .line 283
    .line 284
    move-result v15

    .line 285
    iget-boolean v10, v0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 286
    .line 287
    iget-object v14, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 288
    .line 289
    if-eqz v10, :cond_d

    .line 290
    .line 291
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    if-eqz v10, :cond_e

    .line 296
    .line 297
    :cond_d
    move/from16 v24, v4

    .line 298
    .line 299
    move/from16 v25, v5

    .line 300
    .line 301
    move/from16 v23, v6

    .line 302
    .line 303
    move-object/from16 v18, v9

    .line 304
    .line 305
    move-object/from16 v21, v14

    .line 306
    .line 307
    goto/16 :goto_d

    .line 308
    .line 309
    :cond_e
    iget-object v10, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 310
    .line 311
    if-nez v10, :cond_13

    .line 312
    .line 313
    iget-boolean v10, v0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 314
    .line 315
    if-eqz v10, :cond_f

    .line 316
    .line 317
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    if-eqz v10, :cond_10

    .line 322
    .line 323
    :cond_f
    move/from16 v24, v4

    .line 324
    .line 325
    move/from16 v25, v5

    .line 326
    .line 327
    move/from16 v23, v6

    .line 328
    .line 329
    move-object/from16 v18, v9

    .line 330
    .line 331
    move-object/from16 v21, v14

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_10
    new-instance v10, Landroid/graphics/Point;

    .line 335
    .line 336
    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 337
    .line 338
    .line 339
    move-object/from16 v18, v9

    .line 340
    .line 341
    iget-object v9, v14, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    .line 342
    .line 343
    invoke-virtual {v9, v13}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->getPossibleDisplayInfos(I)Ljava/util/List;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    move-object/from16 v21, v14

    .line 348
    .line 349
    const/16 v20, 0x0

    .line 350
    .line 351
    :goto_9
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    if-ge v13, v14, :cond_12

    .line 356
    .line 357
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v14

    .line 361
    check-cast v14, Landroid/view/DisplayInfo;

    .line 362
    .line 363
    move-object/from16 v22, v9

    .line 364
    .line 365
    iget v9, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 366
    .line 367
    move/from16 v23, v6

    .line 368
    .line 369
    int-to-float v6, v9

    .line 370
    move/from16 v24, v4

    .line 371
    .line 372
    iget v4, v14, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 373
    .line 374
    div-float/2addr v6, v4

    .line 375
    iget v4, v14, Landroid/view/DisplayInfo;->type:I

    .line 376
    .line 377
    move/from16 v25, v5

    .line 378
    .line 379
    const/4 v5, 0x1

    .line 380
    if-ne v4, v5, :cond_11

    .line 381
    .line 382
    cmpl-float v4, v6, v20

    .line 383
    .line 384
    if-lez v4, :cond_11

    .line 385
    .line 386
    iget v4, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 387
    .line 388
    invoke-virtual {v10, v9, v4}, Landroid/graphics/Point;->set(II)V

    .line 389
    .line 390
    .line 391
    move/from16 v20, v6

    .line 392
    .line 393
    :cond_11
    add-int/lit8 v13, v13, 0x1

    .line 394
    .line 395
    move-object/from16 v9, v22

    .line 396
    .line 397
    move/from16 v6, v23

    .line 398
    .line 399
    move/from16 v4, v24

    .line 400
    .line 401
    move/from16 v5, v25

    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_12
    move/from16 v24, v4

    .line 405
    .line 406
    move/from16 v25, v5

    .line 407
    .line 408
    move/from16 v23, v6

    .line 409
    .line 410
    goto :goto_b

    .line 411
    :goto_a
    const/4 v10, 0x0

    .line 412
    :goto_b
    iput-object v10, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 413
    .line 414
    goto :goto_c

    .line 415
    :cond_13
    move/from16 v24, v4

    .line 416
    .line 417
    move/from16 v25, v5

    .line 418
    .line 419
    move/from16 v23, v6

    .line 420
    .line 421
    move-object/from16 v18, v9

    .line 422
    .line 423
    move-object/from16 v21, v14

    .line 424
    .line 425
    :goto_c
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 426
    .line 427
    if-nez v4, :cond_15

    .line 428
    .line 429
    :cond_14
    :goto_d
    const/4 v2, 0x0

    .line 430
    goto :goto_e

    .line 431
    :cond_15
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    iget-object v5, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 436
    .line 437
    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 438
    .line 439
    if-eq v5, v4, :cond_14

    .line 440
    .line 441
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    if-ge v5, v6, :cond_14

    .line 450
    .line 451
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    int-to-float v2, v2

    .line 456
    iget-object v5, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 457
    .line 458
    iget v6, v5, Landroid/graphics/Point;->y:I

    .line 459
    .line 460
    int-to-float v6, v6

    .line 461
    div-float/2addr v2, v6

    .line 462
    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 463
    .line 464
    int-to-float v5, v5

    .line 465
    mul-float/2addr v5, v2

    .line 466
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-eqz v15, :cond_16

    .line 471
    .line 472
    add-int/2addr v4, v2

    .line 473
    div-int/lit8 v4, v4, 0x2

    .line 474
    .line 475
    sub-int/2addr v2, v4

    .line 476
    goto :goto_e

    .line 477
    :cond_16
    sub-int/2addr v2, v4

    .line 478
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    div-int/lit8 v2, v2, 0x2

    .line 483
    .line 484
    :goto_e
    sub-int/2addr v3, v2

    .line 485
    const/high16 v4, 0x3f000000    # 0.5f

    .line 486
    .line 487
    if-lez v3, :cond_17

    .line 488
    .line 489
    int-to-float v3, v3

    .line 490
    mul-float/2addr v3, v7

    .line 491
    add-float/2addr v3, v4

    .line 492
    float-to-int v3, v3

    .line 493
    neg-int v3, v3

    .line 494
    goto :goto_f

    .line 495
    :cond_17
    const/4 v3, 0x0

    .line 496
    :goto_f
    iget v5, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 497
    .line 498
    const/high16 v6, -0x80000000

    .line 499
    .line 500
    if-eq v5, v6, :cond_18

    .line 501
    .line 502
    add-int/2addr v3, v5

    .line 503
    goto :goto_10

    .line 504
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    if-nez v5, :cond_19

    .line 509
    .line 510
    sub-int/2addr v3, v2

    .line 511
    :cond_19
    :goto_10
    int-to-float v2, v3

    .line 512
    int-to-float v3, v11

    .line 513
    iget v5, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 514
    .line 515
    mul-float/2addr v3, v5

    .line 516
    add-float/2addr v3, v2

    .line 517
    float-to-int v2, v3

    .line 518
    iget v3, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 519
    .line 520
    cmpl-float v3, v3, v7

    .line 521
    .line 522
    if-nez v3, :cond_1b

    .line 523
    .line 524
    iget v3, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 525
    .line 526
    cmpl-float v3, v3, v12

    .line 527
    .line 528
    if-eqz v3, :cond_1a

    .line 529
    .line 530
    goto :goto_11

    .line 531
    :cond_1a
    const/4 v3, 0x0

    .line 532
    goto :goto_12

    .line 533
    :cond_1b
    :goto_11
    iput v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 534
    .line 535
    iput v12, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 536
    .line 537
    const/4 v3, 0x1

    .line 538
    :goto_12
    iget v5, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 539
    .line 540
    const/4 v7, 0x0

    .line 541
    cmpl-float v9, v5, v7

    .line 542
    .line 543
    if-ltz v9, :cond_1c

    .line 544
    .line 545
    goto :goto_13

    .line 546
    :cond_1c
    move v5, v4

    .line 547
    :goto_13
    iget v9, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 548
    .line 549
    cmpl-float v7, v9, v7

    .line 550
    .line 551
    if-ltz v7, :cond_1d

    .line 552
    .line 553
    goto :goto_14

    .line 554
    :cond_1d
    move/from16 v9, v16

    .line 555
    .line 556
    :goto_14
    if-lez v25, :cond_1e

    .line 557
    .line 558
    move/from16 v7, v25

    .line 559
    .line 560
    int-to-float v7, v7

    .line 561
    mul-float/2addr v7, v5

    .line 562
    add-float/2addr v7, v4

    .line 563
    float-to-int v4, v7

    .line 564
    neg-int v4, v4

    .line 565
    goto :goto_15

    .line 566
    :cond_1e
    const/4 v4, 0x0

    .line 567
    :goto_15
    iget v7, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 568
    .line 569
    if-eq v7, v6, :cond_1f

    .line 570
    .line 571
    add-int/2addr v4, v7

    .line 572
    :cond_1f
    int-to-float v4, v4

    .line 573
    move/from16 v13, v24

    .line 574
    .line 575
    int-to-float v6, v13

    .line 576
    iget v7, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 577
    .line 578
    mul-float/2addr v6, v7

    .line 579
    add-float/2addr v6, v4

    .line 580
    float-to-int v4, v6

    .line 581
    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 582
    .line 583
    cmpl-float v6, v6, v5

    .line 584
    .line 585
    if-nez v6, :cond_20

    .line 586
    .line 587
    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 588
    .line 589
    cmpl-float v6, v6, v9

    .line 590
    .line 591
    if-eqz v6, :cond_21

    .line 592
    .line 593
    :cond_20
    iput v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 594
    .line 595
    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 596
    .line 597
    const/4 v3, 0x1

    .line 598
    :cond_21
    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 599
    .line 600
    iget v6, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 601
    .line 602
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    if-eqz v5, :cond_22

    .line 607
    .line 608
    iget v3, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 609
    .line 610
    iput v3, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 611
    .line 612
    const/4 v3, 0x1

    .line 613
    :cond_22
    iget-boolean v5, v1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    .line 614
    .line 615
    if-eqz v5, :cond_23

    .line 616
    .line 617
    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 618
    .line 619
    iget v6, v0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    .line 620
    .line 621
    iget v7, v0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 622
    .line 623
    const/high16 v8, 0x3f800000    # 1.0f

    .line 624
    .line 625
    sub-float v12, v8, v5

    .line 626
    .line 627
    invoke-static {v6, v7, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 628
    .line 629
    .line 630
    move-result v12

    .line 631
    goto :goto_16

    .line 632
    :cond_23
    const/high16 v8, 0x3f800000    # 1.0f

    .line 633
    .line 634
    move v12, v8

    .line 635
    :goto_16
    mul-float v12, v12, v23

    .line 636
    .line 637
    iget v5, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 638
    .line 639
    if-ne v5, v2, :cond_24

    .line 640
    .line 641
    iget v5, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 642
    .line 643
    if-ne v5, v4, :cond_24

    .line 644
    .line 645
    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 646
    .line 647
    invoke-static {v5, v12}, Ljava/lang/Float;->compare(FF)I

    .line 648
    .line 649
    .line 650
    move-result v5

    .line 651
    if-nez v5, :cond_24

    .line 652
    .line 653
    const/4 v13, 0x0

    .line 654
    goto :goto_17

    .line 655
    :cond_24
    iput v2, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 656
    .line 657
    iput v4, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 658
    .line 659
    iput v12, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 660
    .line 661
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 662
    .line 663
    .line 664
    const/4 v13, 0x1

    .line 665
    :goto_17
    if-eqz v3, :cond_2a

    .line 666
    .line 667
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 668
    .line 669
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 670
    .line 671
    and-int/lit8 v2, v2, 0x4

    .line 672
    .line 673
    if-eqz v2, :cond_2a

    .line 674
    .line 675
    if-eqz p2, :cond_25

    .line 676
    .line 677
    :try_start_0
    iput-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 678
    .line 679
    :cond_25
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 680
    .line 681
    iget v3, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 682
    .line 683
    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 684
    .line 685
    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 686
    .line 687
    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 688
    .line 689
    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 690
    .line 691
    move/from16 v8, p2

    .line 692
    .line 693
    invoke-interface/range {v2 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V

    .line 694
    .line 695
    .line 696
    if-eqz p2, :cond_2a

    .line 697
    .line 698
    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 699
    .line 700
    if-eqz v2, :cond_2a

    .line 701
    .line 702
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 703
    .line 704
    .line 705
    move-result-wide v2

    .line 706
    iget-wide v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 707
    .line 708
    const-wide/16 v6, 0x2710

    .line 709
    .line 710
    add-long/2addr v4, v6

    .line 711
    cmp-long v4, v4, v2

    .line 712
    .line 713
    if-gez v4, :cond_29

    .line 714
    .line 715
    const-wide/16 v4, 0x96

    .line 716
    .line 717
    const/4 v6, 0x1

    .line 718
    :try_start_1
    aget-boolean v7, v18, v6

    .line 719
    .line 720
    if-eqz v7, :cond_26

    .line 721
    .line 722
    sget-object v22, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 723
    .line 724
    const-wide v23, -0x5f25f808633bc7f4L    # -1.988085530651E-150

    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    const/16 v25, 0x0

    .line 730
    .line 731
    const/16 v26, 0x0

    .line 732
    .line 733
    const/16 v27, 0x0

    .line 734
    .line 735
    invoke-static/range {v22 .. v27}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    :cond_26
    move-object/from16 v6, v21

    .line 739
    .line 740
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 741
    .line 742
    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 743
    .line 744
    .line 745
    :catch_0
    const/4 v6, 0x1

    .line 746
    :try_start_2
    aget-boolean v7, v18, v6

    .line 747
    .line 748
    if-eqz v7, :cond_27

    .line 749
    .line 750
    sget-object v19, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 751
    .line 752
    const-wide v20, -0x52cdf6d55098c638L    # -5.533716568926851E-91

    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    const/16 v22, 0x0

    .line 758
    .line 759
    const/16 v23, 0x0

    .line 760
    .line 761
    const/16 v24, 0x0

    .line 762
    .line 763
    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 764
    .line 765
    .line 766
    :cond_27
    add-long/2addr v4, v2

    .line 767
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 768
    .line 769
    .line 770
    move-result-wide v6

    .line 771
    cmp-long v4, v4, v6

    .line 772
    .line 773
    if-gez v4, :cond_29

    .line 774
    .line 775
    const/4 v4, 0x1

    .line 776
    aget-boolean v4, v18, v4

    .line 777
    .line 778
    if-eqz v4, :cond_28

    .line 779
    .line 780
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 785
    .line 786
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v9

    .line 790
    const-wide v5, 0x3a45415bfc1334bdL    # 5.365594543687691E-28

    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    const/4 v7, 0x0

    .line 796
    const/4 v8, 0x0

    .line 797
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 798
    .line 799
    .line 800
    :cond_28
    iput-wide v2, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 801
    .line 802
    :cond_29
    const/4 v1, 0x0

    .line 803
    iput-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 804
    .line 805
    :catch_1
    :cond_2a
    return v13
.end method

.method public final updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    cmpl-float v3, v1, v2

    .line 33
    .line 34
    if-ltz v3, :cond_2

    .line 35
    .line 36
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 40
    .line 41
    cmpl-float v3, v1, v2

    .line 42
    .line 43
    if-ltz v3, :cond_3

    .line 44
    .line 45
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 46
    .line 47
    :cond_3
    :goto_0
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 48
    .line 49
    cmpl-float v3, v1, v2

    .line 50
    .line 51
    if-ltz v3, :cond_4

    .line 52
    .line 53
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 57
    .line 58
    cmpl-float v3, v1, v2

    .line 59
    .line 60
    if-ltz v3, :cond_5

    .line 61
    .line 62
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 63
    .line 64
    :cond_5
    :goto_1
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 65
    .line 66
    const/high16 v3, -0x80000000

    .line 67
    .line 68
    if-eq v1, v3, :cond_6

    .line 69
    .line 70
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_6
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 74
    .line 75
    if-eq v1, v3, :cond_7

    .line 76
    .line 77
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 78
    .line 79
    :cond_7
    :goto_2
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 80
    .line 81
    if-eq v1, v3, :cond_8

    .line 82
    .line 83
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_8
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 87
    .line 88
    if-eq v1, v3, :cond_9

    .line 89
    .line 90
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 91
    .line 92
    :cond_9
    :goto_3
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 93
    .line 94
    cmpl-float v3, v1, v2

    .line 95
    .line 96
    if-ltz v3, :cond_a

    .line 97
    .line 98
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_a
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 102
    .line 103
    cmpl-float v3, v1, v2

    .line 104
    .line 105
    if-ltz v3, :cond_b

    .line 106
    .line 107
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 108
    .line 109
    :cond_b
    :goto_4
    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 110
    .line 111
    cmpl-float v1, v0, v2

    .line 112
    .line 113
    if-ltz v1, :cond_c

    .line 114
    .line 115
    iput v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_c
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 119
    .line 120
    cmpl-float v0, p1, v2

    .line 121
    .line 122
    if-ltz v0, :cond_d

    .line 123
    .line 124
    iput p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 125
    .line 126
    :cond_d
    :goto_5
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final wallpaperTransitionReady()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    const/16 v2, 0x27

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-ltz v0, :cond_4

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    .line 23
    .line 24
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    if-eq v0, v5, :cond_0

    .line 34
    .line 35
    move v5, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v5, v1

    .line 38
    :goto_1
    if-nez v0, :cond_1

    .line 39
    .line 40
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 41
    .line 42
    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 43
    .line 44
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 48
    .line 49
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-wide/16 v7, 0x1f4

    .line 54
    .line 55
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 59
    .line 60
    aget-boolean v0, v0, v1

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 65
    .line 66
    int-to-long v0, v0

    .line 67
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    const-wide v7, -0x4af7cbdd60b2c42bL    # -3.158724139617855E-53

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const/4 v9, 0x1

    .line 83
    const/4 v10, 0x0

    .line 84
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    move v1, v4

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    move v5, v1

    .line 93
    :goto_2
    if-eqz v1, :cond_5

    .line 94
    .line 95
    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 96
    .line 97
    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 98
    .line 99
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    return v5
.end method
