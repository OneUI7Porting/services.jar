.class public final Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/Swipe;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;->val$displayId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    .line 7
    .line 8
    iget v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;->val$displayId:I

    .line 9
    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v13

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v7

    .line 21
    iget-object v5, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    new-array v15, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 28
    .line 29
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    .line 30
    .line 31
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 32
    .line 33
    .line 34
    aput-object v6, v15, v2

    .line 35
    .line 36
    iget-object v9, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 37
    .line 38
    invoke-virtual {v9, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-string/jumbo v6, "input"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v12, v5

    .line 51
    check-cast v12, Landroid/hardware/input/InputManager;

    .line 52
    .line 53
    if-nez v12, :cond_0

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_0
    aget-object v5, v15, v2

    .line 58
    .line 59
    iget v10, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 60
    .line 61
    iget v11, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 62
    .line 63
    const/16 v16, 0x1

    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    move-wide v5, v13

    .line 67
    move-object v3, v12

    .line 68
    move/from16 v12, v16

    .line 69
    .line 70
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/16 v12, 0x1002

    .line 75
    .line 76
    invoke-virtual {v5, v12}, Landroid/view/MotionEvent;->setSource(I)V

    .line 77
    .line 78
    .line 79
    const/high16 v11, 0x800000

    .line 80
    .line 81
    invoke-virtual {v5, v11}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v5, v1}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 91
    .line 92
    .line 93
    iget-object v5, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    const-string/jumbo v6, "display"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 103
    .line 104
    invoke-virtual {v5, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    new-instance v6, Landroid/view/DisplayInfo;

    .line 109
    .line 110
    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 114
    .line 115
    .line 116
    iget v5, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 117
    .line 118
    iget-object v4, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    const/high16 v6, 0x41100000    # 9.0f

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    const/high16 v16, 0x40c00000    # 6.0f

    .line 127
    .line 128
    const/4 v8, -0x1

    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    sparse-switch v9, :sswitch_data_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :sswitch_0
    const-string/jumbo v9, "swipe_right"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    const/4 v8, 0x3

    .line 148
    goto :goto_0

    .line 149
    :sswitch_1
    const-string/jumbo v9, "swipe_left"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_2

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    move v8, v1

    .line 160
    goto :goto_0

    .line 161
    :sswitch_2
    const-string/jumbo v9, "swipe_down"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-nez v4, :cond_3

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_3
    const/4 v8, 0x1

    .line 172
    goto :goto_0

    .line 173
    :sswitch_3
    const-string/jumbo v9, "swipe_up"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-nez v4, :cond_4

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_4
    move v8, v2

    .line 184
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 185
    .line 186
    .line 187
    move v4, v7

    .line 188
    move/from16 v17, v4

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :pswitch_0
    int-to-float v4, v5

    .line 192
    div-float v5, v4, v6

    .line 193
    .line 194
    aget-object v6, v15, v2

    .line 195
    .line 196
    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 197
    .line 198
    mul-float v8, v5, v16

    .line 199
    .line 200
    add-float/2addr v8, v6

    .line 201
    cmpl-float v8, v8, v4

    .line 202
    .line 203
    if-lez v8, :cond_6

    .line 204
    .line 205
    sub-float/2addr v4, v6

    .line 206
    :goto_1
    div-float v4, v4, v16

    .line 207
    .line 208
    :cond_5
    move/from16 v17, v4

    .line 209
    .line 210
    :goto_2
    move v4, v7

    .line 211
    goto :goto_4

    .line 212
    :cond_6
    move/from16 v17, v5

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :pswitch_1
    neg-int v4, v5

    .line 216
    int-to-float v4, v4

    .line 217
    div-float/2addr v4, v6

    .line 218
    aget-object v5, v15, v2

    .line 219
    .line 220
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 221
    .line 222
    mul-float v6, v4, v16

    .line 223
    .line 224
    add-float/2addr v6, v5

    .line 225
    cmpg-float v6, v6, v7

    .line 226
    .line 227
    if-gez v6, :cond_5

    .line 228
    .line 229
    neg-float v4, v5

    .line 230
    goto :goto_1

    .line 231
    :pswitch_2
    const/high16 v4, 0x42c80000    # 100.0f

    .line 232
    .line 233
    :goto_3
    move/from16 v17, v7

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :pswitch_3
    const/high16 v4, -0x3d380000    # -100.0f

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :goto_4
    move v10, v2

    .line 240
    :goto_5
    int-to-float v5, v10

    .line 241
    cmpg-float v5, v5, v16

    .line 242
    .line 243
    if-gez v5, :cond_7

    .line 244
    .line 245
    aget-object v5, v15, v2

    .line 246
    .line 247
    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 248
    .line 249
    add-float v6, v6, v17

    .line 250
    .line 251
    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 252
    .line 253
    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 254
    .line 255
    add-float/2addr v6, v4

    .line 256
    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 257
    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 259
    .line 260
    .line 261
    move-result-wide v7

    .line 262
    aget-object v5, v15, v2

    .line 263
    .line 264
    iget v9, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 265
    .line 266
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 267
    .line 268
    const/16 v18, 0x1

    .line 269
    .line 270
    const/16 v19, 0x2

    .line 271
    .line 272
    move/from16 v20, v5

    .line 273
    .line 274
    move-wide v5, v13

    .line 275
    move/from16 v21, v9

    .line 276
    .line 277
    move/from16 v9, v19

    .line 278
    .line 279
    move/from16 v19, v10

    .line 280
    .line 281
    move/from16 v10, v21

    .line 282
    .line 283
    move v2, v11

    .line 284
    move/from16 v11, v20

    .line 285
    .line 286
    move v1, v12

    .line 287
    move/from16 v12, v18

    .line 288
    .line 289
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v5, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 300
    .line 301
    .line 302
    const/4 v6, 0x2

    .line 303
    invoke-virtual {v3, v5, v6}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 307
    .line 308
    .line 309
    const/4 v5, 0x1

    .line 310
    add-int/lit8 v10, v19, 0x1

    .line 311
    .line 312
    move v12, v1

    .line 313
    move v11, v2

    .line 314
    const/4 v1, 0x2

    .line 315
    const/4 v2, 0x0

    .line 316
    goto :goto_5

    .line 317
    :cond_7
    move v2, v11

    .line 318
    move v1, v12

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 320
    .line 321
    .line 322
    move-result-wide v7

    .line 323
    const/4 v4, 0x0

    .line 324
    aget-object v4, v15, v4

    .line 325
    .line 326
    iget v10, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 327
    .line 328
    iget v11, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 329
    .line 330
    const/4 v12, 0x1

    .line 331
    const/4 v9, 0x1

    .line 332
    move-wide v5, v13

    .line 333
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 344
    .line 345
    .line 346
    const/4 v0, 0x2

    .line 347
    invoke-virtual {v3, v4, v0}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 351
    .line 352
    .line 353
    :goto_6
    return-void

    .line 354
    nop

    .line 355
    :sswitch_data_0
    .sparse-switch
        -0x54cce40 -> :sswitch_3
        0x1aa61287 -> :sswitch_2
        0x1aa98dec -> :sswitch_1
        0x3ade90d7 -> :sswitch_0
    .end sparse-switch

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
