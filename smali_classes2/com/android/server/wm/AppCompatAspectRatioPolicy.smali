.class public final Lcom/android/server/wm/AppCompatAspectRatioPolicy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

.field public mUserOrSystemMinAspectRatio:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatOverrides;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p1, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z
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
    iget-object v3, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 10
    .line 11
    iget-boolean v4, v4, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    return v5

    .line 17
    :cond_0
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    return v5

    .line 24
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 25
    .line 26
    iget-object v6, v4, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 27
    .line 28
    invoke-virtual {v6}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    iget-object v4, v4, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 35
    .line 36
    iget v4, v4, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    .line 60
    .line 61
    const/high16 v12, 0x3f800000    # 1.0f

    .line 62
    .line 63
    if-eqz v10, :cond_5

    .line 64
    .line 65
    cmpg-float v13, v8, v12

    .line 66
    .line 67
    if-gez v13, :cond_4

    .line 68
    .line 69
    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    .line 71
    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 72
    .line 73
    iget-object v13, v13, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;

    .line 74
    .line 75
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    if-eqz v14, :cond_3

    .line 83
    .line 84
    iget-object v14, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 85
    .line 86
    iget v15, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 87
    .line 88
    iget-object v13, v13, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 89
    .line 90
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v5, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 94
    .line 95
    new-instance v12, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/4 v11, 0x2

    .line 98
    invoke-direct {v12, v14, v11}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v12, v15}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-nez v5, :cond_3

    .line 106
    .line 107
    invoke-virtual {v13, v14}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getSystemMinAspectRatio(Ljava/lang/String;)F

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    :goto_1
    const/high16 v11, -0x40800000    # -1.0f

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    const/high16 v5, -0x40800000    # -1.0f

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :goto_2
    cmpl-float v12, v5, v11

    .line 118
    .line 119
    if-eqz v12, :cond_5

    .line 120
    .line 121
    iput v5, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mUserOrSystemMinAspectRatio:F

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_4
    iget-object v5, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 125
    .line 126
    iget-object v5, v5, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    .line 127
    .line 128
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserMinAspectRatioOverride()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_5

    .line 133
    .line 134
    iput v8, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mUserOrSystemMinAspectRatio:F

    .line 135
    .line 136
    :cond_5
    move/from16 v5, p4

    .line 137
    .line 138
    :goto_3
    if-eqz v7, :cond_6

    .line 139
    .line 140
    if-eqz v6, :cond_6

    .line 141
    .line 142
    const/high16 v6, 0x3f800000    # 1.0f

    .line 143
    .line 144
    cmpg-float v11, v4, v6

    .line 145
    .line 146
    if-gez v11, :cond_7

    .line 147
    .line 148
    cmpg-float v11, v8, v6

    .line 149
    .line 150
    if-gez v11, :cond_7

    .line 151
    .line 152
    cmpg-float v11, v5, v6

    .line 153
    .line 154
    if-ltz v11, :cond_6

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    :goto_4
    const/4 v0, 0x0

    .line 158
    goto/16 :goto_c

    .line 159
    .line 160
    :cond_7
    :goto_5
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 165
    .line 166
    and-int/lit8 v6, v6, 0xf

    .line 167
    .line 168
    const/4 v11, 0x7

    .line 169
    if-ne v6, v11, :cond_8

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_8
    if-eqz v9, :cond_9

    .line 173
    .line 174
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_9

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_9
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_a

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    return v6

    .line 189
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    const/high16 v12, 0x3f800000    # 1.0f

    .line 202
    .line 203
    cmpg-float v13, v5, v12

    .line 204
    .line 205
    if-gez v13, :cond_b

    .line 206
    .line 207
    move v5, v11

    .line 208
    :cond_b
    cmpl-float v13, v4, v12

    .line 209
    .line 210
    if-ltz v13, :cond_c

    .line 211
    .line 212
    cmpl-float v13, v5, v4

    .line 213
    .line 214
    if-lez v13, :cond_c

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_c
    cmpl-float v4, v8, v12

    .line 218
    .line 219
    if-ltz v4, :cond_d

    .line 220
    .line 221
    cmpg-float v4, v5, v8

    .line 222
    .line 223
    if-gez v4, :cond_d

    .line 224
    .line 225
    move v4, v8

    .line 226
    goto :goto_6

    .line 227
    :cond_d
    move v4, v5

    .line 228
    :goto_6
    sub-float v5, v11, v4

    .line 229
    .line 230
    const v8, 0x3a83126f    # 0.001f

    .line 231
    .line 232
    .line 233
    cmpl-float v5, v5, v8

    .line 234
    .line 235
    const/4 v12, 0x1

    .line 236
    const/high16 v13, 0x3f000000    # 0.5f

    .line 237
    .line 238
    if-lez v5, :cond_10

    .line 239
    .line 240
    if-eqz v10, :cond_e

    .line 241
    .line 242
    iget v0, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mUserOrSystemMinAspectRatio:F

    .line 243
    .line 244
    const/high16 v5, -0x40800000    # -1.0f

    .line 245
    .line 246
    cmpl-float v0, v0, v5

    .line 247
    .line 248
    if-eqz v0, :cond_e

    .line 249
    .line 250
    const/4 v0, 0x0

    .line 251
    return v0

    .line 252
    :cond_e
    if-ge v6, v9, :cond_f

    .line 253
    .line 254
    int-to-float v0, v6

    .line 255
    mul-float/2addr v0, v4

    .line 256
    :goto_7
    add-float/2addr v0, v13

    .line 257
    float-to-int v0, v0

    .line 258
    move v4, v0

    .line 259
    move v0, v6

    .line 260
    goto :goto_b

    .line 261
    :cond_f
    int-to-float v0, v9

    .line 262
    mul-float/2addr v0, v4

    .line 263
    :goto_8
    add-float/2addr v0, v13

    .line 264
    float-to-int v0, v0

    .line 265
    :goto_9
    move v4, v9

    .line 266
    goto :goto_b

    .line 267
    :cond_10
    sub-float v0, v4, v11

    .line 268
    .line 269
    cmpl-float v0, v0, v8

    .line 270
    .line 271
    if-lez v0, :cond_13

    .line 272
    .line 273
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eq v0, v12, :cond_12

    .line 278
    .line 279
    const/4 v5, 0x2

    .line 280
    if-eq v0, v5, :cond_11

    .line 281
    .line 282
    if-ge v6, v9, :cond_11

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_11
    int-to-float v0, v6

    .line 286
    div-float/2addr v0, v4

    .line 287
    goto :goto_7

    .line 288
    :cond_12
    :goto_a
    int-to-float v0, v9

    .line 289
    div-float/2addr v0, v4

    .line 290
    goto :goto_8

    .line 291
    :cond_13
    move v0, v6

    .line 292
    goto :goto_9

    .line 293
    :goto_b
    if-gt v6, v0, :cond_14

    .line 294
    .line 295
    if-gt v9, v4, :cond_14

    .line 296
    .line 297
    const/4 v5, 0x0

    .line 298
    return v5

    .line 299
    :cond_14
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 300
    .line 301
    add-int/2addr v0, v5

    .line 302
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 303
    .line 304
    if-lt v0, v6, :cond_15

    .line 305
    .line 306
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 307
    .line 308
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 309
    .line 310
    :cond_15
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 311
    .line 312
    add-int/2addr v4, v6

    .line 313
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 314
    .line 315
    if-lt v4, v1, :cond_16

    .line 316
    .line 317
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 318
    .line 319
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 320
    .line 321
    :cond_16
    move-object/from16 v1, p1

    .line 322
    .line 323
    invoke-virtual {v1, v5, v6, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-nez v0, :cond_18

    .line 331
    .line 332
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->mCompatSandboxPolicy:Lcom/android/server/wm/CompatSandboxPolicy;

    .line 333
    .line 334
    if-nez v0, :cond_17

    .line 335
    .line 336
    new-instance v0, Lcom/android/server/wm/CompatSandboxPolicy;

    .line 337
    .line 338
    invoke-direct {v0, v3}, Lcom/android/server/wm/CompatSandboxPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 339
    .line 340
    .line 341
    iput-object v0, v3, Lcom/android/server/wm/ActivityRecord;->mCompatSandboxPolicy:Lcom/android/server/wm/CompatSandboxPolicy;

    .line 342
    .line 343
    :cond_17
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->mCompatSandboxPolicy:Lcom/android/server/wm/CompatSandboxPolicy;

    .line 344
    .line 345
    iget v1, v0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 346
    .line 347
    or-int/lit8 v1, v1, 0xc

    .line 348
    .line 349
    iput v1, v0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 350
    .line 351
    :cond_18
    return v12

    .line 352
    :goto_c
    return v0
.end method

.method public final getMinAspectRatio()F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, v0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 19
    .line 20
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserMinAspectRatioOverride()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatio()F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_2
    iget-object v3, v2, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    const-wide/32 v4, 0xa5faf64

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget-object v4, v2, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldOverrideMinAspectRatioForCamera()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :cond_3
    const-wide/32 v3, 0xc2368d6

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    return p0

    .line 100
    :cond_4
    const-wide/32 v3, 0xd0d1070

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-eqz p0, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 120
    .line 121
    const/4 v3, 0x1

    .line 122
    if-ne v0, v3, :cond_5

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-ne p0, v3, :cond_5

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    return p0

    .line 139
    :cond_5
    const-wide/32 v3, 0xc6fb886

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-eqz p0, :cond_6

    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    return p0

    .line 161
    :cond_6
    const-wide/32 v2, 0xabf9183

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_7

    .line 169
    .line 170
    const p0, 0x3fe38e39

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    return p0

    .line 182
    :cond_7
    const-wide/32 v2, 0xabf91bd

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-eqz p0, :cond_8

    .line 190
    .line 191
    const/high16 p0, 0x3fc00000    # 1.5f

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    return p0

    .line 202
    :cond_8
    const-wide/32 v2, 0x14ce0124

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    if-eqz p0, :cond_9

    .line 210
    .line 211
    const p0, 0x3faaaaab

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    return p0

    .line 223
    :cond_9
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    return p0
.end method

.method public final isLetterboxedForFixedOrientationAndAspectRatio()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isUserOrSystemMinAspectRatioApplied()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mUserOrSystemMinAspectRatio:F

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    cmpl-float p0, p0, v0

    .line 12
    .line 13
    if-eqz p0, :cond_0

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
