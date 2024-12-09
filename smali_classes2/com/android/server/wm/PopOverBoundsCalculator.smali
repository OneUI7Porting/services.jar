.class public abstract Lcom/android/server/wm/PopOverBoundsCalculator;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static getBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 15
    .line 16
    new-instance v3, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 41
    .line 42
    iget v3, v3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 43
    .line 44
    :goto_0
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v7, 0x1

    .line 78
    const/4 v8, 0x0

    .line 79
    if-eq v3, v7, :cond_4

    .line 80
    .line 81
    const/4 v9, 0x3

    .line 82
    if-ne v3, v9, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v9, v8

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    :goto_2
    move v9, v7

    .line 88
    :goto_3
    if-eqz v9, :cond_5

    .line 89
    .line 90
    iget v10, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    iget v10, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 94
    .line 95
    :goto_4
    if-eqz v9, :cond_6

    .line 96
    .line 97
    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 101
    .line 102
    :goto_5
    new-instance v11, Landroid/graphics/Rect;

    .line 103
    .line 104
    iget-object v12, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 105
    .line 106
    invoke-virtual {v12, v3, v10, v9}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    iget-object v9, v9, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-direct {v11, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 113
    .line 114
    .line 115
    iget v9, v11, Landroid/graphics/Rect;->top:I

    .line 116
    .line 117
    iget v10, v11, Landroid/graphics/Rect;->bottom:I

    .line 118
    .line 119
    invoke-virtual {v6, v8, v9, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    .line 121
    .line 122
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 123
    .line 124
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eqz v10, :cond_c

    .line 129
    .line 130
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_7

    .line 141
    .line 142
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 143
    .line 144
    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 145
    .line 146
    add-int/2addr p0, v3

    .line 147
    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 148
    .line 149
    :cond_7
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_8

    .line 154
    .line 155
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-eqz p0, :cond_a

    .line 160
    .line 161
    :cond_8
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_9

    .line 166
    .line 167
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    const/high16 v3, 0x42000000    # 32.0f

    .line 180
    .line 181
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v7, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    float-to-int v1, v1

    .line 190
    add-int/2addr v1, p0

    .line 191
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 192
    .line 193
    :cond_9
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 194
    .line 195
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    add-int/2addr v1, p0

    .line 200
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 201
    .line 202
    :cond_a
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 203
    .line 204
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_b

    .line 209
    .line 210
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 211
    .line 212
    :cond_b
    sub-int/2addr p0, v8

    .line 213
    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_c
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    if-eqz v8, :cond_d

    .line 221
    .line 222
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 223
    .line 224
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    add-int/2addr v1, p0

    .line 229
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_d
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-eqz v8, :cond_e

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    invoke-virtual {v1, v3, p0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    .line 252
    .line 253
    if-eqz v3, :cond_f

    .line 254
    .line 255
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    .line 256
    .line 257
    if-eqz v1, :cond_f

    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 260
    .line 261
    .line 262
    :cond_f
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 263
    .line 264
    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 265
    .line 266
    iget v8, p0, Landroid/graphics/Rect;->top:I

    .line 267
    .line 268
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    add-int/2addr v3, v1

    .line 273
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 274
    .line 275
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 276
    .line 277
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 278
    .line 279
    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    .line 280
    .line 281
    add-int/2addr v3, v8

    .line 282
    sub-int/2addr v1, v3

    .line 283
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 284
    .line 285
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 286
    .line 287
    iget v3, v6, Landroid/graphics/Rect;->left:I

    .line 288
    .line 289
    iget v8, p0, Landroid/graphics/Rect;->left:I

    .line 290
    .line 291
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    add-int/2addr v3, v1

    .line 296
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 297
    .line 298
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 299
    .line 300
    iget v3, v6, Landroid/graphics/Rect;->right:I

    .line 301
    .line 302
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 303
    .line 304
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    sub-int/2addr v1, p0

    .line 309
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 310
    .line 311
    :goto_6
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 312
    .line 313
    const/high16 v1, 0x41400000    # 12.0f

    .line 314
    .line 315
    mul-float/2addr v1, v5

    .line 316
    float-to-int v1, v1

    .line 317
    add-int/2addr p0, v1

    .line 318
    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 319
    .line 320
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 321
    .line 322
    const/high16 v3, 0x41800000    # 16.0f

    .line 323
    .line 324
    mul-float/2addr v3, v5

    .line 325
    float-to-int v3, v3

    .line 326
    sub-int/2addr p0, v3

    .line 327
    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 328
    .line 329
    iget p0, v2, Landroid/graphics/Rect;->left:I

    .line 330
    .line 331
    add-int/2addr p0, v1

    .line 332
    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 333
    .line 334
    iget p0, v2, Landroid/graphics/Rect;->right:I

    .line 335
    .line 336
    sub-int/2addr p0, v1

    .line 337
    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 338
    .line 339
    iget-object p0, v0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 340
    .line 341
    aget p0, p0, v4

    .line 342
    .line 343
    int-to-float p0, p0

    .line 344
    mul-float/2addr p0, v5

    .line 345
    float-to-int p0, p0

    .line 346
    iget-object v1, v0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 347
    .line 348
    aget v1, v1, v4

    .line 349
    .line 350
    int-to-float v1, v1

    .line 351
    mul-float/2addr v1, v5

    .line 352
    float-to-int v1, v1

    .line 353
    iget-object v3, v0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 354
    .line 355
    aget v3, v3, v4

    .line 356
    .line 357
    iget-object v0, v0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    .line 358
    .line 359
    aget-object v0, v0, v4

    .line 360
    .line 361
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 362
    .line 363
    int-to-float v4, v4

    .line 364
    mul-float/2addr v4, v5

    .line 365
    float-to-int v4, v4

    .line 366
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 367
    .line 368
    int-to-float v0, v0

    .line 369
    mul-float/2addr v0, v5

    .line 370
    float-to-int v0, v0

    .line 371
    new-instance v5, Landroid/graphics/Rect;

    .line 372
    .line 373
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 374
    .line 375
    .line 376
    and-int/lit8 v6, v3, 0x70

    .line 377
    .line 378
    const/16 v8, 0x10

    .line 379
    .line 380
    const/4 v9, 0x2

    .line 381
    if-eq v6, v8, :cond_12

    .line 382
    .line 383
    const/16 v8, 0x20

    .line 384
    .line 385
    if-eq v6, v8, :cond_11

    .line 386
    .line 387
    const/16 v4, 0x40

    .line 388
    .line 389
    if-eq v6, v4, :cond_10

    .line 390
    .line 391
    goto :goto_7

    .line 392
    :cond_10
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 393
    .line 394
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    div-int/2addr v6, v9

    .line 399
    add-int/2addr v6, v4

    .line 400
    div-int/lit8 v4, p0, 0x2

    .line 401
    .line 402
    sub-int/2addr v6, v4

    .line 403
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 404
    .line 405
    add-int/2addr v6, p0

    .line 406
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 407
    .line 408
    goto :goto_7

    .line 409
    :cond_11
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 410
    .line 411
    sub-int/2addr v6, v4

    .line 412
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 413
    .line 414
    sub-int/2addr v6, p0

    .line 415
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 416
    .line 417
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 418
    .line 419
    if-ge v6, v4, :cond_13

    .line 420
    .line 421
    add-int/2addr p0, v4

    .line 422
    iput p0, v5, Landroid/graphics/Rect;->right:I

    .line 423
    .line 424
    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 425
    .line 426
    goto :goto_7

    .line 427
    :cond_12
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 428
    .line 429
    add-int/2addr v6, v4

    .line 430
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 431
    .line 432
    add-int/2addr v6, p0

    .line 433
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 434
    .line 435
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 436
    .line 437
    if-ge v4, v6, :cond_13

    .line 438
    .line 439
    sub-int p0, v4, p0

    .line 440
    .line 441
    iput p0, v5, Landroid/graphics/Rect;->left:I

    .line 442
    .line 443
    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 444
    .line 445
    :cond_13
    :goto_7
    and-int/lit8 p0, v3, 0x7

    .line 446
    .line 447
    if-eq p0, v7, :cond_16

    .line 448
    .line 449
    if-eq p0, v9, :cond_15

    .line 450
    .line 451
    const/4 v0, 0x4

    .line 452
    if-eq p0, v0, :cond_14

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_14
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 456
    .line 457
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    div-int/2addr v0, v9

    .line 462
    add-int/2addr v0, p0

    .line 463
    div-int/lit8 p0, v1, 0x2

    .line 464
    .line 465
    sub-int/2addr v0, p0

    .line 466
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 467
    .line 468
    add-int/2addr v0, v1

    .line 469
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_15
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 473
    .line 474
    sub-int/2addr p0, v0

    .line 475
    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    .line 476
    .line 477
    sub-int/2addr p0, v1

    .line 478
    iput p0, v5, Landroid/graphics/Rect;->top:I

    .line 479
    .line 480
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 481
    .line 482
    if-ge p0, v0, :cond_17

    .line 483
    .line 484
    add-int/2addr v1, v0

    .line 485
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 486
    .line 487
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 488
    .line 489
    goto :goto_8

    .line 490
    :cond_16
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 491
    .line 492
    add-int/2addr p0, v0

    .line 493
    iput p0, v5, Landroid/graphics/Rect;->top:I

    .line 494
    .line 495
    add-int/2addr p0, v1

    .line 496
    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    .line 497
    .line 498
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 499
    .line 500
    if-ge v0, p0, :cond_17

    .line 501
    .line 502
    sub-int p0, v0, v1

    .line 503
    .line 504
    iput p0, v5, Landroid/graphics/Rect;->top:I

    .line 505
    .line 506
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 507
    .line 508
    :cond_17
    :goto_8
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 509
    .line 510
    .line 511
    return-object v5
.end method
