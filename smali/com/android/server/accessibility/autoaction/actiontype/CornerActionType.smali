.class public abstract Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "input"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    sparse-switch v4, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :sswitch_0
    const-string/jumbo v4, "double_click"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    const/16 v3, 0x9

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :sswitch_1
    const-string/jumbo v4, "swipe_right"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_1
    const/16 v3, 0x8

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :sswitch_2
    const-string/jumbo v4, "zoom_out"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v3, 0x7

    .line 60
    goto :goto_0

    .line 61
    :sswitch_3
    const-string/jumbo v4, "swipe_left"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v3, 0x6

    .line 72
    goto :goto_0

    .line 73
    :sswitch_4
    const-string/jumbo v4, "swipe_down"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 v3, 0x5

    .line 84
    goto :goto_0

    .line 85
    :sswitch_5
    const-string/jumbo v4, "drag_and_drop"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    const/4 v3, 0x4

    .line 96
    goto :goto_0

    .line 97
    :sswitch_6
    const-string/jumbo v4, "drag"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    const/4 v3, 0x3

    .line 108
    goto :goto_0

    .line 109
    :sswitch_7
    const-string/jumbo v4, "swipe_up"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_7

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_7
    const/4 v3, 0x2

    .line 120
    goto :goto_0

    .line 121
    :sswitch_8
    const-string/jumbo v4, "zoom_in"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_8

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_8
    move v3, v0

    .line 132
    goto :goto_0

    .line 133
    :sswitch_9
    const-string/jumbo v4, "click_and_hold"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_9

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_9
    const/4 v3, 0x0

    .line 144
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 145
    .line 146
    .line 147
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    const-string p1, "Wrong Corner Action Type"

    .line 150
    .line 151
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :pswitch_0
    new-instance p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;

    .line 156
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 167
    .line 168
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    .line 169
    .line 170
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_1
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 183
    .line 184
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    .line 185
    .line 186
    iput-object p1, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 195
    .line 196
    new-instance p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 197
    .line 198
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    .line 199
    .line 200
    .line 201
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 202
    .line 203
    new-instance p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 204
    .line 205
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    .line 206
    .line 207
    .line 208
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 209
    .line 210
    return-object v1

    .line 211
    :pswitch_2
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 217
    .line 218
    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 227
    .line 228
    return-object v0

    .line 229
    :pswitch_3
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    .line 230
    .line 231
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 232
    .line 233
    .line 234
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 235
    .line 236
    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    .line 237
    .line 238
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 243
    .line 244
    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 245
    .line 246
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mType:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 253
    .line 254
    return-object v0

    .line 255
    :pswitch_4
    new-instance p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    .line 256
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    .line 259
    .line 260
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 261
    .line 262
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 269
    .line 270
    return-object p0

    .line 271
    :sswitch_data_0
    .sparse-switch
        -0x643f1902 -> :sswitch_9
        -0x68ea6ef -> :sswitch_8
        -0x54cce40 -> :sswitch_7
        0x2f2d34 -> :sswitch_6
        0x19319b02 -> :sswitch_5
        0x1aa61287 -> :sswitch_4
        0x1aa98dec -> :sswitch_3
        0x34b9e0e2 -> :sswitch_2
        0x3ade90d7 -> :sswitch_1
        0x51e7c39a -> :sswitch_0
    .end sparse-switch

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getTitleResId(Ljava/lang/String;)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "swipe_right"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "zoom_out"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "media_volume_down"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "swipe_left"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "swipe_down"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v6, "drag_and_drop"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v7, "increase_brightness"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v8, "home"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v9, "drag"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v10, "back"

    .line 31
    .line 32
    .line 33
    const-string/jumbo v11, "swipe_up"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v12, "zoom_in"

    .line 37
    .line 38
    .line 39
    const-string/jumbo v13, "reduce_brightness"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v14, "sound_vibrate_mute"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v15, "ringtone_volume_up"

    .line 46
    .line 47
    .line 48
    move-object/from16 v16, v15

    .line 49
    .line 50
    const-string v15, "accessibility_button"

    .line 51
    .line 52
    const/16 v17, 0x3

    .line 53
    .line 54
    const/16 v18, 0x2

    .line 55
    .line 56
    const/16 v19, 0x1

    .line 57
    .line 58
    const/16 v20, 0x0

    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-object/from16 v21, v15

    .line 64
    .line 65
    const-string v15, "Wrong Swipe Type"

    .line 66
    .line 67
    const/16 v22, -0x1

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v23

    .line 73
    sparse-switch v23, :sswitch_data_0

    .line 74
    .line 75
    .line 76
    move-object/from16 v23, v15

    .line 77
    .line 78
    :goto_0
    move-object/from16 v15, v16

    .line 79
    .line 80
    :goto_1
    move-object/from16 v16, v10

    .line 81
    .line 82
    :goto_2
    move/from16 v10, v22

    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :sswitch_0
    move-object/from16 v23, v15

    .line 87
    .line 88
    const-string/jumbo v15, "open_close_quick_panel"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    if-nez v15, :cond_0

    .line 96
    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_0
    const/16 v15, 0x1f

    .line 100
    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :sswitch_1
    move-object/from16 v23, v15

    .line 104
    .line 105
    const-string/jumbo v15, "ringtone_volume_down"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    if-nez v15, :cond_1

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :cond_1
    const/16 v15, 0x1e

    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :sswitch_2
    move-object/from16 v23, v15

    .line 121
    .line 122
    const-string/jumbo v15, "pause_auto_click"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    if-nez v15, :cond_2

    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_2
    const/16 v15, 0x1d

    .line 134
    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :sswitch_3
    move-object/from16 v23, v15

    .line 138
    .line 139
    const-string/jumbo v15, "resume_auto_click"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    if-nez v15, :cond_3

    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :cond_3
    const/16 v15, 0x1c

    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :sswitch_4
    move-object/from16 v23, v15

    .line 155
    .line 156
    const-string/jumbo v15, "double_click"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-nez v15, :cond_4

    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    :cond_4
    const/16 v15, 0x1b

    .line 168
    .line 169
    goto/16 :goto_4

    .line 170
    .line 171
    :sswitch_5
    move-object/from16 v23, v15

    .line 172
    .line 173
    const-string/jumbo v15, "media_volume_up"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    if-nez v15, :cond_5

    .line 181
    .line 182
    goto/16 :goto_3

    .line 183
    .line 184
    :cond_5
    const/16 v15, 0x1a

    .line 185
    .line 186
    goto/16 :goto_4

    .line 187
    .line 188
    :sswitch_6
    move-object/from16 v23, v15

    .line 189
    .line 190
    const-string/jumbo v15, "recents"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    if-nez v15, :cond_6

    .line 198
    .line 199
    goto/16 :goto_3

    .line 200
    .line 201
    :cond_6
    const/16 v15, 0x19

    .line 202
    .line 203
    goto/16 :goto_4

    .line 204
    .line 205
    :sswitch_7
    move-object/from16 v23, v15

    .line 206
    .line 207
    const-string/jumbo v15, "send_sos_messages"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    if-nez v15, :cond_7

    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_7
    const/16 v15, 0x18

    .line 219
    .line 220
    goto/16 :goto_4

    .line 221
    .line 222
    :sswitch_8
    move-object/from16 v23, v15

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v15

    .line 228
    if-nez v15, :cond_8

    .line 229
    .line 230
    goto/16 :goto_3

    .line 231
    .line 232
    :cond_8
    const/16 v15, 0x17

    .line 233
    .line 234
    goto/16 :goto_4

    .line 235
    .line 236
    :sswitch_9
    move-object/from16 v23, v15

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v15

    .line 242
    if-nez v15, :cond_9

    .line 243
    .line 244
    goto/16 :goto_3

    .line 245
    .line 246
    :cond_9
    const/16 v15, 0x16

    .line 247
    .line 248
    goto/16 :goto_4

    .line 249
    .line 250
    :sswitch_a
    move-object/from16 v23, v15

    .line 251
    .line 252
    const-string/jumbo v15, "power_off_menu"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    if-nez v15, :cond_a

    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_a
    const/16 v15, 0x15

    .line 264
    .line 265
    goto/16 :goto_4

    .line 266
    .line 267
    :sswitch_b
    move-object/from16 v23, v15

    .line 268
    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v15

    .line 273
    if-nez v15, :cond_b

    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :cond_b
    const/16 v15, 0x14

    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :sswitch_c
    move-object/from16 v23, v15

    .line 282
    .line 283
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v15

    .line 287
    if-nez v15, :cond_c

    .line 288
    .line 289
    goto/16 :goto_3

    .line 290
    .line 291
    :cond_c
    const/16 v15, 0x13

    .line 292
    .line 293
    goto/16 :goto_4

    .line 294
    .line 295
    :sswitch_d
    move-object/from16 v23, v15

    .line 296
    .line 297
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v15

    .line 301
    if-nez v15, :cond_d

    .line 302
    .line 303
    goto/16 :goto_3

    .line 304
    .line 305
    :cond_d
    const/16 v15, 0x12

    .line 306
    .line 307
    goto/16 :goto_4

    .line 308
    .line 309
    :sswitch_e
    move-object/from16 v23, v15

    .line 310
    .line 311
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v15

    .line 315
    if-nez v15, :cond_e

    .line 316
    .line 317
    goto/16 :goto_3

    .line 318
    .line 319
    :cond_e
    const/16 v15, 0x11

    .line 320
    .line 321
    goto/16 :goto_4

    .line 322
    .line 323
    :sswitch_f
    move-object/from16 v23, v15

    .line 324
    .line 325
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v15

    .line 329
    if-nez v15, :cond_f

    .line 330
    .line 331
    goto/16 :goto_3

    .line 332
    .line 333
    :cond_f
    const/16 v15, 0x10

    .line 334
    .line 335
    goto/16 :goto_4

    .line 336
    .line 337
    :sswitch_10
    move-object/from16 v23, v15

    .line 338
    .line 339
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v15

    .line 343
    if-nez v15, :cond_10

    .line 344
    .line 345
    goto/16 :goto_3

    .line 346
    .line 347
    :cond_10
    const/16 v15, 0xf

    .line 348
    .line 349
    goto/16 :goto_4

    .line 350
    .line 351
    :sswitch_11
    move-object/from16 v23, v15

    .line 352
    .line 353
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v15

    .line 357
    if-nez v15, :cond_11

    .line 358
    .line 359
    goto/16 :goto_3

    .line 360
    .line 361
    :cond_11
    const/16 v15, 0xe

    .line 362
    .line 363
    goto/16 :goto_4

    .line 364
    .line 365
    :sswitch_12
    move-object/from16 v23, v15

    .line 366
    .line 367
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v15

    .line 371
    if-nez v15, :cond_12

    .line 372
    .line 373
    goto/16 :goto_3

    .line 374
    .line 375
    :cond_12
    const/16 v15, 0xd

    .line 376
    .line 377
    goto/16 :goto_4

    .line 378
    .line 379
    :sswitch_13
    move-object/from16 v23, v15

    .line 380
    .line 381
    const-string/jumbo v15, "screen_shot"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v15

    .line 388
    if-nez v15, :cond_13

    .line 389
    .line 390
    goto/16 :goto_3

    .line 391
    .line 392
    :cond_13
    const/16 v15, 0xc

    .line 393
    .line 394
    goto/16 :goto_4

    .line 395
    .line 396
    :sswitch_14
    move-object/from16 v23, v15

    .line 397
    .line 398
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v15

    .line 402
    if-nez v15, :cond_14

    .line 403
    .line 404
    goto :goto_3

    .line 405
    :cond_14
    const/16 v15, 0xb

    .line 406
    .line 407
    goto :goto_4

    .line 408
    :sswitch_15
    move-object/from16 v23, v15

    .line 409
    .line 410
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v15

    .line 414
    if-nez v15, :cond_15

    .line 415
    .line 416
    goto :goto_3

    .line 417
    :cond_15
    const/16 v15, 0xa

    .line 418
    .line 419
    goto :goto_4

    .line 420
    :sswitch_16
    move-object/from16 v23, v15

    .line 421
    .line 422
    const-string/jumbo v15, "sound_mute"

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v15

    .line 429
    if-nez v15, :cond_16

    .line 430
    .line 431
    goto :goto_3

    .line 432
    :cond_16
    const/16 v15, 0x9

    .line 433
    .line 434
    goto :goto_4

    .line 435
    :sswitch_17
    move-object/from16 v23, v15

    .line 436
    .line 437
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v15

    .line 441
    if-nez v15, :cond_17

    .line 442
    .line 443
    goto :goto_3

    .line 444
    :cond_17
    const/16 v15, 0x8

    .line 445
    .line 446
    goto :goto_4

    .line 447
    :sswitch_18
    move-object/from16 v23, v15

    .line 448
    .line 449
    const-string/jumbo v15, "screen_off"

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v15

    .line 456
    if-nez v15, :cond_18

    .line 457
    .line 458
    goto :goto_3

    .line 459
    :cond_18
    const/4 v15, 0x7

    .line 460
    goto :goto_4

    .line 461
    :sswitch_19
    move-object/from16 v23, v15

    .line 462
    .line 463
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v15

    .line 467
    if-nez v15, :cond_19

    .line 468
    .line 469
    goto :goto_3

    .line 470
    :cond_19
    const/4 v15, 0x6

    .line 471
    goto :goto_4

    .line 472
    :sswitch_1a
    move-object/from16 v23, v15

    .line 473
    .line 474
    const-string/jumbo v15, "screen_rotation"

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v15

    .line 481
    if-nez v15, :cond_1a

    .line 482
    .line 483
    :goto_3
    goto/16 :goto_0

    .line 484
    .line 485
    :cond_1a
    const/4 v15, 0x5

    .line 486
    :goto_4
    move-object/from16 v24, v16

    .line 487
    .line 488
    move-object/from16 v16, v10

    .line 489
    .line 490
    move v10, v15

    .line 491
    move-object/from16 v15, v24

    .line 492
    .line 493
    goto/16 :goto_6

    .line 494
    .line 495
    :sswitch_1b
    move-object/from16 v23, v15

    .line 496
    .line 497
    move-object/from16 v15, v16

    .line 498
    .line 499
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v16

    .line 503
    if-nez v16, :cond_1b

    .line 504
    .line 505
    goto/16 :goto_1

    .line 506
    .line 507
    :cond_1b
    move-object/from16 v16, v10

    .line 508
    .line 509
    const/4 v10, 0x4

    .line 510
    goto :goto_6

    .line 511
    :sswitch_1c
    move-object/from16 v23, v15

    .line 512
    .line 513
    move-object/from16 v15, v16

    .line 514
    .line 515
    move-object/from16 v16, v10

    .line 516
    .line 517
    const-string/jumbo v10, "click_and_hold"

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v10

    .line 524
    if-nez v10, :cond_1c

    .line 525
    .line 526
    goto :goto_5

    .line 527
    :cond_1c
    move/from16 v10, v17

    .line 528
    .line 529
    goto :goto_6

    .line 530
    :sswitch_1d
    move-object/from16 v23, v15

    .line 531
    .line 532
    move-object/from16 v15, v16

    .line 533
    .line 534
    move-object/from16 v16, v10

    .line 535
    .line 536
    const-string/jumbo v10, "talk_to_bixby"

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v10

    .line 543
    if-nez v10, :cond_1d

    .line 544
    .line 545
    goto :goto_5

    .line 546
    :cond_1d
    move/from16 v10, v18

    .line 547
    .line 548
    goto :goto_6

    .line 549
    :sswitch_1e
    move-object/from16 v23, v15

    .line 550
    .line 551
    move-object/from16 v15, v16

    .line 552
    .line 553
    move-object/from16 v16, v10

    .line 554
    .line 555
    move-object/from16 v10, v21

    .line 556
    .line 557
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v21

    .line 561
    if-nez v21, :cond_1e

    .line 562
    .line 563
    move-object/from16 v21, v10

    .line 564
    .line 565
    goto/16 :goto_2

    .line 566
    .line 567
    :cond_1e
    move-object/from16 v21, v10

    .line 568
    .line 569
    move/from16 v10, v19

    .line 570
    .line 571
    goto :goto_6

    .line 572
    :sswitch_1f
    move-object/from16 v23, v15

    .line 573
    .line 574
    move-object/from16 v15, v16

    .line 575
    .line 576
    move-object/from16 v16, v10

    .line 577
    .line 578
    const-string/jumbo v10, "open_close_notifications"

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v10

    .line 585
    if-nez v10, :cond_1f

    .line 586
    .line 587
    :goto_5
    goto/16 :goto_2

    .line 588
    .line 589
    :cond_1f
    move/from16 v10, v20

    .line 590
    .line 591
    :goto_6
    packed-switch v10, :pswitch_data_0

    .line 592
    .line 593
    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 595
    .line 596
    const-string v1, "Wrong Corner Action Type"

    .line 597
    .line 598
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    throw v0

    .line 602
    :pswitch_0
    const v0, 0x104011f

    .line 603
    .line 604
    .line 605
    return v0

    .line 606
    :pswitch_1
    const v0, 0x1040120

    .line 607
    .line 608
    .line 609
    return v0

    .line 610
    :pswitch_2
    const v0, 0x1040124

    .line 611
    .line 612
    .line 613
    return v0

    .line 614
    :pswitch_3
    const v0, 0x1040117

    .line 615
    .line 616
    .line 617
    return v0

    .line 618
    :pswitch_4
    const v0, 0x104012a

    .line 619
    .line 620
    .line 621
    return v0

    .line 622
    :pswitch_5
    const v0, 0x1040121

    .line 623
    .line 624
    .line 625
    return v0

    .line 626
    :pswitch_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    if-nez v1, :cond_21

    .line 631
    .line 632
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_20

    .line 637
    .line 638
    const v0, 0x1040119

    .line 639
    .line 640
    .line 641
    goto :goto_7

    .line 642
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 643
    .line 644
    move-object/from16 v2, v23

    .line 645
    .line 646
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    throw v0

    .line 650
    :cond_21
    const v0, 0x1040118

    .line 651
    .line 652
    .line 653
    :goto_7
    return v0

    .line 654
    :pswitch_7
    const v0, 0x1040129

    .line 655
    .line 656
    .line 657
    return v0

    .line 658
    :pswitch_8
    move-object/from16 v2, v23

    .line 659
    .line 660
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    sparse-switch v3, :sswitch_data_1

    .line 665
    .line 666
    .line 667
    :goto_8
    move/from16 v17, v22

    .line 668
    .line 669
    goto :goto_9

    .line 670
    :sswitch_20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    if-nez v0, :cond_25

    .line 675
    .line 676
    goto :goto_8

    .line 677
    :sswitch_21
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-nez v0, :cond_22

    .line 682
    .line 683
    goto :goto_8

    .line 684
    :cond_22
    move/from16 v17, v18

    .line 685
    .line 686
    goto :goto_9

    .line 687
    :sswitch_22
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    if-nez v0, :cond_23

    .line 692
    .line 693
    goto :goto_8

    .line 694
    :cond_23
    move/from16 v17, v19

    .line 695
    .line 696
    goto :goto_9

    .line 697
    :sswitch_23
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-result v0

    .line 701
    if-nez v0, :cond_24

    .line 702
    .line 703
    goto :goto_8

    .line 704
    :cond_24
    move/from16 v17, v20

    .line 705
    .line 706
    :cond_25
    :goto_9
    packed-switch v17, :pswitch_data_1

    .line 707
    .line 708
    .line 709
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 710
    .line 711
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    throw v0

    .line 715
    :pswitch_9
    const v0, 0x104012f

    .line 716
    .line 717
    .line 718
    goto :goto_a

    .line 719
    :pswitch_a
    const v0, 0x104012e

    .line 720
    .line 721
    .line 722
    goto :goto_a

    .line 723
    :pswitch_b
    const v0, 0x104012d

    .line 724
    .line 725
    .line 726
    goto :goto_a

    .line 727
    :pswitch_c
    const v0, 0x1040130

    .line 728
    .line 729
    .line 730
    :goto_a
    return v0

    .line 731
    :pswitch_d
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    if-nez v1, :cond_27

    .line 736
    .line 737
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-eqz v0, :cond_26

    .line 742
    .line 743
    const v0, 0x1040133

    .line 744
    .line 745
    .line 746
    goto :goto_b

    .line 747
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 748
    .line 749
    const-string v1, "Wrong Zoom Type"

    .line 750
    .line 751
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    throw v0

    .line 755
    :cond_27
    const v0, 0x1040132

    .line 756
    .line 757
    .line 758
    :goto_b
    return v0

    .line 759
    :pswitch_e
    const v0, 0x104012b

    .line 760
    .line 761
    .line 762
    return v0

    .line 763
    :pswitch_f
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    if-nez v1, :cond_29

    .line 768
    .line 769
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-eqz v0, :cond_28

    .line 774
    .line 775
    const v0, 0x104011b

    .line 776
    .line 777
    .line 778
    goto :goto_c

    .line 779
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 780
    .line 781
    const-string v1, "Wrong Brightness Action Type"

    .line 782
    .line 783
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    throw v0

    .line 787
    :cond_29
    const v0, 0x1040123

    .line 788
    .line 789
    .line 790
    :goto_c
    return v0

    .line 791
    :pswitch_10
    const v0, 0x1040127

    .line 792
    .line 793
    .line 794
    return v0

    .line 795
    :pswitch_11
    const v0, 0x1040128

    .line 796
    .line 797
    .line 798
    return v0

    .line 799
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    sparse-switch v1, :sswitch_data_2

    .line 804
    .line 805
    .line 806
    :goto_d
    move/from16 v15, v22

    .line 807
    .line 808
    goto :goto_e

    .line 809
    :sswitch_24
    const-string/jumbo v1, "ringtone_volume_down"

    .line 810
    .line 811
    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v0

    .line 816
    if-nez v0, :cond_2a

    .line 817
    .line 818
    goto :goto_d

    .line 819
    :cond_2a
    const/4 v15, 0x4

    .line 820
    goto :goto_e

    .line 821
    :sswitch_25
    const-string/jumbo v1, "media_volume_up"

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    if-nez v0, :cond_2b

    .line 829
    .line 830
    goto :goto_d

    .line 831
    :cond_2b
    move/from16 v15, v17

    .line 832
    .line 833
    goto :goto_e

    .line 834
    :sswitch_26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    if-nez v0, :cond_2c

    .line 839
    .line 840
    goto :goto_d

    .line 841
    :cond_2c
    move/from16 v15, v18

    .line 842
    .line 843
    goto :goto_e

    .line 844
    :sswitch_27
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result v0

    .line 848
    if-nez v0, :cond_2d

    .line 849
    .line 850
    goto :goto_d

    .line 851
    :cond_2d
    move/from16 v15, v19

    .line 852
    .line 853
    goto :goto_e

    .line 854
    :sswitch_28
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    move-result v0

    .line 858
    if-nez v0, :cond_2e

    .line 859
    .line 860
    goto :goto_d

    .line 861
    :cond_2e
    move/from16 v15, v20

    .line 862
    .line 863
    :goto_e
    packed-switch v15, :pswitch_data_2

    .line 864
    .line 865
    .line 866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 867
    .line 868
    const-string v1, "Wrong Sound Action Type"

    .line 869
    .line 870
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    throw v0

    .line 874
    :pswitch_13
    const v0, 0x1040125

    .line 875
    .line 876
    .line 877
    goto :goto_f

    .line 878
    :pswitch_14
    const v0, 0x104011d

    .line 879
    .line 880
    .line 881
    goto :goto_f

    .line 882
    :pswitch_15
    const v0, 0x104011c

    .line 883
    .line 884
    .line 885
    goto :goto_f

    .line 886
    :pswitch_16
    const v0, 0x104012c

    .line 887
    .line 888
    .line 889
    goto :goto_f

    .line 890
    :pswitch_17
    const v0, 0x1040126

    .line 891
    .line 892
    .line 893
    :goto_f
    return v0

    .line 894
    :pswitch_18
    const v0, 0x1040116

    .line 895
    .line 896
    .line 897
    return v0

    .line 898
    :pswitch_19
    const v0, 0x1040131

    .line 899
    .line 900
    .line 901
    return v0

    .line 902
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 903
    .line 904
    .line 905
    move-result v1

    .line 906
    sparse-switch v1, :sswitch_data_3

    .line 907
    .line 908
    .line 909
    :goto_10
    move/from16 v17, v22

    .line 910
    .line 911
    goto :goto_11

    .line 912
    :sswitch_29
    const-string/jumbo v1, "recents"

    .line 913
    .line 914
    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    move-result v0

    .line 919
    if-nez v0, :cond_32

    .line 920
    .line 921
    goto :goto_10

    .line 922
    :sswitch_2a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    move-result v0

    .line 926
    if-nez v0, :cond_2f

    .line 927
    .line 928
    goto :goto_10

    .line 929
    :cond_2f
    move/from16 v17, v18

    .line 930
    .line 931
    goto :goto_11

    .line 932
    :sswitch_2b
    move-object/from16 v1, v16

    .line 933
    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v0

    .line 938
    if-nez v0, :cond_30

    .line 939
    .line 940
    goto :goto_10

    .line 941
    :cond_30
    move/from16 v17, v19

    .line 942
    .line 943
    goto :goto_11

    .line 944
    :sswitch_2c
    move-object/from16 v1, v21

    .line 945
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 947
    .line 948
    .line 949
    move-result v0

    .line 950
    if-nez v0, :cond_31

    .line 951
    .line 952
    goto :goto_10

    .line 953
    :cond_31
    move/from16 v17, v20

    .line 954
    .line 955
    :cond_32
    :goto_11
    packed-switch v17, :pswitch_data_3

    .line 956
    .line 957
    .line 958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 959
    .line 960
    const-string v1, "Wrong NavigationBar Action Type"

    .line 961
    .line 962
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    throw v0

    .line 966
    :pswitch_1b
    const v0, 0x1040122

    .line 967
    .line 968
    .line 969
    goto :goto_12

    .line 970
    :pswitch_1c
    const v0, 0x104011a

    .line 971
    .line 972
    .line 973
    goto :goto_12

    .line 974
    :pswitch_1d
    const v0, 0x1040115

    .line 975
    .line 976
    .line 977
    goto :goto_12

    .line 978
    :pswitch_1e
    const v0, 0x1040114

    .line 979
    .line 980
    .line 981
    :goto_12
    return v0

    .line 982
    :pswitch_1f
    const v0, 0x104011e

    .line 983
    .line 984
    .line 985
    return v0

    .line 986
    nop

    .line 987
    :sswitch_data_0
    .sparse-switch
        -0x7ec2e294 -> :sswitch_1f
        -0x74e910bd -> :sswitch_1e
        -0x682f8f69 -> :sswitch_1d
        -0x643f1902 -> :sswitch_1c
        -0x55236e7d -> :sswitch_1b
        -0x5173c60f -> :sswitch_1a
        -0x18e94be7 -> :sswitch_19
        -0x18db78e4 -> :sswitch_18
        -0x1479af36 -> :sswitch_17
        -0x146c6cb7 -> :sswitch_16
        -0x68ea6ef -> :sswitch_15
        -0x54cce40 -> :sswitch_14
        -0x291c913 -> :sswitch_13
        0x2e04e7 -> :sswitch_12
        0x2f2d34 -> :sswitch_11
        0x30f4df -> :sswitch_10
        0x1443e66e -> :sswitch_f
        0x19319b02 -> :sswitch_e
        0x1aa61287 -> :sswitch_d
        0x1aa98dec -> :sswitch_c
        0x1af46ecc -> :sswitch_b
        0x2d9a2c29 -> :sswitch_a
        0x34b9e0e2 -> :sswitch_9
        0x3ade90d7 -> :sswitch_8
        0x3f33e64b -> :sswitch_7
        0x40828578 -> :sswitch_6
        0x4505db45 -> :sswitch_5
        0x51e7c39a -> :sswitch_4
        0x5696664a -> :sswitch_3
        0x61dac0e1 -> :sswitch_2
        0x65f68d8a -> :sswitch_1
        0x670f86b6 -> :sswitch_0
    .end sparse-switch

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_1a
        :pswitch_6
        :pswitch_1a
        :pswitch_f
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_12
        :pswitch_5
        :pswitch_d
        :pswitch_8
        :pswitch_4
        :pswitch_1a
        :pswitch_12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_12
        :pswitch_0
    .end packed-switch

    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    :sswitch_data_1
    .sparse-switch
        -0x54cce40 -> :sswitch_23
        0x1aa61287 -> :sswitch_22
        0x1aa98dec -> :sswitch_21
        0x3ade90d7 -> :sswitch_20
    .end sparse-switch

    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    :sswitch_data_2
    .sparse-switch
        -0x55236e7d -> :sswitch_28
        -0x18e94be7 -> :sswitch_27
        0x1af46ecc -> :sswitch_26
        0x4505db45 -> :sswitch_25
        0x65f68d8a -> :sswitch_24
    .end sparse-switch

    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    :sswitch_data_3
    .sparse-switch
        -0x74e910bd -> :sswitch_2c
        0x2e04e7 -> :sswitch_2b
        0x30f4df -> :sswitch_2a
        0x40828578 -> :sswitch_29
    .end sparse-switch

    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public abstract performCornerAction(I)V
.end method

.method public setMotionEventForDragAction(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method
