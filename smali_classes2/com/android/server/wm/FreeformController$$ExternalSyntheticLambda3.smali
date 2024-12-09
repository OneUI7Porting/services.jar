.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$4:Landroid/graphics/Rect;

.field public final synthetic f$5:Landroid/graphics/Rect;

.field public final synthetic f$6:Z

.field public final synthetic f$7:F

.field public final synthetic f$8:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;ZILcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/FreeformController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$6:Z

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$7:F

    .line 19
    .line 20
    iput p9, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$8:F

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/FreeformController;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$1:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$6:Z

    .line 14
    .line 15
    iget v7, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$7:F

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$8:F

    .line 18
    .line 19
    check-cast p1, Lcom/android/server/wm/Task;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_b

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    and-int/lit16 v1, v2, 0x80

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    sget-object v1, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v8}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    iget-object v1, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 115
    .line 116
    iget-object v2, v0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 117
    .line 118
    invoke-static {v4, v5, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 122
    .line 123
    invoke-virtual {p1, v8, v0}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_0
    if-nez v6, :cond_7

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 130
    .line 131
    cmpl-float v1, v7, v0

    .line 132
    .line 133
    if-nez v1, :cond_8

    .line 134
    .line 135
    cmpl-float v2, p0, v0

    .line 136
    .line 137
    if-nez v2, :cond_8

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_8
    iget-object v2, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 141
    .line 142
    if-eqz v2, :cond_b

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_b

    .line 149
    .line 150
    iget-object v2, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 151
    .line 152
    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 155
    .line 156
    .line 157
    const/high16 v2, 0x3f000000    # 0.5f

    .line 158
    .line 159
    if-eqz v1, :cond_9

    .line 160
    .line 161
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_9

    .line 166
    .line 167
    iget-object v1, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 168
    .line 169
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 170
    .line 171
    int-to-float v3, v3

    .line 172
    mul-float/2addr v3, v7

    .line 173
    add-float/2addr v3, v2

    .line 174
    float-to-int v3, v3

    .line 175
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 176
    .line 177
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 178
    .line 179
    int-to-float v3, v3

    .line 180
    mul-float/2addr v3, v7

    .line 181
    add-float/2addr v3, v2

    .line 182
    float-to-int v3, v3

    .line 183
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 184
    .line 185
    :cond_9
    cmpl-float v0, p0, v0

    .line 186
    .line 187
    if-eqz v0, :cond_a

    .line 188
    .line 189
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_a

    .line 194
    .line 195
    iget-object v0, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 196
    .line 197
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 198
    .line 199
    int-to-float v1, v1

    .line 200
    mul-float/2addr v1, p0

    .line 201
    add-float/2addr v1, v2

    .line 202
    float-to-int v1, v1

    .line 203
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 204
    .line 205
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 206
    .line 207
    int-to-float v1, v1

    .line 208
    mul-float/2addr v1, p0

    .line 209
    add-float/2addr v1, v2

    .line 210
    float-to-int p0, v1

    .line 211
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 212
    .line 213
    :cond_a
    iget-object p0, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 214
    .line 215
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V

    .line 216
    .line 217
    .line 218
    iget-object p0, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 219
    .line 220
    invoke-virtual {p1, v8, p0}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    .line 221
    .line 222
    .line 223
    :cond_b
    :goto_1
    return-void
.end method
