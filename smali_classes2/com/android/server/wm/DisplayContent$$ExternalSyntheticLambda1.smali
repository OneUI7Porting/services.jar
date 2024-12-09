.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda37(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 37
    .line 38
    iput-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 39
    .line 40
    :cond_3
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 42
    .line 43
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 52
    .line 53
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 54
    .line 55
    .line 56
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 57
    .line 58
    iput p0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 59
    .line 60
    :cond_4
    :goto_0
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda40(Ljava/lang/Object;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    move-object/from16 v7, p1

    .line 6
    .line 7
    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 14
    .line 15
    iget-boolean v2, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 39
    .line 40
    aget-boolean v2, v2, v8

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 49
    .line 50
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v14

    .line 54
    const/4 v13, 0x0

    .line 55
    const-wide v10, -0x7848fa1e0b63cdfbL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 65
    .line 66
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 67
    .line 68
    or-int/lit8 v2, v2, 0x4

    .line 69
    .line 70
    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 71
    .line 72
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 73
    .line 74
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 75
    .line 76
    iput-boolean v2, v7, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v10, 0x2

    .line 80
    const/4 v11, 0x3

    .line 81
    const/4 v12, 0x0

    .line 82
    if-nez v2, :cond_30

    .line 83
    .line 84
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v3, -0x1

    .line 89
    if-eqz v2, :cond_6

    .line 90
    .line 91
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    move v4, v8

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    move v4, v9

    .line 115
    :goto_0
    if-nez v4, :cond_4

    .line 116
    .line 117
    iget-object v5, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 118
    .line 119
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 120
    .line 121
    if-eq v5, v3, :cond_5

    .line 122
    .line 123
    :cond_4
    if-eqz v4, :cond_6

    .line 124
    .line 125
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_6

    .line 138
    .line 139
    invoke-virtual {v7, v11}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_6

    .line 144
    .line 145
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget-object v5, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 150
    .line 151
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 152
    .line 153
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 154
    .line 155
    if-gtz v6, :cond_6

    .line 156
    .line 157
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 158
    .line 159
    if-gtz v6, :cond_6

    .line 160
    .line 161
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 162
    .line 163
    iget v13, v4, Landroid/view/DisplayInfo;->appWidth:I

    .line 164
    .line 165
    if-lt v6, v13, :cond_6

    .line 166
    .line 167
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 168
    .line 169
    iget v4, v4, Landroid/view/DisplayInfo;->appHeight:I

    .line 170
    .line 171
    if-lt v5, v4, :cond_6

    .line 172
    .line 173
    iput-object v7, v0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 174
    .line 175
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 176
    .line 177
    iput-boolean v8, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 178
    .line 179
    :cond_6
    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 180
    .line 181
    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 182
    .line 183
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    sget-object v13, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    .line 193
    .line 194
    aget-boolean v14, v13, v9

    .line 195
    .line 196
    if-eqz v14, :cond_7

    .line 197
    .line 198
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    iget-boolean v15, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 203
    .line 204
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    .line 205
    .line 206
    .line 207
    move-result v16

    .line 208
    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 209
    .line 210
    iget-wide v8, v11, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 211
    .line 212
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 213
    .line 214
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    filled-new-array {v14, v11, v15, v3, v8}, [Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v22

    .line 234
    const/16 v20, 0x1fc

    .line 235
    .line 236
    const/16 v21, 0x0

    .line 237
    .line 238
    const-wide v18, -0x6ad75c6e4209c9faL    # -9.593013447397445E-207

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :cond_7
    if-nez v6, :cond_9

    .line 247
    .line 248
    :cond_8
    const/4 v1, 0x0

    .line 249
    goto/16 :goto_b

    .line 250
    .line 251
    :cond_9
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 252
    .line 253
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 254
    .line 255
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 256
    .line 257
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    invoke-interface {v3, v6}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldNotTopDisplay(I)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_b

    .line 266
    .line 267
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-nez v1, :cond_a

    .line 272
    .line 273
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 274
    .line 275
    if-eqz v1, :cond_8

    .line 276
    .line 277
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 278
    .line 279
    if-eqz v3, :cond_8

    .line 280
    .line 281
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_8

    .line 286
    .line 287
    :cond_a
    const/4 v1, 0x1

    .line 288
    goto/16 :goto_b

    .line 289
    .line 290
    :cond_b
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    const-wide/16 v8, 0x0

    .line 295
    .line 296
    if-ne v3, v10, :cond_c

    .line 297
    .line 298
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 299
    .line 300
    iget-wide v14, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 301
    .line 302
    cmp-long v3, v14, v8

    .line 303
    .line 304
    if-ltz v3, :cond_c

    .line 305
    .line 306
    iget-wide v14, v1, Lcom/android/server/wm/RootWindowContainer;->mDeXUserActivityTimeout:J

    .line 307
    .line 308
    cmp-long v3, v14, v8

    .line 309
    .line 310
    if-gez v3, :cond_c

    .line 311
    .line 312
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 313
    .line 314
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 315
    .line 316
    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    .line 318
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_d

    .line 323
    .line 324
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 325
    .line 326
    iget-wide v14, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 327
    .line 328
    iput-wide v14, v1, Lcom/android/server/wm/RootWindowContainer;->mDeXUserActivityTimeout:J

    .line 329
    .line 330
    goto :goto_2

    .line 331
    :cond_c
    if-nez v4, :cond_d

    .line 332
    .line 333
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 334
    .line 335
    iget-wide v14, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 336
    .line 337
    cmp-long v3, v14, v8

    .line 338
    .line 339
    if-ltz v3, :cond_d

    .line 340
    .line 341
    iget-wide v10, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 342
    .line 343
    cmp-long v3, v10, v8

    .line 344
    .line 345
    if-gez v3, :cond_d

    .line 346
    .line 347
    iput-wide v14, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 348
    .line 349
    const/4 v3, 0x0

    .line 350
    aget-boolean v6, v13, v3

    .line 351
    .line 352
    if-eqz v6, :cond_d

    .line 353
    .line 354
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 355
    .line 356
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v22

    .line 364
    const/16 v20, 0x1

    .line 365
    .line 366
    const/16 v21, 0x0

    .line 367
    .line 368
    const-wide v18, 0x77a4fb15be5c3accL    # 2.1648519881517276E268

    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_d
    :goto_2
    if-nez v4, :cond_e

    .line 377
    .line 378
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 379
    .line 380
    iget-wide v10, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 381
    .line 382
    cmp-long v3, v10, v8

    .line 383
    .line 384
    if-ltz v3, :cond_e

    .line 385
    .line 386
    iget-wide v14, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    .line 387
    .line 388
    cmp-long v3, v14, v8

    .line 389
    .line 390
    if-gez v3, :cond_e

    .line 391
    .line 392
    iput-wide v10, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    .line 393
    .line 394
    :cond_e
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 395
    .line 396
    if-nez v4, :cond_f

    .line 397
    .line 398
    iget-wide v8, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 399
    .line 400
    const-wide/16 v10, 0x146a

    .line 401
    .line 402
    cmp-long v6, v8, v10

    .line 403
    .line 404
    if-nez v6, :cond_f

    .line 405
    .line 406
    const-wide/16 v8, -0x1

    .line 407
    .line 408
    iput-wide v8, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 409
    .line 410
    iput-wide v8, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 411
    .line 412
    :cond_f
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-nez v3, :cond_11

    .line 417
    .line 418
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 419
    .line 420
    if-eqz v3, :cond_10

    .line 421
    .line 422
    iget-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 423
    .line 424
    if-eqz v6, :cond_10

    .line 425
    .line 426
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    if-eqz v3, :cond_10

    .line 431
    .line 432
    goto :goto_3

    .line 433
    :cond_10
    const/4 v3, 0x0

    .line 434
    goto/16 :goto_a

    .line 435
    .line 436
    :cond_11
    :goto_3
    if-nez v4, :cond_13

    .line 437
    .line 438
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 439
    .line 440
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 441
    .line 442
    cmpl-float v3, v3, v12

    .line 443
    .line 444
    if-ltz v3, :cond_13

    .line 445
    .line 446
    iget v3, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 447
    .line 448
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-eqz v3, :cond_13

    .line 453
    .line 454
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    const/4 v4, 0x2

    .line 459
    if-ne v3, v4, :cond_12

    .line 460
    .line 461
    goto :goto_4

    .line 462
    :cond_12
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 463
    .line 464
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 465
    .line 466
    iput v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 467
    .line 468
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 469
    .line 470
    iput-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverridePackage:Ljava/lang/String;

    .line 471
    .line 472
    :cond_13
    :goto_4
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    if-eqz v3, :cond_16

    .line 477
    .line 478
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 479
    .line 480
    if-eqz v4, :cond_16

    .line 481
    .line 482
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 483
    .line 484
    if-eqz v3, :cond_14

    .line 485
    .line 486
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    const/4 v4, 0x5

    .line 491
    if-ne v3, v4, :cond_14

    .line 492
    .line 493
    :goto_5
    const/4 v3, 0x1

    .line 494
    goto :goto_6

    .line 495
    :cond_14
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 496
    .line 497
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 498
    .line 499
    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    .line 500
    .line 501
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    if-eqz v3, :cond_15

    .line 506
    .line 507
    goto :goto_5

    .line 508
    :goto_6
    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 509
    .line 510
    :cond_15
    :goto_7
    const/4 v3, 0x1

    .line 511
    goto :goto_9

    .line 512
    :cond_16
    if-eqz v3, :cond_18

    .line 513
    .line 514
    iget-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 515
    .line 516
    if-eqz v4, :cond_15

    .line 517
    .line 518
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 519
    .line 520
    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    .line 521
    .line 522
    and-int/lit16 v3, v3, 0x200

    .line 523
    .line 524
    if-eqz v3, :cond_17

    .line 525
    .line 526
    goto :goto_8

    .line 527
    :cond_17
    if-eqz v5, :cond_18

    .line 528
    .line 529
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 530
    .line 531
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 532
    .line 533
    const/16 v4, 0x7d9

    .line 534
    .line 535
    if-ne v3, v4, :cond_18

    .line 536
    .line 537
    :goto_8
    goto :goto_7

    .line 538
    :cond_18
    const/4 v3, 0x0

    .line 539
    :goto_9
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 540
    .line 541
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 542
    .line 543
    const/high16 v5, 0x10000

    .line 544
    .line 545
    and-int/2addr v4, v5

    .line 546
    if-eqz v4, :cond_19

    .line 547
    .line 548
    const/4 v4, 0x1

    .line 549
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 550
    .line 551
    :cond_19
    :goto_a
    move v1, v3

    .line 552
    :goto_b
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 553
    .line 554
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 555
    .line 556
    if-nez v3, :cond_1b

    .line 557
    .line 558
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 559
    .line 560
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 561
    .line 562
    if-eqz v3, :cond_1a

    .line 563
    .line 564
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 565
    .line 566
    invoke-virtual {v3}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    if-ne v4, v3, :cond_1a

    .line 571
    .line 572
    goto :goto_c

    .line 573
    :cond_1a
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 574
    .line 575
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 576
    .line 577
    or-int/2addr v1, v4

    .line 578
    iput-boolean v1, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 579
    .line 580
    :cond_1b
    :goto_c
    iget-boolean v1, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 581
    .line 582
    if-eqz v1, :cond_30

    .line 583
    .line 584
    if-eqz v2, :cond_30

    .line 585
    .line 586
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 587
    .line 588
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 589
    .line 590
    and-int/lit16 v1, v1, 0x80

    .line 591
    .line 592
    if-eqz v1, :cond_1c

    .line 593
    .line 594
    iput-object v7, v0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 595
    .line 596
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 597
    .line 598
    if-eqz v1, :cond_1d

    .line 599
    .line 600
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 601
    .line 602
    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    .line 603
    .line 604
    const v2, 0x8000

    .line 605
    .line 606
    .line 607
    and-int/2addr v1, v2

    .line 608
    if-eqz v1, :cond_1d

    .line 609
    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    const-string v2, "Ignore FLAG_KEEP_SCREEN_ON for "

    .line 613
    .line 614
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 618
    .line 619
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 620
    .line 621
    const-string v3, "SPEG"

    .line 622
    .line 623
    invoke-static {v1, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    const/4 v1, 0x0

    .line 627
    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 628
    .line 629
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 630
    .line 631
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 632
    .line 633
    and-int/lit16 v2, v2, -0x81

    .line 634
    .line 635
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 636
    .line 637
    goto :goto_d

    .line 638
    :cond_1c
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 639
    .line 640
    if-ne v7, v1, :cond_1d

    .line 641
    .line 642
    const/4 v1, 0x0

    .line 643
    aget-boolean v2, v13, v1

    .line 644
    .line 645
    if-eqz v2, :cond_1d

    .line 646
    .line 647
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    const/16 v2, 0xa

    .line 652
    .line 653
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 662
    .line 663
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v22

    .line 667
    const/16 v21, 0x0

    .line 668
    .line 669
    const-wide v18, 0x57353cd059d832daL    # 1.2768588890467934E112

    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    const/16 v20, 0x0

    .line 675
    .line 676
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    :cond_1d
    :goto_d
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 680
    .line 681
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 682
    .line 683
    const/16 v2, 0x7d8

    .line 684
    .line 685
    if-eq v1, v2, :cond_1e

    .line 686
    .line 687
    const/16 v2, 0x7da

    .line 688
    .line 689
    if-eq v1, v2, :cond_1e

    .line 690
    .line 691
    const/16 v2, 0x7f8

    .line 692
    .line 693
    if-ne v1, v2, :cond_1f

    .line 694
    .line 695
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 696
    .line 697
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 698
    .line 699
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 700
    .line 701
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-eqz v1, :cond_1f

    .line 706
    .line 707
    :cond_1e
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 708
    .line 709
    const/4 v2, 0x1

    .line 710
    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 711
    .line 712
    :cond_1f
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 713
    .line 714
    iget v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 715
    .line 716
    cmpl-float v2, v2, v12

    .line 717
    .line 718
    if-nez v2, :cond_20

    .line 719
    .line 720
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 721
    .line 722
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 723
    .line 724
    cmpl-float v3, v2, v12

    .line 725
    .line 726
    if-eqz v3, :cond_20

    .line 727
    .line 728
    iput v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 729
    .line 730
    :cond_20
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 731
    .line 732
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 733
    .line 734
    iget-boolean v4, v3, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 735
    .line 736
    or-int/2addr v2, v4

    .line 737
    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 738
    .line 739
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    .line 740
    .line 741
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isHdrConversionEnabled()Z

    .line 742
    .line 743
    .line 744
    move-result v3

    .line 745
    const/4 v4, 0x1

    .line 746
    xor-int/2addr v3, v4

    .line 747
    or-int/2addr v2, v3

    .line 748
    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    .line 749
    .line 750
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 751
    .line 752
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 753
    .line 754
    invoke-virtual {v1, v7}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    const/4 v3, 0x2

    .line 763
    if-eq v2, v3, :cond_21

    .line 764
    .line 765
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 766
    .line 767
    iget v3, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 768
    .line 769
    if-nez v3, :cond_21

    .line 770
    .line 771
    if-eqz v1, :cond_21

    .line 772
    .line 773
    iput v1, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 774
    .line 775
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 776
    .line 777
    if-eqz v2, :cond_21

    .line 778
    .line 779
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 780
    .line 781
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 782
    .line 783
    const/high16 v3, -0x40800000    # -1.0f

    .line 784
    .line 785
    const/4 v4, 0x0

    .line 786
    invoke-virtual {v2, v7, v1, v3, v4}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    .line 787
    .line 788
    .line 789
    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 790
    .line 791
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 792
    .line 793
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    if-eqz v2, :cond_23

    .line 801
    .line 802
    :cond_22
    move v2, v12

    .line 803
    goto :goto_e

    .line 804
    :cond_23
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    .line 805
    .line 806
    if-eqz v2, :cond_24

    .line 807
    .line 808
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 809
    .line 810
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 811
    .line 812
    cmpl-float v2, v2, v12

    .line 813
    .line 814
    if-nez v2, :cond_24

    .line 815
    .line 816
    invoke-virtual {v1, v7}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    cmpl-float v3, v2, v12

    .line 821
    .line 822
    if-lez v3, :cond_24

    .line 823
    .line 824
    goto :goto_e

    .line 825
    :cond_24
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 826
    .line 827
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 828
    .line 829
    cmpl-float v4, v3, v12

    .line 830
    .line 831
    if-lez v4, :cond_25

    .line 832
    .line 833
    move v2, v3

    .line 834
    goto :goto_e

    .line 835
    :cond_25
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 836
    .line 837
    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 838
    .line 839
    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    .line 840
    .line 841
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    check-cast v1, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 846
    .line 847
    if-eqz v1, :cond_22

    .line 848
    .line 849
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_IGNORE_RESTRICTED_RANGE:Z

    .line 850
    .line 851
    if-eqz v2, :cond_26

    .line 852
    .line 853
    invoke-static {v7}, Lcom/android/server/wm/RefreshRatePolicy;->shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z

    .line 854
    .line 855
    .line 856
    move-result v2

    .line 857
    if-nez v2, :cond_22

    .line 858
    .line 859
    :cond_26
    iget v2, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 860
    .line 861
    :goto_e
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 862
    .line 863
    iget v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 864
    .line 865
    cmpl-float v3, v3, v12

    .line 866
    .line 867
    if-nez v3, :cond_27

    .line 868
    .line 869
    cmpl-float v3, v2, v12

    .line 870
    .line 871
    if-eqz v3, :cond_27

    .line 872
    .line 873
    iput v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 874
    .line 875
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 876
    .line 877
    if-eqz v1, :cond_27

    .line 878
    .line 879
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 880
    .line 881
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 882
    .line 883
    const/4 v3, 0x1

    .line 884
    const/4 v4, -0x1

    .line 885
    invoke-virtual {v1, v7, v4, v2, v3}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    .line 886
    .line 887
    .line 888
    :cond_27
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 889
    .line 890
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 891
    .line 892
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    if-eqz v2, :cond_29

    .line 900
    .line 901
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 902
    .line 903
    if-eqz v2, :cond_28

    .line 904
    .line 905
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 906
    .line 907
    .line 908
    move-result-object v2

    .line 909
    invoke-virtual {v2}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    .line 910
    .line 911
    .line 912
    move-result v2

    .line 913
    if-eqz v2, :cond_28

    .line 914
    .line 915
    const/4 v2, 0x1

    .line 916
    const/4 v3, 0x3

    .line 917
    invoke-virtual {v7, v3, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 918
    .line 919
    .line 920
    move-result v4

    .line 921
    if-nez v4, :cond_29

    .line 922
    .line 923
    :cond_28
    :goto_f
    move v2, v12

    .line 924
    goto/16 :goto_10

    .line 925
    .line 926
    :cond_29
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    .line 927
    .line 928
    if-eqz v2, :cond_2a

    .line 929
    .line 930
    invoke-virtual {v1, v7}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    .line 931
    .line 932
    .line 933
    move-result v2

    .line 934
    cmpl-float v3, v2, v12

    .line 935
    .line 936
    if-lez v3, :cond_2a

    .line 937
    .line 938
    goto/16 :goto_10

    .line 939
    .line 940
    :cond_2a
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 941
    .line 942
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 943
    .line 944
    cmpl-float v4, v3, v12

    .line 945
    .line 946
    if-lez v4, :cond_2b

    .line 947
    .line 948
    move v2, v3

    .line 949
    goto/16 :goto_10

    .line 950
    .line 951
    :cond_2b
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 952
    .line 953
    iget-object v3, v1, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 954
    .line 955
    iget-object v3, v3, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    .line 956
    .line 957
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v3

    .line 961
    check-cast v3, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 962
    .line 963
    if-eqz v3, :cond_2d

    .line 964
    .line 965
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_IGNORE_RESTRICTED_RANGE:Z

    .line 966
    .line 967
    if-eqz v4, :cond_2c

    .line 968
    .line 969
    invoke-static {v7}, Lcom/android/server/wm/RefreshRatePolicy;->shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z

    .line 970
    .line 971
    .line 972
    move-result v4

    .line 973
    if-nez v4, :cond_2d

    .line 974
    .line 975
    :cond_2c
    iget v2, v3, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 976
    .line 977
    goto :goto_10

    .line 978
    :cond_2d
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    .line 979
    .line 980
    iget-object v4, v1, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 981
    .line 982
    if-eqz v3, :cond_2e

    .line 983
    .line 984
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 985
    .line 986
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 987
    .line 988
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 989
    .line 990
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    move-result v3

    .line 994
    if-eqz v3, :cond_2e

    .line 995
    .line 996
    const/4 v3, 0x1

    .line 997
    iput-boolean v3, v1, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    .line 998
    .line 999
    goto :goto_f

    .line 1000
    :cond_2e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    .line 1001
    .line 1002
    if-eqz v3, :cond_2f

    .line 1003
    .line 1004
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1005
    .line 1006
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 1007
    .line 1008
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 1009
    .line 1010
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v3

    .line 1014
    if-eqz v3, :cond_2f

    .line 1015
    .line 1016
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1017
    .line 1018
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1019
    .line 1020
    and-int/lit16 v3, v3, 0x80

    .line 1021
    .line 1022
    if-eqz v3, :cond_2f

    .line 1023
    .line 1024
    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 1025
    .line 1026
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 1027
    .line 1028
    .line 1029
    move-result v2

    .line 1030
    goto :goto_10

    .line 1031
    :cond_2f
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    .line 1032
    .line 1033
    if-eqz v3, :cond_28

    .line 1034
    .line 1035
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v3

    .line 1039
    if-eqz v3, :cond_28

    .line 1040
    .line 1041
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1042
    .line 1043
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 1044
    .line 1045
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 1046
    .line 1047
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v2

    .line 1051
    if-eqz v2, :cond_28

    .line 1052
    .line 1053
    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 1054
    .line 1055
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 1056
    .line 1057
    .line 1058
    move-result v2

    .line 1059
    :goto_10
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 1060
    .line 1061
    iget v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    .line 1062
    .line 1063
    cmpl-float v3, v3, v12

    .line 1064
    .line 1065
    if-nez v3, :cond_30

    .line 1066
    .line 1067
    cmpl-float v3, v2, v12

    .line 1068
    .line 1069
    if-eqz v3, :cond_30

    .line 1070
    .line 1071
    iput v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    .line 1072
    .line 1073
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 1074
    .line 1075
    if-eqz v1, :cond_30

    .line 1076
    .line 1077
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1078
    .line 1079
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 1080
    .line 1081
    const/4 v3, 0x2

    .line 1082
    const/4 v4, -0x1

    .line 1083
    invoke-virtual {v1, v7, v4, v2, v3}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    .line 1084
    .line 1085
    .line 1086
    :cond_30
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    .line 1087
    .line 1088
    .line 1089
    move-result v1

    .line 1090
    const-string v8, "WindowManager"

    .line 1091
    .line 1092
    if-nez v1, :cond_31

    .line 1093
    .line 1094
    const/4 v1, 0x0

    .line 1095
    goto/16 :goto_12

    .line 1096
    .line 1097
    :cond_31
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 1098
    .line 1099
    .line 1100
    move-result v1

    .line 1101
    if-eqz v1, :cond_32

    .line 1102
    .line 1103
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1104
    .line 1105
    iget-boolean v1, v1, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 1106
    .line 1107
    if-eqz v1, :cond_32

    .line 1108
    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    const-string v2, "Force report resize for pop-over w="

    .line 1112
    .line 1113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .line 1125
    .line 1126
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1127
    .line 1128
    const/4 v2, 0x1

    .line 1129
    iput-boolean v2, v1, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 1130
    .line 1131
    :cond_32
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1132
    .line 1133
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1134
    .line 1135
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 1136
    .line 1137
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 1138
    .line 1139
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->canPlayMoveAnimation()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v1

    .line 1143
    if-eqz v1, :cond_35

    .line 1144
    .line 1145
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 1146
    .line 1147
    if-eqz v1, :cond_33

    .line 1148
    .line 1149
    goto :goto_11

    .line 1150
    :cond_33
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 1151
    .line 1152
    const/4 v2, 0x1

    .line 1153
    aget-boolean v1, v1, v2

    .line 1154
    .line 1155
    if-eqz v1, :cond_34

    .line 1156
    .line 1157
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1162
    .line 1163
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v22

    .line 1167
    const/16 v20, 0x0

    .line 1168
    .line 1169
    const/16 v21, 0x0

    .line 1170
    .line 1171
    const-wide v18, 0x57501fc39eb53344L    # 3.877691942187174E112

    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    .line 1178
    .line 1179
    :cond_34
    new-instance v1, Landroid/graphics/Point;

    .line 1180
    .line 1181
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1182
    .line 1183
    .line 1184
    new-instance v2, Landroid/graphics/Point;

    .line 1185
    .line 1186
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1187
    .line 1188
    .line 1189
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1190
    .line 1191
    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 1192
    .line 1193
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 1194
    .line 1195
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 1196
    .line 1197
    invoke-virtual {v7, v4, v3, v1}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v7, v9, v10, v2}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 1201
    .line 1202
    .line 1203
    new-instance v11, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 1204
    .line 1205
    new-instance v13, Lcom/android/server/wm/WindowState$MoveAnimationSpec;

    .line 1206
    .line 1207
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 1208
    .line 1209
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 1210
    .line 1211
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 1212
    .line 1213
    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 1214
    .line 1215
    move-object v1, v13

    .line 1216
    move-object v2, v7

    .line 1217
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIII)V

    .line 1218
    .line 1219
    .line 1220
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1221
    .line 1222
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 1223
    .line 1224
    invoke-direct {v11, v13, v1}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1232
    .line 1233
    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1234
    .line 1235
    const/16 v3, 0x10

    .line 1236
    .line 1237
    invoke-virtual {v7, v1, v11, v2, v3}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 1238
    .line 1239
    .line 1240
    :cond_35
    :goto_11
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1241
    .line 1242
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1243
    .line 1244
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 1245
    .line 1246
    .line 1247
    move-result v1

    .line 1248
    if-eqz v1, :cond_36

    .line 1249
    .line 1250
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1251
    .line 1252
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1253
    .line 1254
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 1255
    .line 1256
    .line 1257
    move-result v2

    .line 1258
    filled-new-array {v2}, [I

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1263
    .line 1264
    .line 1265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 1266
    .line 1267
    .line 1268
    move-result v3

    .line 1269
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedWithCallingUid(I[I)V

    .line 1270
    .line 1271
    .line 1272
    :cond_36
    :try_start_0
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 1273
    .line 1274
    invoke-interface {v1, v9, v10}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    .line 1276
    .line 1277
    :catch_0
    const/4 v1, 0x0

    .line 1278
    iput-boolean v1, v7, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 1279
    .line 1280
    :goto_12
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1281
    .line 1282
    iput-boolean v1, v2, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 1283
    .line 1284
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1285
    .line 1286
    if-eqz v1, :cond_40

    .line 1287
    .line 1288
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1289
    .line 1290
    .line 1291
    move-result v2

    .line 1292
    if-eqz v2, :cond_40

    .line 1293
    .line 1294
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 1295
    .line 1296
    .line 1297
    const/4 v2, 0x1

    .line 1298
    iput-boolean v2, v7, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    .line 1299
    .line 1300
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 1301
    .line 1302
    if-eqz v2, :cond_37

    .line 1303
    .line 1304
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    .line 1305
    .line 1306
    if-nez v2, :cond_37

    .line 1307
    .line 1308
    goto/16 :goto_15

    .line 1309
    .line 1310
    :cond_37
    iget-wide v2, v1, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 1311
    .line 1312
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1313
    .line 1314
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 1315
    .line 1316
    int-to-long v4, v4

    .line 1317
    cmp-long v2, v2, v4

    .line 1318
    .line 1319
    if-eqz v2, :cond_39

    .line 1320
    .line 1321
    iput-wide v4, v1, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 1322
    .line 1323
    const/4 v2, 0x0

    .line 1324
    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 1325
    .line 1326
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v3

    .line 1330
    if-eqz v3, :cond_38

    .line 1331
    .line 1332
    const/4 v2, 0x1

    .line 1333
    goto :goto_13

    .line 1334
    :cond_38
    const/4 v2, 0x0

    .line 1335
    :goto_13
    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 1336
    .line 1337
    :cond_39
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1338
    .line 1339
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 1340
    .line 1341
    if-nez v3, :cond_40

    .line 1342
    .line 1343
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    .line 1344
    .line 1345
    .line 1346
    move-result v3

    .line 1347
    if-eqz v3, :cond_40

    .line 1348
    .line 1349
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1350
    .line 1351
    invoke-virtual {v3}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    .line 1352
    .line 1353
    .line 1354
    move-result v4

    .line 1355
    const-string v5, "ActivityTaskManager"

    .line 1356
    .line 1357
    if-eqz v4, :cond_3a

    .line 1358
    .line 1359
    const/4 v4, 0x1

    .line 1360
    const/4 v6, 0x3

    .line 1361
    invoke-virtual {v1, v6, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v9

    .line 1365
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1366
    .line 1367
    const-string v6, "Eval win "

    .line 1368
    .line 1369
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    .line 1375
    const-string v6, ": isDrawn="

    .line 1376
    .line 1377
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 1381
    .line 1382
    .line 1383
    move-result v6

    .line 1384
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    const-string v6, ", isAnimationSet="

    .line 1388
    .line 1389
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v4

    .line 1399
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 1403
    .line 1404
    .line 1405
    move-result v4

    .line 1406
    if-nez v4, :cond_3a

    .line 1407
    .line 1408
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1409
    .line 1410
    const-string v6, "Not displayed: s="

    .line 1411
    .line 1412
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    iget-object v6, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1416
    .line 1417
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1418
    .line 1419
    .line 1420
    const-string v6, " pv="

    .line 1421
    .line 1422
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 1426
    .line 1427
    .line 1428
    move-result v6

    .line 1429
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1430
    .line 1431
    .line 1432
    const-string v6, " mDrawState="

    .line 1433
    .line 1434
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v2

    .line 1441
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    .line 1444
    const-string v2, " ph="

    .line 1445
    .line 1446
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 1450
    .line 1451
    .line 1452
    move-result v2

    .line 1453
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1454
    .line 1455
    .line 1456
    const-string v2, " th="

    .line 1457
    .line 1458
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    .line 1461
    iget-boolean v2, v1, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 1462
    .line 1463
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1464
    .line 1465
    .line 1466
    const-string v2, " a="

    .line 1467
    .line 1468
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v2

    .line 1478
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .line 1480
    .line 1481
    :cond_3a
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 1482
    .line 1483
    if-eq v7, v2, :cond_3f

    .line 1484
    .line 1485
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1486
    .line 1487
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 1488
    .line 1489
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1490
    .line 1491
    if-eqz v4, :cond_40

    .line 1492
    .line 1493
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    .line 1494
    .line 1495
    if-eqz v6, :cond_3b

    .line 1496
    .line 1497
    iget-boolean v6, v7, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 1498
    .line 1499
    if-nez v6, :cond_40

    .line 1500
    .line 1501
    :cond_3b
    iget v6, v7, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 1502
    .line 1503
    if-nez v6, :cond_40

    .line 1504
    .line 1505
    if-eqz v2, :cond_3c

    .line 1506
    .line 1507
    invoke-virtual {v2, v4}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1508
    .line 1509
    .line 1510
    move-result v2

    .line 1511
    if-eqz v2, :cond_3c

    .line 1512
    .line 1513
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1514
    .line 1515
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1516
    .line 1517
    const/4 v6, 0x1

    .line 1518
    if-eq v4, v6, :cond_3c

    .line 1519
    .line 1520
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1521
    .line 1522
    cmpl-float v2, v2, v12

    .line 1523
    .line 1524
    if-nez v2, :cond_3c

    .line 1525
    .line 1526
    goto :goto_15

    .line 1527
    :cond_3c
    const/4 v2, 0x0

    .line 1528
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v4

    .line 1532
    if-eq v4, v7, :cond_3d

    .line 1533
    .line 1534
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 1535
    .line 1536
    const/4 v4, 0x1

    .line 1537
    add-int/2addr v2, v4

    .line 1538
    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 1539
    .line 1540
    goto :goto_14

    .line 1541
    :cond_3d
    const/4 v4, 0x1

    .line 1542
    :goto_14
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 1543
    .line 1544
    .line 1545
    move-result v2

    .line 1546
    if-eqz v2, :cond_40

    .line 1547
    .line 1548
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 1549
    .line 1550
    add-int/2addr v2, v4

    .line 1551
    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 1552
    .line 1553
    invoke-virtual {v3}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    .line 1554
    .line 1555
    .line 1556
    move-result v2

    .line 1557
    if-eqz v2, :cond_3e

    .line 1558
    .line 1559
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1560
    .line 1561
    const-string/jumbo v3, "tokenMayBeDrawn: "

    .line 1562
    .line 1563
    .line 1564
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1568
    .line 1569
    .line 1570
    const-string v3, " w="

    .line 1571
    .line 1572
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1576
    .line 1577
    .line 1578
    const-string v3, " numInteresting="

    .line 1579
    .line 1580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    .line 1582
    .line 1583
    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 1584
    .line 1585
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1586
    .line 1587
    .line 1588
    const-string v3, " freezingScreen="

    .line 1589
    .line 1590
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    .line 1592
    .line 1593
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    .line 1594
    .line 1595
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1596
    .line 1597
    .line 1598
    const-string v3, " mAppFreezing="

    .line 1599
    .line 1600
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    .line 1602
    .line 1603
    iget-boolean v3, v7, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 1604
    .line 1605
    invoke-static {v5, v2, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1606
    .line 1607
    .line 1608
    :cond_3e
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 1609
    .line 1610
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    .line 1611
    .line 1612
    .line 1613
    move-result v2

    .line 1614
    if-nez v2, :cond_40

    .line 1615
    .line 1616
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 1617
    .line 1618
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1619
    .line 1620
    .line 1621
    goto :goto_15

    .line 1622
    :cond_3f
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1623
    .line 1624
    if-eqz v0, :cond_40

    .line 1625
    .line 1626
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 1627
    .line 1628
    .line 1629
    move-result v0

    .line 1630
    if-eqz v0, :cond_40

    .line 1631
    .line 1632
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1633
    .line 1634
    const/4 v2, 0x1

    .line 1635
    iput-boolean v2, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    .line 1636
    .line 1637
    :cond_40
    :goto_15
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1638
    .line 1639
    iget-boolean v0, v0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    .line 1640
    .line 1641
    iget-boolean v2, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 1642
    .line 1643
    if-eqz v2, :cond_41

    .line 1644
    .line 1645
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v2

    .line 1649
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 1650
    .line 1651
    iget v3, v7, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1652
    .line 1653
    if-ne v2, v3, :cond_41

    .line 1654
    .line 1655
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 1656
    .line 1657
    .line 1658
    move-result v2

    .line 1659
    if-eqz v2, :cond_42

    .line 1660
    .line 1661
    :cond_41
    if-nez v0, :cond_42

    .line 1662
    .line 1663
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 1664
    .line 1665
    .line 1666
    move-result v2

    .line 1667
    if-eqz v2, :cond_58

    .line 1668
    .line 1669
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1670
    .line 1671
    iget-boolean v2, v2, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 1672
    .line 1673
    if-eqz v2, :cond_58

    .line 1674
    .line 1675
    :cond_42
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1676
    .line 1677
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1678
    .line 1679
    iget-boolean v4, v3, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 1680
    .line 1681
    iget-boolean v5, v3, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 1682
    .line 1683
    or-int/2addr v4, v5

    .line 1684
    iput-boolean v4, v3, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 1685
    .line 1686
    iget-boolean v4, v3, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 1687
    .line 1688
    invoke-virtual {v3}, Lcom/android/server/wm/WindowFrames;->didFrameSizeChange()Z

    .line 1689
    .line 1690
    .line 1691
    move-result v5

    .line 1692
    or-int/2addr v4, v5

    .line 1693
    iput-boolean v4, v3, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 1694
    .line 1695
    iget-boolean v3, v3, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 1696
    .line 1697
    if-nez v3, :cond_44

    .line 1698
    .line 1699
    if-eqz v4, :cond_43

    .line 1700
    .line 1701
    goto :goto_16

    .line 1702
    :cond_43
    const/4 v3, 0x0

    .line 1703
    goto :goto_17

    .line 1704
    :cond_44
    :goto_16
    const/4 v3, 0x1

    .line 1705
    :goto_17
    iget-boolean v4, v7, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 1706
    .line 1707
    if-nez v4, :cond_45

    .line 1708
    .line 1709
    iget-boolean v4, v7, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 1710
    .line 1711
    if-nez v4, :cond_45

    .line 1712
    .line 1713
    const/4 v4, 0x1

    .line 1714
    goto :goto_18

    .line 1715
    :cond_45
    const/4 v4, 0x0

    .line 1716
    :goto_18
    iget-boolean v5, v7, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 1717
    .line 1718
    if-nez v5, :cond_46

    .line 1719
    .line 1720
    iget-boolean v5, v7, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 1721
    .line 1722
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    .line 1723
    .line 1724
    .line 1725
    move-result v6

    .line 1726
    if-eq v5, v6, :cond_46

    .line 1727
    .line 1728
    const/4 v5, 0x1

    .line 1729
    goto :goto_19

    .line 1730
    :cond_46
    const/4 v5, 0x0

    .line 1731
    :goto_19
    iget-boolean v6, v7, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 1732
    .line 1733
    if-eqz v6, :cond_47

    .line 1734
    .line 1735
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v6

    .line 1739
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1740
    .line 1741
    iget-object v9, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1742
    .line 1743
    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 1744
    .line 1745
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 1746
    .line 1747
    .line 1748
    move-result v6

    .line 1749
    const/4 v9, 0x1

    .line 1750
    xor-int/2addr v6, v9

    .line 1751
    if-eqz v6, :cond_47

    .line 1752
    .line 1753
    const/4 v6, 0x1

    .line 1754
    goto :goto_1a

    .line 1755
    :cond_47
    const/4 v6, 0x0

    .line 1756
    :goto_1a
    if-nez v3, :cond_49

    .line 1757
    .line 1758
    if-nez v4, :cond_49

    .line 1759
    .line 1760
    if-nez v5, :cond_49

    .line 1761
    .line 1762
    if-eqz v6, :cond_48

    .line 1763
    .line 1764
    goto :goto_1b

    .line 1765
    :cond_48
    const/4 v6, 0x0

    .line 1766
    goto :goto_1c

    .line 1767
    :cond_49
    :goto_1b
    const/4 v6, 0x1

    .line 1768
    :goto_1c
    if-nez v6, :cond_4a

    .line 1769
    .line 1770
    iget-boolean v9, v7, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 1771
    .line 1772
    if-nez v9, :cond_4a

    .line 1773
    .line 1774
    iget v9, v7, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 1775
    .line 1776
    if-gtz v9, :cond_4a

    .line 1777
    .line 1778
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 1779
    .line 1780
    check-cast v9, Ljava/util/ArrayList;

    .line 1781
    .line 1782
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1783
    .line 1784
    .line 1785
    move-result v9

    .line 1786
    if-eqz v9, :cond_4a

    .line 1787
    .line 1788
    const/4 v9, 0x1

    .line 1789
    iput-boolean v9, v7, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 1790
    .line 1791
    :cond_4a
    if-nez v6, :cond_4d

    .line 1792
    .line 1793
    if-nez v0, :cond_4d

    .line 1794
    .line 1795
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    .line 1796
    .line 1797
    .line 1798
    move-result v6

    .line 1799
    if-eqz v6, :cond_4b

    .line 1800
    .line 1801
    goto :goto_1d

    .line 1802
    :cond_4b
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 1803
    .line 1804
    .line 1805
    move-result v0

    .line 1806
    if-eqz v0, :cond_58

    .line 1807
    .line 1808
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 1809
    .line 1810
    .line 1811
    move-result v0

    .line 1812
    if-eqz v0, :cond_58

    .line 1813
    .line 1814
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 1815
    .line 1816
    const/4 v3, 0x1

    .line 1817
    aget-boolean v0, v0, v3

    .line 1818
    .line 1819
    if-eqz v0, :cond_4c

    .line 1820
    .line 1821
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v0

    .line 1825
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1826
    .line 1827
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v2

    .line 1831
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1832
    .line 1833
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v13

    .line 1837
    const-wide v9, -0x259c86401fa2c660L    # -2.6366875818304025E127

    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    const/4 v11, 0x0

    .line 1843
    const/4 v12, 0x0

    .line 1844
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1845
    .line 1846
    .line 1847
    :cond_4c
    const/4 v0, 0x0

    .line 1848
    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1849
    .line 1850
    .line 1851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1852
    .line 1853
    .line 1854
    move-result-wide v2

    .line 1855
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1856
    .line 1857
    iget-wide v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 1858
    .line 1859
    sub-long/2addr v2, v4

    .line 1860
    long-to-int v0, v2

    .line 1861
    iput v0, v7, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1862
    .line 1863
    goto/16 :goto_1f

    .line 1864
    .line 1865
    :cond_4d
    :goto_1d
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    .line 1866
    .line 1867
    const/4 v9, 0x1

    .line 1868
    aget-boolean v10, v6, v9

    .line 1869
    .line 1870
    if-eqz v10, :cond_4e

    .line 1871
    .line 1872
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v17

    .line 1876
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1877
    .line 1878
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1879
    .line 1880
    const-string v11, "forceReportingResized="

    .line 1881
    .line 1882
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1883
    .line 1884
    .line 1885
    iget-boolean v11, v9, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 1886
    .line 1887
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1888
    .line 1889
    .line 1890
    const-string v11, " insetsChanged="

    .line 1891
    .line 1892
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    .line 1894
    .line 1895
    iget-boolean v9, v9, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    .line 1896
    .line 1897
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1898
    .line 1899
    .line 1900
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v9

    .line 1904
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v18

    .line 1908
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    .line 1909
    .line 1910
    .line 1911
    move-result v9

    .line 1912
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1913
    .line 1914
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v19

    .line 1918
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v20

    .line 1922
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v21

    .line 1926
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v22

    .line 1930
    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v15

    .line 1934
    const/16 v13, 0xff0

    .line 1935
    .line 1936
    const/4 v14, 0x0

    .line 1937
    const-wide v11, -0x4f84b1b83b33c791L    # -3.7730774575619675E-75

    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1943
    .line 1944
    .line 1945
    :cond_4e
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->consumeInsetsChange()V

    .line 1946
    .line 1947
    .line 1948
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1949
    .line 1950
    const/4 v9, 0x0

    .line 1951
    iput-boolean v9, v0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 1952
    .line 1953
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1954
    .line 1955
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 1956
    .line 1957
    .line 1958
    if-nez v4, :cond_4f

    .line 1959
    .line 1960
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 1961
    .line 1962
    .line 1963
    move-result v0

    .line 1964
    if-nez v0, :cond_4f

    .line 1965
    .line 1966
    if-eqz v5, :cond_56

    .line 1967
    .line 1968
    :cond_4f
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 1969
    .line 1970
    .line 1971
    move-result v0

    .line 1972
    if-eqz v0, :cond_56

    .line 1973
    .line 1974
    const/4 v0, 0x1

    .line 1975
    iput v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1976
    .line 1977
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1978
    .line 1979
    if-eqz v0, :cond_50

    .line 1980
    .line 1981
    const/4 v2, 0x0

    .line 1982
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 1983
    .line 1984
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    .line 1985
    .line 1986
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1987
    .line 1988
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1989
    .line 1990
    const/4 v4, 0x3

    .line 1991
    if-ne v3, v4, :cond_56

    .line 1992
    .line 1993
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1994
    .line 1995
    if-eqz v0, :cond_56

    .line 1996
    .line 1997
    iput-boolean v2, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    .line 1998
    .line 1999
    goto/16 :goto_1e

    .line 2000
    .line 2001
    :cond_50
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_WAIT_TO_HANDLE_RESIZING_FROM_CLIENT:Z

    .line 2002
    .line 2003
    if-eqz v2, :cond_56

    .line 2004
    .line 2005
    if-eqz v3, :cond_56

    .line 2006
    .line 2007
    if-nez v0, :cond_56

    .line 2008
    .line 2009
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2010
    .line 2011
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 2012
    .line 2013
    .line 2014
    move-result-object v0

    .line 2015
    if-nez v0, :cond_56

    .line 2016
    .line 2017
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2018
    .line 2019
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v0

    .line 2023
    if-eqz v0, :cond_51

    .line 2024
    .line 2025
    goto :goto_1e

    .line 2026
    :cond_51
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2027
    .line 2028
    if-eqz v0, :cond_52

    .line 2029
    .line 2030
    goto :goto_1e

    .line 2031
    :cond_52
    iget v0, v7, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 2032
    .line 2033
    if-nez v0, :cond_53

    .line 2034
    .line 2035
    goto :goto_1e

    .line 2036
    :cond_53
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v0

    .line 2040
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v0

    .line 2044
    if-eqz v0, :cond_54

    .line 2045
    .line 2046
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2047
    .line 2048
    iget-object v0, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 2049
    .line 2050
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 2051
    .line 2052
    .line 2053
    move-result v0

    .line 2054
    if-eqz v0, :cond_54

    .line 2055
    .line 2056
    goto :goto_1e

    .line 2057
    :cond_54
    iget-boolean v0, v7, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2058
    .line 2059
    if-nez v0, :cond_56

    .line 2060
    .line 2061
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 2062
    .line 2063
    .line 2064
    move-result v0

    .line 2065
    if-eqz v0, :cond_56

    .line 2066
    .line 2067
    iget-boolean v0, v7, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    .line 2068
    .line 2069
    if-eqz v0, :cond_55

    .line 2070
    .line 2071
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v0

    .line 2075
    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    .line 2076
    .line 2077
    .line 2078
    const/4 v0, 0x2

    .line 2079
    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    .line 2080
    .line 2081
    .line 2082
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2083
    .line 2084
    const-string/jumbo v2, "updateResizingWindowIfNeeded, Start waiting to handle resizing w="

    .line 2085
    .line 2086
    .line 2087
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2088
    .line 2089
    .line 2090
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2091
    .line 2092
    .line 2093
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v0

    .line 2097
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    .line 2099
    .line 2100
    const/4 v0, 0x1

    .line 2101
    iput-boolean v0, v7, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    .line 2102
    .line 2103
    new-instance v0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    .line 2104
    .line 2105
    const/4 v2, 0x2

    .line 2106
    invoke-direct {v0, v7, v2}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;I)V

    .line 2107
    .line 2108
    .line 2109
    const/4 v2, 0x2

    .line 2110
    invoke-virtual {v7, v2, v0}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(ILjava/util/function/Consumer;)V

    .line 2111
    .line 2112
    .line 2113
    :cond_56
    :goto_1e
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2114
    .line 2115
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 2116
    .line 2117
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2118
    .line 2119
    .line 2120
    move-result v0

    .line 2121
    if-nez v0, :cond_58

    .line 2122
    .line 2123
    const/4 v0, 0x1

    .line 2124
    aget-boolean v0, v6, v0

    .line 2125
    .line 2126
    if-eqz v0, :cond_57

    .line 2127
    .line 2128
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2129
    .line 2130
    .line 2131
    move-result-object v0

    .line 2132
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2133
    .line 2134
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v13

    .line 2138
    const-wide v9, -0x77db5563b0d2c405L

    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    const/4 v11, 0x0

    .line 2144
    const/4 v12, 0x0

    .line 2145
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2146
    .line 2147
    .line 2148
    :cond_57
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2149
    .line 2150
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 2151
    .line 2152
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    .line 2154
    .line 2155
    :cond_58
    :goto_1f
    if-nez v1, :cond_59

    .line 2156
    .line 2157
    iget-boolean v0, v7, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 2158
    .line 2159
    if-eqz v0, :cond_5a

    .line 2160
    .line 2161
    :cond_59
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->updateLetterboxDirectionIfNeeded()V

    .line 2162
    .line 2163
    .line 2164
    :cond_5a
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda41(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 8
    .line 9
    sget-object v2, Lcom/android/server/wm/DeviceStateController$DeviceState;->FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 10
    .line 11
    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 12
    .line 13
    sget-object v4, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    if-eq p1, v4, :cond_0

    .line 18
    .line 19
    if-ne p1, v3, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mShouldRequestTransitionOnDisplaySwitch:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-eq p1, v4, :cond_2

    .line 26
    .line 27
    if-eq p1, v3, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mShouldRequestTransitionOnDisplaySwitch:Z

    .line 31
    .line 32
    :cond_2
    :goto_0
    iput-object p1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation$FoldController;->foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceState;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0

    .line 53
    :cond_3
    :goto_1
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda46(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 32
    .line 33
    or-int/lit8 p1, p1, 0x8

    .line 34
    .line 35
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 36
    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 17
    .line 18
    iget v1, v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda46(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda41(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda37(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 37
    .line 38
    move-object/from16 v1, p1

    .line 39
    .line 40
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 53
    .line 54
    move-object/from16 v1, p1

    .line 55
    .line 56
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v2, 0x1

    .line 69
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 70
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 76
    .line 77
    iget-wide v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 78
    .line 79
    sub-long/2addr v2, v4

    .line 80
    long-to-int v0, v2

    .line 81
    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "Force clearing orientation change: "

    .line 86
    .line 87
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "WindowManager"

    .line 98
    .line 99
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void

    .line 103
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 104
    .line 105
    move-object/from16 v1, p1

    .line 106
    .line 107
    check-cast v1, Lcom/android/server/wm/DisplayArea;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 124
    .line 125
    iget v2, v1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 138
    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    const/4 v0, 0x0

    .line 145
    :goto_1
    if-eqz v0, :cond_3

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_2
    return-void

    .line 151
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 152
    .line 153
    move-object/from16 v1, p1

    .line 154
    .line 155
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 161
    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_5

    .line 170
    .line 171
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 172
    .line 173
    if-eqz v2, :cond_5

    .line 174
    .line 175
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 176
    .line 177
    if-eqz v2, :cond_9

    .line 178
    .line 179
    :cond_5
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    if-eqz v2, :cond_6

    .line 183
    .line 184
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 185
    .line 186
    iput-boolean v3, v2, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 187
    .line 188
    :cond_6
    const/4 v2, 0x1

    .line 189
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 190
    .line 191
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 192
    .line 193
    iget v4, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 194
    .line 195
    const/4 v5, -0x1

    .line 196
    if-eq v4, v5, :cond_7

    .line 197
    .line 198
    move v4, v2

    .line 199
    goto :goto_3

    .line 200
    :cond_7
    move v4, v3

    .line 201
    :goto_3
    xor-int/2addr v2, v4

    .line 202
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 206
    .line 207
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 208
    .line 209
    .line 210
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 211
    .line 212
    iput v4, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 213
    .line 214
    if-eqz v2, :cond_9

    .line 215
    .line 216
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 217
    .line 218
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 219
    .line 220
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_8

    .line 225
    .line 226
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 227
    .line 228
    iget-object v4, v2, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 229
    .line 230
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 231
    .line 232
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 236
    .line 237
    iget-object v4, v2, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 238
    .line 239
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 240
    .line 241
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 252
    .line 253
    .line 254
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 255
    .line 256
    iput-boolean v3, v0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 257
    .line 258
    :cond_9
    :goto_4
    return-void

    .line 259
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 260
    .line 261
    move-object/from16 v1, p1

    .line 262
    .line 263
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 264
    .line 265
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 266
    .line 267
    iget v2, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 268
    .line 269
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 272
    .line 273
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 274
    .line 275
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 276
    .line 277
    const/16 v4, 0x7d5

    .line 278
    .line 279
    if-ne v3, v4, :cond_a

    .line 280
    .line 281
    iget v3, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 282
    .line 283
    if-ne v3, v2, :cond_a

    .line 284
    .line 285
    const/16 v2, 0x34

    .line 286
    .line 287
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-nez v3, :cond_a

    .line 292
    .line 293
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 298
    .line 299
    iget-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 300
    .line 301
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 302
    .line 303
    .line 304
    :cond_a
    return-void

    .line 305
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda40(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :pswitch_9
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 310
    .line 311
    move-object/from16 v1, p1

    .line 312
    .line 313
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 314
    .line 315
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 316
    .line 317
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 329
    .line 330
    iget-object v6, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 331
    .line 332
    const/16 v7, 0x7e3

    .line 333
    .line 334
    if-ne v5, v7, :cond_b

    .line 335
    .line 336
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 337
    .line 338
    iget v5, v5, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 339
    .line 340
    invoke-virtual {v2, v5}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    iput v5, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 345
    .line 346
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    const/4 v8, 0x1

    .line 351
    const/4 v10, 0x3

    .line 352
    if-eqz v5, :cond_c

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_c
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 356
    .line 357
    if-nez v5, :cond_f

    .line 358
    .line 359
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 360
    .line 361
    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    iget-boolean v11, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 366
    .line 367
    if-nez v11, :cond_e

    .line 368
    .line 369
    iget-boolean v11, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 370
    .line 371
    if-eqz v11, :cond_d

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_d
    const/4 v11, 0x0

    .line 375
    goto :goto_6

    .line 376
    :cond_e
    :goto_5
    move v11, v8

    .line 377
    :goto_6
    if-eqz v5, :cond_11

    .line 378
    .line 379
    if-nez v11, :cond_11

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_f
    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 383
    .line 384
    if-eqz v11, :cond_11

    .line 385
    .line 386
    iget-boolean v11, v11, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 387
    .line 388
    if-eqz v11, :cond_11

    .line 389
    .line 390
    iget-boolean v11, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 391
    .line 392
    if-eqz v11, :cond_11

    .line 393
    .line 394
    iget-boolean v11, v5, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 395
    .line 396
    if-nez v11, :cond_11

    .line 397
    .line 398
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-nez v5, :cond_11

    .line 403
    .line 404
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 405
    .line 406
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 407
    .line 408
    if-ne v5, v10, :cond_10

    .line 409
    .line 410
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 411
    .line 412
    instance-of v5, v5, Lcom/android/server/wm/SnapshotStartingData;

    .line 413
    .line 414
    if-nez v5, :cond_11

    .line 415
    .line 416
    :cond_10
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    if-nez v5, :cond_11

    .line 421
    .line 422
    move v5, v8

    .line 423
    goto :goto_9

    .line 424
    :cond_11
    :goto_8
    const/4 v5, 0x0

    .line 425
    :goto_9
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 426
    .line 427
    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 428
    .line 429
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 430
    .line 431
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 432
    .line 433
    iget v12, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 434
    .line 435
    const/16 v13, 0x6e

    .line 436
    .line 437
    if-ne v12, v13, :cond_12

    .line 438
    .line 439
    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 440
    .line 441
    const/high16 v13, 0x200000

    .line 442
    .line 443
    and-int/2addr v12, v13

    .line 444
    if-eqz v12, :cond_12

    .line 445
    .line 446
    iget-wide v12, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 447
    .line 448
    const-wide/16 v14, 0x0

    .line 449
    .line 450
    cmp-long v12, v12, v14

    .line 451
    .line 452
    if-gez v12, :cond_12

    .line 453
    .line 454
    const-wide/16 v12, 0x146a

    .line 455
    .line 456
    iput-wide v12, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 457
    .line 458
    iput-wide v14, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 459
    .line 460
    :cond_12
    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 461
    .line 462
    if-nez v12, :cond_13

    .line 463
    .line 464
    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 465
    .line 466
    const/high16 v13, 0x10000

    .line 467
    .line 468
    and-int/2addr v12, v13

    .line 469
    if-eqz v12, :cond_13

    .line 470
    .line 471
    iput-object v1, v11, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 472
    .line 473
    :cond_13
    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 474
    .line 475
    const/4 v13, 0x2

    .line 476
    if-eqz v12, :cond_1a

    .line 477
    .line 478
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 479
    .line 480
    .line 481
    move-result-object v14

    .line 482
    iget v15, v14, Lcom/samsung/android/cover/CoverState;->type:I

    .line 483
    .line 484
    packed-switch v15, :pswitch_data_1

    .line 485
    .line 486
    .line 487
    goto/16 :goto_e

    .line 488
    .line 489
    :pswitch_a
    iget-boolean v14, v14, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 490
    .line 491
    xor-int/2addr v14, v8

    .line 492
    if-eqz v14, :cond_1a

    .line 493
    .line 494
    iget-object v14, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 495
    .line 496
    if-nez v14, :cond_16

    .line 497
    .line 498
    iget-object v14, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 499
    .line 500
    invoke-virtual {v14}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 501
    .line 502
    .line 503
    move-result v14

    .line 504
    iget-boolean v15, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 505
    .line 506
    if-nez v15, :cond_15

    .line 507
    .line 508
    iget-boolean v15, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 509
    .line 510
    if-eqz v15, :cond_14

    .line 511
    .line 512
    goto :goto_a

    .line 513
    :cond_14
    const/4 v15, 0x0

    .line 514
    goto :goto_b

    .line 515
    :cond_15
    :goto_a
    move v15, v8

    .line 516
    :goto_b
    if-eqz v14, :cond_1a

    .line 517
    .line 518
    if-nez v15, :cond_1a

    .line 519
    .line 520
    goto :goto_c

    .line 521
    :cond_16
    iget-object v14, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 522
    .line 523
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 524
    .line 525
    .line 526
    move-result-object v14

    .line 527
    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 528
    .line 529
    if-ne v14, v15, :cond_1a

    .line 530
    .line 531
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 532
    .line 533
    .line 534
    move-result-object v14

    .line 535
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    .line 536
    .line 537
    .line 538
    move-result v14

    .line 539
    if-nez v14, :cond_1a

    .line 540
    .line 541
    :goto_c
    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 542
    .line 543
    if-nez v14, :cond_1a

    .line 544
    .line 545
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    .line 546
    .line 547
    .line 548
    move-result v14

    .line 549
    if-eqz v14, :cond_1a

    .line 550
    .line 551
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 552
    .line 553
    .line 554
    move-result v15

    .line 555
    if-eqz v15, :cond_1a

    .line 556
    .line 557
    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 558
    .line 559
    if-eqz v15, :cond_19

    .line 560
    .line 561
    iget-object v15, v15, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 562
    .line 563
    if-ne v14, v8, :cond_17

    .line 564
    .line 565
    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 566
    .line 567
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    goto :goto_d

    .line 571
    :cond_17
    if-ne v14, v13, :cond_18

    .line 572
    .line 573
    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    .line 574
    .line 575
    if-eqz v14, :cond_19

    .line 576
    .line 577
    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    .line 578
    .line 579
    if-nez v14, :cond_19

    .line 580
    .line 581
    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 582
    .line 583
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    goto :goto_d

    .line 587
    :cond_18
    if-eqz v15, :cond_19

    .line 588
    .line 589
    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 590
    .line 591
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    :cond_19
    :goto_d
    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 595
    .line 596
    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    .line 597
    .line 598
    .line 599
    move-result v14

    .line 600
    if-eqz v14, :cond_1a

    .line 601
    .line 602
    iput-object v1, v12, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 603
    .line 604
    :cond_1a
    :goto_e
    iget-object v14, v11, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 605
    .line 606
    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 607
    .line 608
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 609
    .line 610
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    .line 614
    .line 615
    if-eqz v15, :cond_1b

    .line 616
    .line 617
    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 618
    .line 619
    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 620
    .line 621
    const/16 v9, 0xa2c

    .line 622
    .line 623
    if-ne v15, v9, :cond_1b

    .line 624
    .line 625
    move v9, v8

    .line 626
    goto :goto_f

    .line 627
    :cond_1b
    const/4 v9, 0x0

    .line 628
    :goto_f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 629
    .line 630
    .line 631
    move-result-object v15

    .line 632
    if-eqz v15, :cond_1c

    .line 633
    .line 634
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 635
    .line 636
    .line 637
    move-result v16

    .line 638
    if-eqz v16, :cond_1c

    .line 639
    .line 640
    goto :goto_10

    .line 641
    :cond_1c
    if-eqz v9, :cond_29

    .line 642
    .line 643
    :goto_10
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 644
    .line 645
    .line 646
    move-result-object v13

    .line 647
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 648
    .line 649
    .line 650
    move-result-object v10

    .line 651
    if-eqz v10, :cond_29

    .line 652
    .line 653
    iget-boolean v7, v10, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 654
    .line 655
    if-eqz v7, :cond_29

    .line 656
    .line 657
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 658
    .line 659
    .line 660
    move-result v7

    .line 661
    if-eqz v7, :cond_1d

    .line 662
    .line 663
    goto/16 :goto_15

    .line 664
    .line 665
    :cond_1d
    iget-object v7, v14, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 666
    .line 667
    if-eqz v9, :cond_1e

    .line 668
    .line 669
    iget-object v8, v10, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 670
    .line 671
    iget-object v8, v8, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 672
    .line 673
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 674
    .line 675
    iget v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 676
    .line 677
    invoke-virtual {v8, v10}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    .line 678
    .line 679
    .line 680
    move-result v8

    .line 681
    if-eqz v8, :cond_1e

    .line 682
    .line 683
    goto :goto_11

    .line 684
    :cond_1e
    if-eqz v9, :cond_1f

    .line 685
    .line 686
    iget-object v8, v14, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 687
    .line 688
    if-eqz v8, :cond_1f

    .line 689
    .line 690
    goto :goto_11

    .line 691
    :cond_1f
    iget-boolean v8, v14, Lcom/android/server/wm/FreeformController;->mBlockToAddForceHideFreeformTasks:Z

    .line 692
    .line 693
    if-eqz v8, :cond_20

    .line 694
    .line 695
    if-eqz v13, :cond_20

    .line 696
    .line 697
    iget-object v8, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 698
    .line 699
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v8

    .line 703
    if-nez v8, :cond_20

    .line 704
    .line 705
    goto/16 :goto_15

    .line 706
    .line 707
    :cond_20
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 708
    .line 709
    if-eqz v8, :cond_21

    .line 710
    .line 711
    if-eqz v13, :cond_21

    .line 712
    .line 713
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 714
    .line 715
    invoke-virtual {v8, v13}, Lcom/android/server/wm/ChangeTransitionController;->isInChangeTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 716
    .line 717
    .line 718
    move-result v8

    .line 719
    if-eqz v8, :cond_21

    .line 720
    .line 721
    goto/16 :goto_15

    .line 722
    .line 723
    :cond_21
    iget-object v8, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 724
    .line 725
    if-eqz v8, :cond_29

    .line 726
    .line 727
    if-eq v8, v1, :cond_29

    .line 728
    .line 729
    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 730
    .line 731
    if-eqz v8, :cond_22

    .line 732
    .line 733
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 734
    .line 735
    if-eq v8, v10, :cond_29

    .line 736
    .line 737
    :cond_22
    :goto_11
    if-eqz v9, :cond_23

    .line 738
    .line 739
    iget-object v8, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 740
    .line 741
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v8

    .line 745
    if-nez v8, :cond_23

    .line 746
    .line 747
    iget-object v8, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 748
    .line 749
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    const/4 v8, 0x1

    .line 753
    invoke-virtual {v1, v8, v8}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 754
    .line 755
    .line 756
    :cond_23
    if-eqz v15, :cond_27

    .line 757
    .line 758
    iget-object v8, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 759
    .line 760
    if-eqz v8, :cond_25

    .line 761
    .line 762
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 763
    .line 764
    .line 765
    move-result v8

    .line 766
    if-nez v8, :cond_24

    .line 767
    .line 768
    iget-object v8, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 769
    .line 770
    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 771
    .line 772
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 773
    .line 774
    const/16 v9, 0xa48

    .line 775
    .line 776
    if-ne v8, v9, :cond_25

    .line 777
    .line 778
    :cond_24
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 779
    .line 780
    .line 781
    move-result-object v8

    .line 782
    if-nez v8, :cond_25

    .line 783
    .line 784
    goto :goto_13

    .line 785
    :cond_25
    iget-object v8, v15, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 786
    .line 787
    if-eqz v8, :cond_27

    .line 788
    .line 789
    const/4 v8, 0x0

    .line 790
    invoke-virtual {v15, v8}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 791
    .line 792
    .line 793
    move-result v9

    .line 794
    if-eqz v9, :cond_28

    .line 795
    .line 796
    iget-object v9, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 797
    .line 798
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v9

    .line 802
    if-nez v9, :cond_28

    .line 803
    .line 804
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 805
    .line 806
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 807
    .line 808
    invoke-virtual {v7, v15}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotByForce(Lcom/android/server/wm/Task;)V

    .line 809
    .line 810
    .line 811
    iget-object v7, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 812
    .line 813
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    iget-boolean v7, v14, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    .line 817
    .line 818
    if-eqz v7, :cond_26

    .line 819
    .line 820
    const/4 v7, 0x3

    .line 821
    invoke-virtual {v14, v7, v15}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    .line 822
    .line 823
    .line 824
    const/4 v7, 0x1

    .line 825
    goto :goto_12

    .line 826
    :cond_26
    const/4 v7, 0x1

    .line 827
    invoke-virtual {v14, v7, v15}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    .line 828
    .line 829
    .line 830
    :goto_12
    invoke-virtual {v15, v7}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 831
    .line 832
    .line 833
    new-instance v7, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    const-string v9, "applyForceHidePolicyIfNeededLocked: "

    .line 836
    .line 837
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v7

    .line 847
    const-string v9, "FreeformController"

    .line 848
    .line 849
    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .line 851
    .line 852
    goto :goto_14

    .line 853
    :cond_27
    :goto_13
    const/4 v8, 0x0

    .line 854
    :cond_28
    :goto_14
    const/4 v7, 0x1

    .line 855
    goto/16 :goto_23

    .line 856
    .line 857
    :cond_29
    :goto_15
    const/4 v8, 0x0

    .line 858
    invoke-virtual {v14, v1}, Lcom/android/server/wm/FreeformController;->releaseForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 859
    .line 860
    .line 861
    if-eqz v12, :cond_40

    .line 862
    .line 863
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 864
    .line 865
    .line 866
    move-result-object v7

    .line 867
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 868
    .line 869
    if-eqz v9, :cond_2a

    .line 870
    .line 871
    goto/16 :goto_21

    .line 872
    .line 873
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    .line 874
    .line 875
    .line 876
    move-result v9

    .line 877
    const/16 v10, 0x833

    .line 878
    .line 879
    const/16 v13, 0xa47

    .line 880
    .line 881
    const/16 v14, 0xa46

    .line 882
    .line 883
    if-eqz v9, :cond_2c

    .line 884
    .line 885
    const/4 v15, 0x1

    .line 886
    if-eq v9, v15, :cond_3f

    .line 887
    .line 888
    const/4 v15, 0x2

    .line 889
    if-eq v9, v15, :cond_2b

    .line 890
    .line 891
    const/16 v15, 0xa

    .line 892
    .line 893
    if-eq v9, v15, :cond_3f

    .line 894
    .line 895
    goto :goto_16

    .line 896
    :cond_2b
    iget-boolean v9, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    .line 897
    .line 898
    if-eqz v9, :cond_2d

    .line 899
    .line 900
    iget-boolean v9, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    .line 901
    .line 902
    if-nez v9, :cond_2d

    .line 903
    .line 904
    goto/16 :goto_21

    .line 905
    .line 906
    :cond_2c
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 907
    .line 908
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 909
    .line 910
    const/16 v15, 0x7d0

    .line 911
    .line 912
    if-eq v9, v15, :cond_3f

    .line 913
    .line 914
    const/16 v15, 0x7d5

    .line 915
    .line 916
    if-eq v9, v15, :cond_3f

    .line 917
    .line 918
    const/16 v15, 0x7dd

    .line 919
    .line 920
    if-eq v9, v15, :cond_3f

    .line 921
    .line 922
    const/16 v15, 0x7f8

    .line 923
    .line 924
    if-eq v9, v15, :cond_3f

    .line 925
    .line 926
    const/16 v15, 0x96b

    .line 927
    .line 928
    if-eq v9, v15, :cond_3f

    .line 929
    .line 930
    const/16 v15, 0x7e3

    .line 931
    .line 932
    if-eq v9, v15, :cond_3f

    .line 933
    .line 934
    const/16 v15, 0x7e4

    .line 935
    .line 936
    if-eq v9, v15, :cond_3f

    .line 937
    .line 938
    if-eq v9, v14, :cond_2e

    .line 939
    .line 940
    if-eq v9, v13, :cond_2e

    .line 941
    .line 942
    :cond_2d
    :goto_16
    iget-object v9, v12, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 943
    .line 944
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 945
    .line 946
    .line 947
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    .line 948
    .line 949
    .line 950
    move-result v9

    .line 951
    invoke-static {v10}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 952
    .line 953
    .line 954
    move-result v15

    .line 955
    if-gt v9, v15, :cond_3f

    .line 956
    .line 957
    :cond_2e
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 958
    .line 959
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 960
    .line 961
    if-ne v9, v14, :cond_31

    .line 962
    .line 963
    iget-object v7, v12, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 964
    .line 965
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 966
    .line 967
    check-cast v7, Lcom/android/server/policy/PhoneWindowManager;

    .line 968
    .line 969
    const/4 v9, 0x4

    .line 970
    invoke-virtual {v7, v9}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    .line 971
    .line 972
    .line 973
    move-result v7

    .line 974
    if-eqz v7, :cond_2f

    .line 975
    .line 976
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 977
    .line 978
    .line 979
    move-result-object v7

    .line 980
    invoke-virtual {v7}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    .line 981
    .line 982
    .line 983
    move-result v7

    .line 984
    if-nez v7, :cond_30

    .line 985
    .line 986
    :cond_2f
    const/4 v7, 0x0

    .line 987
    const/4 v9, 0x1

    .line 988
    goto :goto_17

    .line 989
    :cond_30
    const/4 v7, 0x0

    .line 990
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 991
    .line 992
    .line 993
    goto/16 :goto_21

    .line 994
    .line 995
    :goto_17
    invoke-virtual {v1, v7, v9}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 996
    .line 997
    .line 998
    goto/16 :goto_21

    .line 999
    .line 1000
    :cond_31
    if-eq v9, v10, :cond_33

    .line 1001
    .line 1002
    if-ne v9, v13, :cond_32

    .line 1003
    .line 1004
    goto :goto_18

    .line 1005
    :cond_32
    const/4 v9, 0x0

    .line 1006
    goto :goto_19

    .line 1007
    :cond_33
    :goto_18
    const/4 v9, 0x1

    .line 1008
    :goto_19
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v10

    .line 1012
    invoke-virtual {v10}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    .line 1013
    .line 1014
    .line 1015
    move-result v10

    .line 1016
    const/high16 v13, 0x80000

    .line 1017
    .line 1018
    if-eqz v10, :cond_37

    .line 1019
    .line 1020
    if-eqz v9, :cond_35

    .line 1021
    .line 1022
    :cond_34
    const/4 v9, 0x0

    .line 1023
    goto :goto_1b

    .line 1024
    :cond_35
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1025
    .line 1026
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1027
    .line 1028
    and-int/2addr v9, v13

    .line 1029
    if-eqz v9, :cond_36

    .line 1030
    .line 1031
    const/4 v9, 0x1

    .line 1032
    goto :goto_1a

    .line 1033
    :cond_36
    const/4 v9, 0x0

    .line 1034
    :goto_1a
    iget-object v10, v12, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 1035
    .line 1036
    if-eq v1, v10, :cond_34

    .line 1037
    .line 1038
    if-nez v9, :cond_34

    .line 1039
    .line 1040
    const/4 v9, 0x1

    .line 1041
    :cond_37
    :goto_1b
    const/high16 v10, 0x100000

    .line 1042
    .line 1043
    if-eqz v9, :cond_3b

    .line 1044
    .line 1045
    const/4 v9, 0x1

    .line 1046
    const/4 v14, 0x0

    .line 1047
    invoke-virtual {v1, v14, v9}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v15

    .line 1051
    if-eqz v15, :cond_3a

    .line 1052
    .line 1053
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1054
    .line 1055
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    .line 1057
    .line 1058
    iget v7, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1059
    .line 1060
    and-int v9, v7, v10

    .line 1061
    .line 1062
    if-nez v9, :cond_39

    .line 1063
    .line 1064
    and-int/2addr v7, v13

    .line 1065
    if-eqz v7, :cond_38

    .line 1066
    .line 1067
    goto :goto_1c

    .line 1068
    :cond_38
    const/4 v7, 0x0

    .line 1069
    goto :goto_1d

    .line 1070
    :cond_39
    :goto_1c
    const/4 v7, 0x1

    .line 1071
    :goto_1d
    if-eqz v7, :cond_3a

    .line 1072
    .line 1073
    const/4 v7, 0x1

    .line 1074
    iput-boolean v7, v12, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 1075
    .line 1076
    :cond_3a
    const/4 v7, 0x1

    .line 1077
    goto :goto_22

    .line 1078
    :cond_3b
    invoke-virtual {v12}, Lcom/android/server/wm/CoverPolicy;->shouldApplyAodPolicy()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v9

    .line 1082
    if-eqz v9, :cond_3c

    .line 1083
    .line 1084
    iget-object v9, v12, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 1085
    .line 1086
    invoke-virtual {v9, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v9

    .line 1090
    goto :goto_1e

    .line 1091
    :cond_3c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    .line 1092
    .line 1093
    .line 1094
    move-result v9

    .line 1095
    :goto_1e
    if-nez v9, :cond_3f

    .line 1096
    .line 1097
    const/4 v9, 0x0

    .line 1098
    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v14

    .line 1102
    if-eqz v14, :cond_3f

    .line 1103
    .line 1104
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1105
    .line 1106
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1107
    .line 1108
    .line 1109
    iget v7, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1110
    .line 1111
    and-int v9, v7, v10

    .line 1112
    .line 1113
    if-nez v9, :cond_3e

    .line 1114
    .line 1115
    and-int/2addr v7, v13

    .line 1116
    if-eqz v7, :cond_3d

    .line 1117
    .line 1118
    goto :goto_1f

    .line 1119
    :cond_3d
    const/4 v7, 0x0

    .line 1120
    goto :goto_20

    .line 1121
    :cond_3e
    :goto_1f
    const/4 v7, 0x1

    .line 1122
    :goto_20
    if-eqz v7, :cond_3f

    .line 1123
    .line 1124
    const/4 v7, 0x1

    .line 1125
    iput-boolean v7, v12, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 1126
    .line 1127
    :cond_3f
    :goto_21
    const/4 v7, 0x0

    .line 1128
    :goto_22
    if-eqz v7, :cond_40

    .line 1129
    .line 1130
    goto/16 :goto_14

    .line 1131
    .line 1132
    :cond_40
    const/4 v7, 0x0

    .line 1133
    :goto_23
    if-nez v7, :cond_4c

    .line 1134
    .line 1135
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v7

    .line 1139
    iget-object v9, v2, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1140
    .line 1141
    if-eqz v7, :cond_4a

    .line 1142
    .line 1143
    iget-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1144
    .line 1145
    if-eqz v7, :cond_47

    .line 1146
    .line 1147
    iget-object v7, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1148
    .line 1149
    check-cast v7, Lcom/android/server/policy/PhoneWindowManager;

    .line 1150
    .line 1151
    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 1152
    .line 1153
    .line 1154
    move-result v7

    .line 1155
    if-nez v7, :cond_41

    .line 1156
    .line 1157
    goto :goto_26

    .line 1158
    :cond_41
    if-eqz v0, :cond_43

    .line 1159
    .line 1160
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1161
    .line 1162
    .line 1163
    move-result v7

    .line 1164
    if-eqz v7, :cond_43

    .line 1165
    .line 1166
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 1167
    .line 1168
    if-eqz v7, :cond_43

    .line 1169
    .line 1170
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 1171
    .line 1172
    .line 1173
    move-result v7

    .line 1174
    if-nez v7, :cond_42

    .line 1175
    .line 1176
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    .line 1177
    .line 1178
    .line 1179
    move-result v0

    .line 1180
    if-nez v0, :cond_43

    .line 1181
    .line 1182
    :cond_42
    const/4 v7, 0x0

    .line 1183
    goto :goto_27

    .line 1184
    :cond_43
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    .line 1185
    .line 1186
    .line 1187
    move-result v0

    .line 1188
    if-eqz v0, :cond_44

    .line 1189
    .line 1190
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v0

    .line 1194
    if-eqz v0, :cond_44

    .line 1195
    .line 1196
    :goto_24
    const/4 v7, 0x1

    .line 1197
    goto :goto_27

    .line 1198
    :cond_44
    iget-object v0, v9, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1199
    .line 1200
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1201
    .line 1202
    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1203
    .line 1204
    invoke-virtual {v0, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->isKeyguardOccluded(I)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v0

    .line 1208
    if-eqz v0, :cond_46

    .line 1209
    .line 1210
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 1211
    .line 1212
    .line 1213
    move-result v0

    .line 1214
    if-nez v0, :cond_45

    .line 1215
    .line 1216
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1217
    .line 1218
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1219
    .line 1220
    and-int/lit16 v0, v0, 0x100

    .line 1221
    .line 1222
    if-eqz v0, :cond_46

    .line 1223
    .line 1224
    :cond_45
    const/4 v0, 0x1

    .line 1225
    const/16 v17, 0x1

    .line 1226
    .line 1227
    goto :goto_25

    .line 1228
    :cond_46
    const/4 v0, 0x1

    .line 1229
    const/16 v17, 0x0

    .line 1230
    .line 1231
    :goto_25
    xor-int/lit8 v7, v17, 0x1

    .line 1232
    .line 1233
    goto :goto_27

    .line 1234
    :cond_47
    :goto_26
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v0

    .line 1238
    if-eqz v0, :cond_42

    .line 1239
    .line 1240
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 1241
    .line 1242
    .line 1243
    move-result v0

    .line 1244
    if-eqz v0, :cond_42

    .line 1245
    .line 1246
    goto :goto_24

    .line 1247
    :goto_27
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 1248
    .line 1249
    if-eqz v0, :cond_48

    .line 1250
    .line 1251
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 1252
    .line 1253
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setFrozen(Z)V

    .line 1258
    .line 1259
    .line 1260
    :cond_48
    if-eqz v7, :cond_49

    .line 1261
    .line 1262
    const/4 v0, 0x1

    .line 1263
    const/4 v7, 0x0

    .line 1264
    invoke-virtual {v1, v7, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 1265
    .line 1266
    .line 1267
    goto :goto_28

    .line 1268
    :cond_49
    const/4 v7, 0x0

    .line 1269
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 1270
    .line 1271
    .line 1272
    goto :goto_28

    .line 1273
    :cond_4a
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    .line 1274
    .line 1275
    .line 1276
    move-result v0

    .line 1277
    if-eqz v0, :cond_4c

    .line 1278
    .line 1279
    iget-object v0, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1280
    .line 1281
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 1282
    .line 1283
    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1284
    .line 1285
    invoke-virtual {v0, v7}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v0

    .line 1289
    iget-boolean v0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 1290
    .line 1291
    if-eqz v0, :cond_4b

    .line 1292
    .line 1293
    const/4 v0, 0x1

    .line 1294
    const/4 v7, 0x0

    .line 1295
    invoke-virtual {v1, v7, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 1296
    .line 1297
    .line 1298
    goto :goto_28

    .line 1299
    :cond_4b
    const/4 v7, 0x0

    .line 1300
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 1301
    .line 1302
    .line 1303
    :cond_4c
    :goto_28
    iget-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1304
    .line 1305
    if-nez v0, :cond_4e

    .line 1306
    .line 1307
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 1308
    .line 1309
    .line 1310
    move-result v0

    .line 1311
    if-eqz v0, :cond_4e

    .line 1312
    .line 1313
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1314
    .line 1315
    if-eqz v0, :cond_4e

    .line 1316
    .line 1317
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    if-eqz v0, :cond_4d

    .line 1322
    .line 1323
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v0

    .line 1331
    if-nez v0, :cond_4e

    .line 1332
    .line 1333
    :cond_4d
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 1334
    .line 1335
    .line 1336
    move-result v0

    .line 1337
    if-eqz v0, :cond_4e

    .line 1338
    .line 1339
    const/4 v0, 0x1

    .line 1340
    iput-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1341
    .line 1342
    :cond_4e
    iget-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 1343
    .line 1344
    if-nez v0, :cond_4f

    .line 1345
    .line 1346
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1347
    .line 1348
    if-eqz v0, :cond_4f

    .line 1349
    .line 1350
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 1351
    .line 1352
    .line 1353
    move-result v0

    .line 1354
    if-eqz v0, :cond_4f

    .line 1355
    .line 1356
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    if-eqz v0, :cond_4f

    .line 1361
    .line 1362
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v0

    .line 1366
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 1367
    .line 1368
    .line 1369
    move-result v0

    .line 1370
    if-nez v0, :cond_4f

    .line 1371
    .line 1372
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 1373
    .line 1374
    .line 1375
    move-result v0

    .line 1376
    if-eqz v0, :cond_4f

    .line 1377
    .line 1378
    const/4 v0, 0x1

    .line 1379
    iput-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 1380
    .line 1381
    :cond_4f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->hasInsetsSourceProvider()Z

    .line 1382
    .line 1383
    .line 1384
    move-result v0

    .line 1385
    if-eqz v0, :cond_56

    .line 1386
    .line 1387
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v0

    .line 1391
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v7

    .line 1395
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1396
    .line 1397
    .line 1398
    move-result v9

    .line 1399
    const/4 v10, 0x1

    .line 1400
    sub-int/2addr v9, v10

    .line 1401
    :goto_29
    if-ltz v9, :cond_56

    .line 1402
    .line 1403
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v10

    .line 1407
    check-cast v10, Lcom/android/server/wm/InsetsSourceProvider;

    .line 1408
    .line 1409
    iget-object v10, v10, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 1410
    .line 1411
    invoke-virtual {v10}, Landroid/view/InsetsSource;->getType()I

    .line 1412
    .line 1413
    .line 1414
    move-result v11

    .line 1415
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 1416
    .line 1417
    .line 1418
    move-result v12

    .line 1419
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    .line 1420
    .line 1421
    .line 1422
    move-result v13

    .line 1423
    or-int/2addr v12, v13

    .line 1424
    and-int/2addr v11, v12

    .line 1425
    if-nez v11, :cond_50

    .line 1426
    .line 1427
    goto :goto_2a

    .line 1428
    :cond_50
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1429
    .line 1430
    if-eqz v11, :cond_51

    .line 1431
    .line 1432
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1433
    .line 1434
    if-eqz v11, :cond_51

    .line 1435
    .line 1436
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1437
    .line 1438
    if-eqz v11, :cond_51

    .line 1439
    .line 1440
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 1441
    .line 1442
    if-eqz v11, :cond_51

    .line 1443
    .line 1444
    goto :goto_2a

    .line 1445
    :cond_51
    const/4 v11, 0x0

    .line 1446
    invoke-virtual {v10, v7, v11}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v10

    .line 1450
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1451
    .line 1452
    if-nez v11, :cond_52

    .line 1453
    .line 1454
    iget v11, v10, Landroid/graphics/Insets;->left:I

    .line 1455
    .line 1456
    if-lez v11, :cond_52

    .line 1457
    .line 1458
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1459
    .line 1460
    :cond_52
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1461
    .line 1462
    if-nez v11, :cond_53

    .line 1463
    .line 1464
    iget v11, v10, Landroid/graphics/Insets;->top:I

    .line 1465
    .line 1466
    if-lez v11, :cond_53

    .line 1467
    .line 1468
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1469
    .line 1470
    :cond_53
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1471
    .line 1472
    if-nez v11, :cond_54

    .line 1473
    .line 1474
    iget v11, v10, Landroid/graphics/Insets;->right:I

    .line 1475
    .line 1476
    if-lez v11, :cond_54

    .line 1477
    .line 1478
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1479
    .line 1480
    :cond_54
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 1481
    .line 1482
    if-nez v11, :cond_55

    .line 1483
    .line 1484
    iget v10, v10, Landroid/graphics/Insets;->bottom:I

    .line 1485
    .line 1486
    if-lez v10, :cond_55

    .line 1487
    .line 1488
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 1489
    .line 1490
    :cond_55
    :goto_2a
    add-int/lit8 v9, v9, -0x1

    .line 1491
    .line 1492
    goto :goto_29

    .line 1493
    :cond_56
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 1494
    .line 1495
    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanForceShowingInsets:Z

    .line 1496
    .line 1497
    if-eqz v0, :cond_57

    .line 1498
    .line 1499
    iget v0, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 1500
    .line 1501
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1502
    .line 1503
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    .line 1504
    .line 1505
    or-int/2addr v0, v7

    .line 1506
    iput v0, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 1507
    .line 1508
    :cond_57
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 1509
    .line 1510
    iget-boolean v7, v2, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    .line 1511
    .line 1512
    if-eq v0, v7, :cond_5b

    .line 1513
    .line 1514
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 1515
    .line 1516
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1517
    .line 1518
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1519
    .line 1520
    if-eqz v7, :cond_59

    .line 1521
    .line 1522
    :cond_58
    const/4 v7, 0x0

    .line 1523
    goto :goto_2c

    .line 1524
    :cond_59
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    .line 1525
    .line 1526
    .line 1527
    move-result v7

    .line 1528
    if-eqz v7, :cond_5a

    .line 1529
    .line 1530
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 1531
    .line 1532
    .line 1533
    move-result v7

    .line 1534
    goto :goto_2b

    .line 1535
    :cond_5a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1536
    .line 1537
    .line 1538
    move-result v7

    .line 1539
    :goto_2b
    if-eqz v7, :cond_58

    .line 1540
    .line 1541
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    .line 1542
    .line 1543
    if-nez v7, :cond_58

    .line 1544
    .line 1545
    const/4 v7, 0x1

    .line 1546
    :goto_2c
    if-eqz v7, :cond_5b

    .line 1547
    .line 1548
    if-eqz v0, :cond_5b

    .line 1549
    .line 1550
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1551
    .line 1552
    .line 1553
    move-result v0

    .line 1554
    if-eqz v0, :cond_5b

    .line 1555
    .line 1556
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 1557
    .line 1558
    .line 1559
    :cond_5b
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1560
    .line 1561
    const/high16 v7, 0x2000000

    .line 1562
    .line 1563
    and-int/2addr v0, v7

    .line 1564
    if-eqz v0, :cond_5c

    .line 1565
    .line 1566
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1567
    .line 1568
    .line 1569
    move-result v0

    .line 1570
    if-eqz v0, :cond_5c

    .line 1571
    .line 1572
    const/4 v0, 0x1

    .line 1573
    iput-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    .line 1574
    .line 1575
    goto :goto_2d

    .line 1576
    :cond_5c
    const/4 v0, 0x1

    .line 1577
    :goto_2d
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1578
    .line 1579
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 1580
    .line 1581
    and-int/lit8 v7, v7, 0x40

    .line 1582
    .line 1583
    if-eqz v7, :cond_5d

    .line 1584
    .line 1585
    iput-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    .line 1586
    .line 1587
    :cond_5d
    if-nez v5, :cond_5e

    .line 1588
    .line 1589
    goto/16 :goto_3e

    .line 1590
    .line 1591
    :cond_5e
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1592
    .line 1593
    if-lt v5, v0, :cond_5f

    .line 1594
    .line 1595
    const/16 v0, 0x7d0

    .line 1596
    .line 1597
    if-ge v5, v0, :cond_5f

    .line 1598
    .line 1599
    const/4 v0, 0x1

    .line 1600
    goto :goto_2e

    .line 1601
    :cond_5f
    const/4 v0, 0x0

    .line 1602
    :goto_2e
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1603
    .line 1604
    if-nez v5, :cond_64

    .line 1605
    .line 1606
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1607
    .line 1608
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1609
    .line 1610
    if-eqz v7, :cond_60

    .line 1611
    .line 1612
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 1613
    .line 1614
    .line 1615
    move-result v7

    .line 1616
    const/4 v9, 0x5

    .line 1617
    if-ne v7, v9, :cond_60

    .line 1618
    .line 1619
    const/4 v7, 0x1

    .line 1620
    goto :goto_2f

    .line 1621
    :cond_60
    const/4 v7, 0x0

    .line 1622
    :goto_2f
    if-eqz v7, :cond_63

    .line 1623
    .line 1624
    iget-boolean v7, v2, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 1625
    .line 1626
    if-eqz v7, :cond_62

    .line 1627
    .line 1628
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1629
    .line 1630
    .line 1631
    move-result v7

    .line 1632
    if-eqz v7, :cond_63

    .line 1633
    .line 1634
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1635
    .line 1636
    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1637
    .line 1638
    const/4 v9, 0x4

    .line 1639
    if-ne v7, v9, :cond_61

    .line 1640
    .line 1641
    const/4 v7, 0x1

    .line 1642
    goto :goto_30

    .line 1643
    :cond_61
    const/4 v7, 0x0

    .line 1644
    :goto_30
    if-eqz v7, :cond_63

    .line 1645
    .line 1646
    :cond_62
    const/4 v7, 0x1

    .line 1647
    goto :goto_31

    .line 1648
    :cond_63
    const/4 v7, 0x1

    .line 1649
    goto :goto_32

    .line 1650
    :goto_31
    iput-boolean v7, v2, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 1651
    .line 1652
    move v0, v7

    .line 1653
    :goto_32
    if-eqz v0, :cond_64

    .line 1654
    .line 1655
    if-nez v4, :cond_64

    .line 1656
    .line 1657
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 1658
    .line 1659
    .line 1660
    move-result v9

    .line 1661
    if-eqz v9, :cond_64

    .line 1662
    .line 1663
    and-int/2addr v5, v7

    .line 1664
    if-eqz v5, :cond_64

    .line 1665
    .line 1666
    iput-boolean v7, v2, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 1667
    .line 1668
    :cond_64
    if-eqz v0, :cond_65

    .line 1669
    .line 1670
    if-nez v4, :cond_65

    .line 1671
    .line 1672
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 1673
    .line 1674
    .line 1675
    move-result v5

    .line 1676
    if-nez v5, :cond_66

    .line 1677
    .line 1678
    :cond_65
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1679
    .line 1680
    const/16 v7, 0x7ef

    .line 1681
    .line 1682
    if-ne v5, v7, :cond_73

    .line 1683
    .line 1684
    :cond_66
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1685
    .line 1686
    const/4 v3, 0x3

    .line 1687
    if-ne v0, v3, :cond_67

    .line 1688
    .line 1689
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 1690
    .line 1691
    if-eqz v0, :cond_67

    .line 1692
    .line 1693
    const/4 v0, 0x1

    .line 1694
    goto :goto_33

    .line 1695
    :cond_67
    const/4 v0, 0x0

    .line 1696
    :goto_33
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1697
    .line 1698
    if-nez v3, :cond_69

    .line 1699
    .line 1700
    if-nez v0, :cond_69

    .line 1701
    .line 1702
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 1703
    .line 1704
    .line 1705
    move-result v0

    .line 1706
    if-nez v0, :cond_69

    .line 1707
    .line 1708
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v0

    .line 1712
    if-eqz v0, :cond_68

    .line 1713
    .line 1714
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v0

    .line 1718
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 1719
    .line 1720
    .line 1721
    move-result v0

    .line 1722
    const/4 v3, 0x6

    .line 1723
    if-ne v0, v3, :cond_68

    .line 1724
    .line 1725
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v0

    .line 1729
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1730
    .line 1731
    .line 1732
    move-result v0

    .line 1733
    if-nez v0, :cond_68

    .line 1734
    .line 1735
    const/4 v0, 0x1

    .line 1736
    goto :goto_34

    .line 1737
    :cond_68
    const/4 v0, 0x0

    .line 1738
    :goto_34
    if-nez v0, :cond_69

    .line 1739
    .line 1740
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1741
    .line 1742
    :cond_69
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1743
    .line 1744
    if-eqz v0, :cond_6c

    .line 1745
    .line 1746
    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 1747
    .line 1748
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1749
    .line 1750
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1751
    .line 1752
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1753
    .line 1754
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1755
    .line 1756
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 1757
    .line 1758
    .line 1759
    move-result v0

    .line 1760
    if-eqz v0, :cond_6c

    .line 1761
    .line 1762
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 1763
    .line 1764
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 1765
    .line 1766
    .line 1767
    move-result v0

    .line 1768
    if-nez v0, :cond_6c

    .line 1769
    .line 1770
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v0

    .line 1774
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 1775
    .line 1776
    .line 1777
    move-result v0

    .line 1778
    if-eqz v0, :cond_6a

    .line 1779
    .line 1780
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1781
    .line 1782
    .line 1783
    move-result v0

    .line 1784
    if-nez v0, :cond_6a

    .line 1785
    .line 1786
    const/4 v9, 0x0

    .line 1787
    goto :goto_35

    .line 1788
    :cond_6a
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 1789
    .line 1790
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    .line 1792
    .line 1793
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 1794
    .line 1795
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1796
    .line 1797
    .line 1798
    const/4 v9, 0x1

    .line 1799
    :goto_35
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 1800
    .line 1801
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 1802
    .line 1803
    .line 1804
    move-result v0

    .line 1805
    if-nez v0, :cond_6c

    .line 1806
    .line 1807
    if-eqz v9, :cond_6c

    .line 1808
    .line 1809
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1810
    .line 1811
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 1812
    .line 1813
    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 1814
    .line 1815
    and-int/lit8 v0, v0, 0x8

    .line 1816
    .line 1817
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    .line 1818
    .line 1819
    if-eqz v4, :cond_6b

    .line 1820
    .line 1821
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1822
    .line 1823
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1824
    .line 1825
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 1826
    .line 1827
    .line 1828
    move-result v4

    .line 1829
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1830
    .line 1831
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1832
    .line 1833
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1834
    .line 1835
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 1836
    .line 1837
    .line 1838
    move-result v5

    .line 1839
    :cond_6b
    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 1840
    .line 1841
    new-instance v5, Lcom/android/internal/view/AppearanceRegion;

    .line 1842
    .line 1843
    new-instance v6, Landroid/graphics/Rect;

    .line 1844
    .line 1845
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1846
    .line 1847
    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1848
    .line 1849
    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1850
    .line 1851
    .line 1852
    invoke-direct {v5, v0, v6}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 1853
    .line 1854
    .line 1855
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1856
    .line 1857
    .line 1858
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 1859
    .line 1860
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1861
    .line 1862
    .line 1863
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1864
    .line 1865
    if-eqz v0, :cond_6c

    .line 1866
    .line 1867
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 1868
    .line 1869
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1870
    .line 1871
    .line 1872
    :cond_6c
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 1873
    .line 1874
    .line 1875
    move-result v0

    .line 1876
    if-eqz v0, :cond_6e

    .line 1877
    .line 1878
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1879
    .line 1880
    if-nez v0, :cond_6d

    .line 1881
    .line 1882
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1883
    .line 1884
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1885
    .line 1886
    if-eqz v0, :cond_6d

    .line 1887
    .line 1888
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 1889
    .line 1890
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1891
    .line 1892
    .line 1893
    :cond_6d
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1894
    .line 1895
    if-nez v0, :cond_6e

    .line 1896
    .line 1897
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1898
    .line 1899
    :cond_6e
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1900
    .line 1901
    if-eqz v0, :cond_7f

    .line 1902
    .line 1903
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1904
    .line 1905
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 1906
    .line 1907
    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 1908
    .line 1909
    iget-object v1, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 1910
    .line 1911
    iget-object v1, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1912
    .line 1913
    const/4 v3, 0x1

    .line 1914
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v1

    .line 1918
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 1919
    .line 1920
    .line 1921
    move-result v3

    .line 1922
    if-eqz v3, :cond_72

    .line 1923
    .line 1924
    if-eqz v1, :cond_72

    .line 1925
    .line 1926
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v3

    .line 1930
    if-eqz v3, :cond_6f

    .line 1931
    .line 1932
    goto :goto_37

    .line 1933
    :cond_6f
    new-instance v3, Landroid/graphics/Rect;

    .line 1934
    .line 1935
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1936
    .line 1937
    .line 1938
    new-instance v4, Landroid/graphics/Rect;

    .line 1939
    .line 1940
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1941
    .line 1942
    .line 1943
    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 1947
    .line 1948
    .line 1949
    move-result v5

    .line 1950
    if-eqz v5, :cond_70

    .line 1951
    .line 1952
    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 1953
    .line 1954
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 1955
    .line 1956
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1957
    .line 1958
    .line 1959
    goto :goto_36

    .line 1960
    :cond_70
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1961
    .line 1962
    .line 1963
    :goto_36
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 1964
    .line 1965
    .line 1966
    move-result v0

    .line 1967
    if-nez v0, :cond_72

    .line 1968
    .line 1969
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 1970
    .line 1971
    .line 1972
    move-result v0

    .line 1973
    if-eqz v0, :cond_71

    .line 1974
    .line 1975
    goto :goto_37

    .line 1976
    :cond_71
    new-instance v7, Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1977
    .line 1978
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1979
    .line 1980
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 1981
    .line 1982
    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 1983
    .line 1984
    invoke-direct {v7, v3, v4, v0}, Lcom/android/internal/statusbar/LetterboxDetails;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1985
    .line 1986
    .line 1987
    goto :goto_38

    .line 1988
    :cond_72
    :goto_37
    move-object v7, v8

    .line 1989
    :goto_38
    if-eqz v7, :cond_7f

    .line 1990
    .line 1991
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 1992
    .line 1993
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    .line 1995
    .line 1996
    goto/16 :goto_3e

    .line 1997
    .line 1998
    :cond_73
    const/4 v3, 0x1

    .line 1999
    iget-boolean v5, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 2000
    .line 2001
    if-eqz v5, :cond_7c

    .line 2002
    .line 2003
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2004
    .line 2005
    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    .line 2006
    .line 2007
    .line 2008
    move-result v5

    .line 2009
    if-eqz v5, :cond_74

    .line 2010
    .line 2011
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2012
    .line 2013
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2014
    .line 2015
    const/high16 v6, 0x400000

    .line 2016
    .line 2017
    and-int/2addr v5, v6

    .line 2018
    if-eqz v5, :cond_74

    .line 2019
    .line 2020
    move v5, v3

    .line 2021
    goto :goto_39

    .line 2022
    :cond_74
    const/4 v5, 0x0

    .line 2023
    :goto_39
    if-nez v5, :cond_7c

    .line 2024
    .line 2025
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2026
    .line 2027
    if-eqz v0, :cond_7b

    .line 2028
    .line 2029
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2030
    .line 2031
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    .line 2032
    .line 2033
    .line 2034
    move-result v0

    .line 2035
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2036
    .line 2037
    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    .line 2038
    .line 2039
    .line 2040
    move-result v4

    .line 2041
    if-ge v4, v0, :cond_7b

    .line 2042
    .line 2043
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2044
    .line 2045
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 2046
    .line 2047
    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 2048
    .line 2049
    and-int/lit8 v0, v0, 0x8

    .line 2050
    .line 2051
    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2052
    .line 2053
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 2054
    .line 2055
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2056
    .line 2057
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v5

    .line 2061
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 2062
    .line 2063
    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2064
    .line 2065
    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 2066
    .line 2067
    invoke-virtual {v7, v5, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2068
    .line 2069
    .line 2070
    move-result v8

    .line 2071
    if-nez v8, :cond_75

    .line 2072
    .line 2073
    :goto_3a
    const/4 v8, 0x0

    .line 2074
    goto/16 :goto_3d

    .line 2075
    .line 2076
    :cond_75
    iget-object v8, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 2077
    .line 2078
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 2079
    .line 2080
    .line 2081
    move-result v8

    .line 2082
    if-eqz v8, :cond_76

    .line 2083
    .line 2084
    goto :goto_3a

    .line 2085
    :cond_76
    if-eqz v0, :cond_7a

    .line 2086
    .line 2087
    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 2088
    .line 2089
    invoke-virtual {v8, v6, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2090
    .line 2091
    .line 2092
    move-result v4

    .line 2093
    if-nez v4, :cond_77

    .line 2094
    .line 2095
    goto :goto_3c

    .line 2096
    :cond_77
    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2097
    .line 2098
    new-instance v9, Lcom/android/internal/view/AppearanceRegion;

    .line 2099
    .line 2100
    new-instance v10, Landroid/graphics/Rect;

    .line 2101
    .line 2102
    invoke-direct {v10, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2103
    .line 2104
    .line 2105
    invoke-direct {v9, v0, v10}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 2106
    .line 2107
    .line 2108
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2109
    .line 2110
    .line 2111
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 2112
    .line 2113
    .line 2114
    move-result v0

    .line 2115
    if-nez v0, :cond_79

    .line 2116
    .line 2117
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 2118
    .line 2119
    .line 2120
    move-result v0

    .line 2121
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 2122
    .line 2123
    .line 2124
    move-result v4

    .line 2125
    if-ne v0, v4, :cond_79

    .line 2126
    .line 2127
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 2128
    .line 2129
    iget v4, v8, Landroid/graphics/Rect;->left:I

    .line 2130
    .line 2131
    if-eq v0, v4, :cond_78

    .line 2132
    .line 2133
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2134
    .line 2135
    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    .line 2136
    .line 2137
    new-instance v6, Landroid/graphics/Rect;

    .line 2138
    .line 2139
    iget v9, v5, Landroid/graphics/Rect;->left:I

    .line 2140
    .line 2141
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 2142
    .line 2143
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 2144
    .line 2145
    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    .line 2146
    .line 2147
    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2148
    .line 2149
    .line 2150
    const/4 v9, 0x0

    .line 2151
    invoke-direct {v4, v9, v6}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 2152
    .line 2153
    .line 2154
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2155
    .line 2156
    .line 2157
    :cond_78
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 2158
    .line 2159
    iget v4, v8, Landroid/graphics/Rect;->right:I

    .line 2160
    .line 2161
    if-eq v0, v4, :cond_79

    .line 2162
    .line 2163
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2164
    .line 2165
    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    .line 2166
    .line 2167
    new-instance v6, Landroid/graphics/Rect;

    .line 2168
    .line 2169
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 2170
    .line 2171
    iget v9, v5, Landroid/graphics/Rect;->top:I

    .line 2172
    .line 2173
    iget v10, v5, Landroid/graphics/Rect;->right:I

    .line 2174
    .line 2175
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 2176
    .line 2177
    invoke-direct {v6, v8, v9, v10, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2178
    .line 2179
    .line 2180
    const/4 v5, 0x0

    .line 2181
    invoke-direct {v4, v5, v6}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 2182
    .line 2183
    .line 2184
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    .line 2186
    .line 2187
    :cond_79
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 2188
    .line 2189
    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2190
    .line 2191
    .line 2192
    :goto_3b
    move v8, v3

    .line 2193
    goto :goto_3d

    .line 2194
    :cond_7a
    :goto_3c
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2195
    .line 2196
    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    .line 2197
    .line 2198
    new-instance v6, Landroid/graphics/Rect;

    .line 2199
    .line 2200
    invoke-direct {v6, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2201
    .line 2202
    .line 2203
    const/4 v5, 0x0

    .line 2204
    invoke-direct {v4, v5, v6}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 2205
    .line 2206
    .line 2207
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    .line 2209
    .line 2210
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 2211
    .line 2212
    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2213
    .line 2214
    .line 2215
    goto :goto_3b

    .line 2216
    :goto_3d
    if-eqz v8, :cond_7b

    .line 2217
    .line 2218
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2219
    .line 2220
    if-eqz v0, :cond_7b

    .line 2221
    .line 2222
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 2223
    .line 2224
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2225
    .line 2226
    .line 2227
    :cond_7b
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 2228
    .line 2229
    .line 2230
    move-result v0

    .line 2231
    if-eqz v0, :cond_7f

    .line 2232
    .line 2233
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2234
    .line 2235
    if-nez v0, :cond_7f

    .line 2236
    .line 2237
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2238
    .line 2239
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2240
    .line 2241
    if-eqz v0, :cond_7f

    .line 2242
    .line 2243
    iget-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 2244
    .line 2245
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2246
    .line 2247
    .line 2248
    goto :goto_3e

    .line 2249
    :cond_7c
    if-eqz v0, :cond_7f

    .line 2250
    .line 2251
    if-nez v4, :cond_7f

    .line 2252
    .line 2253
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2254
    .line 2255
    if-eqz v0, :cond_7d

    .line 2256
    .line 2257
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2258
    .line 2259
    if-nez v0, :cond_7f

    .line 2260
    .line 2261
    :cond_7d
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 2262
    .line 2263
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2264
    .line 2265
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 2266
    .line 2267
    .line 2268
    move-result v3

    .line 2269
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    .line 2270
    .line 2271
    .line 2272
    move-result-object v3

    .line 2273
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 2274
    .line 2275
    .line 2276
    move-result v0

    .line 2277
    if-eqz v0, :cond_7f

    .line 2278
    .line 2279
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2280
    .line 2281
    if-nez v0, :cond_7e

    .line 2282
    .line 2283
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2284
    .line 2285
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2286
    .line 2287
    if-eqz v0, :cond_7e

    .line 2288
    .line 2289
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 2290
    .line 2291
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2292
    .line 2293
    .line 2294
    :cond_7e
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2295
    .line 2296
    if-nez v0, :cond_7f

    .line 2297
    .line 2298
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2299
    .line 2300
    :cond_7f
    :goto_3e
    return-void

    .line 2301
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2302
    .line 2303
    move-object/from16 v1, p1

    .line 2304
    .line 2305
    check-cast v1, Lcom/android/server/wm/AccessibilityController;

    .line 2306
    .line 2307
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2308
    .line 2309
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2310
    .line 2311
    const-wide/16 v3, 0x400

    .line 2312
    .line 2313
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 2314
    .line 2315
    .line 2316
    move-result v2

    .line 2317
    if-eqz v2, :cond_80

    .line 2318
    .line 2319
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2320
    .line 2321
    const-string v5, "AccessibilityController.onWindowFocusChangedNot"

    .line 2322
    .line 2323
    const-string v6, "displayId="

    .line 2324
    .line 2325
    invoke-static {v0, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 2326
    .line 2327
    .line 2328
    move-result-object v6

    .line 2329
    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2330
    .line 2331
    .line 2332
    :cond_80
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2333
    .line 2334
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2335
    .line 2336
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2337
    .line 2338
    .line 2339
    monitor-enter v2

    .line 2340
    :try_start_0
    iget-object v3, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 2341
    .line 2342
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v0

    .line 2346
    check-cast v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 2347
    .line 2348
    if-eqz v0, :cond_81

    .line 2349
    .line 2350
    goto :goto_3f

    .line 2351
    :cond_81
    const/4 v0, 0x0

    .line 2352
    :goto_3f
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2353
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2354
    .line 2355
    .line 2356
    if-eqz v0, :cond_82

    .line 2357
    .line 2358
    const/4 v2, 0x0

    .line 2359
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    .line 2360
    .line 2361
    .line 2362
    :cond_82
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2363
    .line 2364
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2365
    .line 2366
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2367
    .line 2368
    .line 2369
    monitor-enter v3

    .line 2370
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 2371
    .line 2372
    if-eqz v0, :cond_83

    .line 2373
    .line 2374
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2375
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2376
    .line 2377
    .line 2378
    goto :goto_42

    .line 2379
    :catchall_0
    move-exception v0

    .line 2380
    goto :goto_43

    .line 2381
    :cond_83
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2382
    .line 2383
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 2384
    .line 2385
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2386
    .line 2387
    .line 2388
    move-result-object v0

    .line 2389
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 2390
    .line 2391
    if-nez v0, :cond_84

    .line 2392
    .line 2393
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2394
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2395
    .line 2396
    .line 2397
    goto :goto_42

    .line 2398
    :cond_84
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    .line 2399
    .line 2400
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2401
    .line 2402
    .line 2403
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 2404
    .line 2405
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 2406
    .line 2407
    .line 2408
    move-result v2

    .line 2409
    const/4 v4, 0x1

    .line 2410
    sub-int/2addr v2, v4

    .line 2411
    :goto_40
    if-ltz v2, :cond_86

    .line 2412
    .line 2413
    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 2414
    .line 2415
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v5

    .line 2419
    check-cast v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 2420
    .line 2421
    iget-boolean v6, v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    .line 2422
    .line 2423
    if-nez v6, :cond_85

    .line 2424
    .line 2425
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2426
    .line 2427
    .line 2428
    :cond_85
    add-int/lit8 v2, v2, -0x1

    .line 2429
    .line 2430
    goto :goto_40

    .line 2431
    :cond_86
    iput-boolean v4, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 2432
    .line 2433
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2434
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2435
    .line 2436
    .line 2437
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2438
    .line 2439
    .line 2440
    move-result v2

    .line 2441
    sub-int/2addr v2, v4

    .line 2442
    move v3, v4

    .line 2443
    :goto_41
    if-ltz v2, :cond_87

    .line 2444
    .line 2445
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2446
    .line 2447
    .line 2448
    move-result-object v5

    .line 2449
    check-cast v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 2450
    .line 2451
    invoke-virtual {v5, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    .line 2452
    .line 2453
    .line 2454
    iget-boolean v5, v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    .line 2455
    .line 2456
    and-int/2addr v3, v5

    .line 2457
    add-int/lit8 v2, v2, -0x1

    .line 2458
    .line 2459
    goto :goto_41

    .line 2460
    :cond_87
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2461
    .line 2462
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2463
    .line 2464
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2465
    .line 2466
    .line 2467
    monitor-enter v2

    .line 2468
    :try_start_4
    iget-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 2469
    .line 2470
    and-int/2addr v0, v3

    .line 2471
    iput-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 2472
    .line 2473
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2474
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2475
    .line 2476
    .line 2477
    :goto_42
    return-void

    .line 2478
    :catchall_1
    move-exception v0

    .line 2479
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2480
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2481
    .line 2482
    .line 2483
    throw v0

    .line 2484
    :goto_43
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2485
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2486
    .line 2487
    .line 2488
    throw v0

    .line 2489
    :catchall_2
    move-exception v0

    .line 2490
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2491
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2492
    .line 2493
    .line 2494
    throw v0

    .line 2495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
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

    .line 2496
    .line 2497
    .line 2498
    .line 2499
    .line 2500
    .line 2501
    .line 2502
    .line 2503
    .line 2504
    .line 2505
    .line 2506
    .line 2507
    .line 2508
    .line 2509
    .line 2510
    .line 2511
    .line 2512
    .line 2513
    .line 2514
    .line 2515
    .line 2516
    .line 2517
    .line 2518
    .line 2519
    .line 2520
    .line 2521
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
