.class public final Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;
.super Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/DexMetaKeyPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexMetaKeyPolicy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public applyBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->applyBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->isMinimizeBounds(Landroid/graphics/Rect;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 21
    .line 22
    const/4 p2, -0x1

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p2, p2, p1, v0}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(IILcom/android/server/wm/Task;Z)Z

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 36
    .line 37
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object p2, p2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p2, 0x0

    .line 53
    :goto_0
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    return-void

    .line 70
    :pswitch_1
    const/4 v0, 0x0

    .line 71
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 72
    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 76
    .line 77
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 78
    .line 79
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    const/4 p1, 0x0

    .line 93
    :goto_2
    if-nez p1, :cond_7

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 101
    .line 102
    .line 103
    :goto_3
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getLaunchBounds(Lcom/android/server/wm/Task;Landroid/view/KeyEvent;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDexController:Lcom/android/server/wm/DexController;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 p1, 0x2

    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    .line 23
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMoveToDefaultDisplayBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_2
    iget-object p2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    iget-object p2, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 50
    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    iput-object p0, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 55
    .line 56
    move-object p0, p2

    .line 57
    goto :goto_4

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getDefaultBounds()Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_4

    .line 63
    :cond_4
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 75
    .line 76
    if-nez p0, :cond_6

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_6
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_c

    .line 86
    .line 87
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_7

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    :goto_0
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 97
    .line 98
    if-nez p0, :cond_8

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_8
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_a

    .line 108
    .line 109
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_9

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_9
    :goto_1
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_a
    :goto_2
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 122
    .line 123
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_b

    .line 130
    .line 131
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_b
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_c
    :goto_3
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 138
    .line 139
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-eqz p0, :cond_d

    .line 146
    .line 147
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_d
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 151
    .line 152
    :goto_4
    return-object p0

    .line 153
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 158
    .line 159
    if-eqz p2, :cond_f

    .line 160
    .line 161
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDexController:Lcom/android/server/wm/DexController;

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    const/4 p1, 0x2

    .line 168
    if-ne p0, p1, :cond_e

    .line 169
    .line 170
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMoveToDefaultDisplayBounds:Landroid/graphics/Rect;

    .line 171
    .line 172
    goto/16 :goto_9

    .line 173
    .line 174
    :cond_e
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    .line 175
    .line 176
    goto/16 :goto_9

    .line 177
    .line 178
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_10

    .line 183
    .line 184
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    .line 185
    .line 186
    goto/16 :goto_9

    .line 187
    .line 188
    :cond_10
    iget-object p2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 189
    .line 190
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-eqz p2, :cond_11

    .line 195
    .line 196
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 197
    .line 198
    goto/16 :goto_9

    .line 199
    .line 200
    :cond_11
    iget-object p2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 201
    .line 202
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-eqz p2, :cond_13

    .line 207
    .line 208
    iget-object p2, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 209
    .line 210
    if-eqz p2, :cond_12

    .line 211
    .line 212
    const/4 p0, 0x0

    .line 213
    iput-object p0, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 214
    .line 215
    move-object p0, p2

    .line 216
    goto :goto_9

    .line 217
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getDefaultBounds()Landroid/graphics/Rect;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    goto :goto_9

    .line 222
    :cond_13
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 223
    .line 224
    if-nez p0, :cond_14

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_14
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 228
    .line 229
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-nez p1, :cond_1a

    .line 234
    .line 235
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 236
    .line 237
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    if-eqz p0, :cond_15

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_15
    :goto_5
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 245
    .line 246
    if-nez p0, :cond_16

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_16
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 250
    .line 251
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-nez p1, :cond_18

    .line 256
    .line 257
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 258
    .line 259
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    if-eqz p0, :cond_17

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_17
    :goto_6
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_18
    :goto_7
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 270
    .line 271
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 272
    .line 273
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-eqz p0, :cond_19

    .line 278
    .line 279
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 280
    .line 281
    goto :goto_9

    .line 282
    :cond_19
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_1a
    :goto_8
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 286
    .line 287
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 288
    .line 289
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    if-eqz p0, :cond_1b

    .line 294
    .line 295
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_1b
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 299
    .line 300
    :goto_9
    return-object p0

    .line 301
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 302
    .line 303
    iget-object v1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 304
    .line 305
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_1c

    .line 312
    .line 313
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 314
    .line 315
    goto/16 :goto_c

    .line 316
    .line 317
    :cond_1c
    iget-object v1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 318
    .line 319
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_1d

    .line 326
    .line 327
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 328
    .line 329
    goto/16 :goto_c

    .line 330
    .line 331
    :cond_1d
    iget-object v1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 332
    .line 333
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_1e

    .line 340
    .line 341
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 342
    .line 343
    goto/16 :goto_c

    .line 344
    .line 345
    :cond_1e
    iget-object v1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 346
    .line 347
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_1f

    .line 354
    .line 355
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 356
    .line 357
    goto :goto_c

    .line 358
    :cond_1f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 359
    .line 360
    .line 361
    move-result p2

    .line 362
    const/4 v1, 0x0

    .line 363
    if-eqz p2, :cond_25

    .line 364
    .line 365
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 366
    .line 367
    .line 368
    move-result p2

    .line 369
    if-eqz p2, :cond_20

    .line 370
    .line 371
    goto :goto_b

    .line 372
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 373
    .line 374
    .line 375
    move-result p2

    .line 376
    if-eqz p2, :cond_24

    .line 377
    .line 378
    iget-object p2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 379
    .line 380
    if-eqz p2, :cond_21

    .line 381
    .line 382
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    .line 383
    .line 384
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result p2

    .line 388
    if-eqz p2, :cond_21

    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_21
    iget-object p2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 392
    .line 393
    if-eqz p2, :cond_23

    .line 394
    .line 395
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    .line 396
    .line 397
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result p2

    .line 401
    if-eqz p2, :cond_23

    .line 402
    .line 403
    iget-object p2, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 404
    .line 405
    if-eqz p2, :cond_22

    .line 406
    .line 407
    iput-object v1, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 408
    .line 409
    :goto_a
    move-object p0, p2

    .line 410
    goto :goto_c

    .line 411
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getDefaultBounds()Landroid/graphics/Rect;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 416
    .line 417
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 418
    .line 419
    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 420
    .line 421
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 422
    .line 423
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 424
    .line 425
    goto :goto_c

    .line 426
    :cond_23
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_24
    :goto_b
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 433
    .line 434
    .line 435
    move-result p2

    .line 436
    if-eqz p2, :cond_27

    .line 437
    .line 438
    iget-object p2, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 439
    .line 440
    if-eqz p2, :cond_26

    .line 441
    .line 442
    iput-object v1, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 443
    .line 444
    goto :goto_a

    .line 445
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getDefaultBounds()Landroid/graphics/Rect;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    goto :goto_c

    .line 450
    :cond_27
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMinimizeBounds:Landroid/graphics/Rect;

    .line 451
    .line 452
    :goto_c
    return-object p0

    .line 453
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-nez v0, :cond_28

    .line 458
    .line 459
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    .line 460
    .line 461
    goto/16 :goto_e

    .line 462
    .line 463
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 464
    .line 465
    iget-object v1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 466
    .line 467
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 468
    .line 469
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-eqz v1, :cond_29

    .line 474
    .line 475
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 476
    .line 477
    goto/16 :goto_e

    .line 478
    .line 479
    :cond_29
    iget-object v1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 480
    .line 481
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 482
    .line 483
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    if-eqz v1, :cond_2a

    .line 488
    .line 489
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 490
    .line 491
    goto/16 :goto_e

    .line 492
    .line 493
    :cond_2a
    iget-object v1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 494
    .line 495
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 496
    .line 497
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_2b

    .line 502
    .line 503
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 504
    .line 505
    goto :goto_e

    .line 506
    :cond_2b
    iget-object v1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 507
    .line 508
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 509
    .line 510
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    if-eqz v1, :cond_2c

    .line 515
    .line 516
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_2c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 520
    .line 521
    .line 522
    move-result p2

    .line 523
    const/4 v1, 0x0

    .line 524
    if-eqz p2, :cond_32

    .line 525
    .line 526
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 527
    .line 528
    .line 529
    move-result p2

    .line 530
    if-eqz p2, :cond_2d

    .line 531
    .line 532
    goto :goto_d

    .line 533
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 534
    .line 535
    .line 536
    move-result p2

    .line 537
    if-eqz p2, :cond_31

    .line 538
    .line 539
    iget-object p2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 540
    .line 541
    if-eqz p2, :cond_2e

    .line 542
    .line 543
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    .line 544
    .line 545
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result p2

    .line 549
    if-eqz p2, :cond_2e

    .line 550
    .line 551
    goto :goto_d

    .line 552
    :cond_2e
    iget-object p2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 553
    .line 554
    if-eqz p2, :cond_30

    .line 555
    .line 556
    iget-object v2, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    .line 557
    .line 558
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result p2

    .line 562
    if-eqz p2, :cond_30

    .line 563
    .line 564
    iget-object p2, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 565
    .line 566
    if-eqz p2, :cond_2f

    .line 567
    .line 568
    iput-object v1, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 569
    .line 570
    move-object p0, p2

    .line 571
    goto :goto_e

    .line 572
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getDefaultBounds()Landroid/graphics/Rect;

    .line 573
    .line 574
    .line 575
    move-result-object p0

    .line 576
    iget-object p1, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 577
    .line 578
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 579
    .line 580
    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 581
    .line 582
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 583
    .line 584
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 585
    .line 586
    goto :goto_e

    .line 587
    :cond_30
    iget-object p0, v0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    .line 588
    .line 589
    goto :goto_e

    .line 590
    :cond_31
    :goto_d
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    .line 591
    .line 592
    goto :goto_e

    .line 593
    :cond_32
    move-object p0, v1

    .line 594
    :goto_e
    return-object p0

    .line 595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateTaskBoundsInfoIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isQuarterDisplayBounds(Landroid/graphics/Rect;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    iput-object p0, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isQuarterDisplayBounds(Landroid/graphics/Rect;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    iput-object p0, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    new-instance p2, Landroid/graphics/Rect;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-direct {p2, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 83
    .line 84
    .line 85
    iput-object p2, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 86
    .line 87
    :goto_1
    return-void

    .line 88
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 89
    .line 90
    if-eqz p2, :cond_6

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_7

    .line 99
    .line 100
    const/4 p2, 0x1

    .line 101
    goto :goto_2

    .line 102
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    :cond_7
    const/4 p2, 0x0

    .line 106
    :goto_2
    if-eqz p2, :cond_8

    .line 107
    .line 108
    new-instance p2, Landroid/graphics/Rect;

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-direct {p2, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 113
    .line 114
    .line 115
    iput-object p2, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 116
    .line 117
    :cond_8
    return-void

    .line 118
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isQuarterDisplayBounds(Landroid/graphics/Rect;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_9

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_9
    if-nez p2, :cond_a

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_a

    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_a

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_a
    if-eqz p2, :cond_b

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    .line 151
    .line 152
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_b

    .line 157
    .line 158
    :goto_3
    const/4 p0, 0x0

    .line 159
    iput-object p0, p1, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 160
    .line 161
    :cond_b
    :goto_4
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
