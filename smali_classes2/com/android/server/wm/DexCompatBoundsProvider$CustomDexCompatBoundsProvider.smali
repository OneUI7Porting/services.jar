.class public final Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;
.super Lcom/android/server/wm/DexCompatBoundsProvider;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getBounds(Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDexMode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDisplayShortSize()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v0, v1}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultWidth(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDexMode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDisplayShortSize()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v1, v2}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultHeight(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lez v0, :cond_6

    .line 40
    .line 41
    if-gtz v1, :cond_1

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    if-ge v0, v1, :cond_2

    .line 46
    .line 47
    int-to-float v0, v0

    .line 48
    int-to-float v1, v1

    .line 49
    div-float/2addr v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    int-to-float v1, v1

    .line 52
    int-to-float v0, v0

    .line 53
    div-float v0, v1, v0

    .line 54
    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    const/high16 v3, 0x3f000000    # 0.5f

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    move v6, v4

    .line 94
    :goto_1
    if-ge v6, v5, :cond_4

    .line 95
    .line 96
    invoke-virtual {v1, v6}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-ne v8, v9, :cond_3

    .line 109
    .line 110
    invoke-virtual {v7}, Landroid/view/InsetsSource;->isVisible()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v2, v4, v4, v4, v1}, Landroid/graphics/Rect;->inset(IIII)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    int-to-float v1, v1

    .line 136
    mul-float/2addr v1, v0

    .line 137
    add-float/2addr v1, v3

    .line 138
    float-to-int v0, v1

    .line 139
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    mul-int/lit8 p0, p0, 0x2

    .line 150
    .line 151
    sub-int/2addr v1, p0

    .line 152
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    int-to-float p0, p0

    .line 171
    const v1, 0x3f666666    # 0.9f

    .line 172
    .line 173
    .line 174
    mul-float/2addr p0, v1

    .line 175
    add-float/2addr p0, v3

    .line 176
    float-to-int p0, p0

    .line 177
    int-to-float v1, p0

    .line 178
    mul-float/2addr v1, v0

    .line 179
    add-float/2addr v1, v3

    .line 180
    float-to-int v0, v1

    .line 181
    invoke-virtual {p1, v4, v4, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    :goto_3
    const-string p0, "getBounds: invalid value, "

    .line 186
    .line 187
    const-string/jumbo p1, "x"

    .line 188
    .line 189
    .line 190
    const-string v2, "DexCompatBoundsProvider"

    .line 191
    .line 192
    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :goto_4
    return-void

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    .line 199
    .line 200
    if-nez v0, :cond_7

    .line 201
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v1, "getBounds: Cannot find custom size, use default, "

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string v1, "DexCompatBoundsProvider"

    .line 219
    .line 220
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    invoke-super {p0, p1}, Lcom/android/server/wm/DexCompatBoundsProvider;->getBounds(Landroid/graphics/Rect;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_7
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 228
    .line 229
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 230
    .line 231
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 236
    .line 237
    iget-object v1, v1, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    .line 238
    .line 239
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 240
    .line 241
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 242
    .line 243
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    iget-boolean p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    .line 248
    .line 249
    const/4 v2, 0x0

    .line 250
    if-eqz p0, :cond_8

    .line 251
    .line 252
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_8
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    .line 258
    .line 259
    :goto_5
    return-void

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
