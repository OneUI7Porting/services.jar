.class public final Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field public mDefaultFreeformStepHorizontal:I

.field public mDefaultFreeformStepVertical:I

.field public mLogBuilder:Ljava/lang/StringBuilder;

.field public final mSnappingBounds:Landroid/graphics/Rect;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpBounds2:Landroid/graphics/Rect;

.field public final mTmpDirections:[I

.field public mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

.field public final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    .line 22
    .line 23
    new-instance v0, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSnappingBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 41
    .line 42
    return-void
.end method

.method public static boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x4

    .line 28
    const/4 v4, 0x1

    .line 29
    if-ge v2, v3, :cond_1

    .line 30
    .line 31
    move v2, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v1

    .line 34
    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    sub-int/2addr v5, v6

    .line 39
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ge v5, v3, :cond_2

    .line 44
    .line 45
    move v5, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v5, v1

    .line 48
    :goto_1
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    sub-int/2addr v6, v7

    .line 53
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ge v6, v3, :cond_3

    .line 58
    .line 59
    move v6, v4

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move v6, v1

    .line 62
    :goto_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    sub-int/2addr v0, v7

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ge v0, v3, :cond_4

    .line 72
    .line 73
    move v1, v4

    .line 74
    :cond_4
    if-eqz v2, :cond_5

    .line 75
    .line 76
    if-nez v5, :cond_8

    .line 77
    .line 78
    :cond_5
    if-eqz v2, :cond_6

    .line 79
    .line 80
    if-nez v1, :cond_8

    .line 81
    .line 82
    :cond_6
    if-eqz v6, :cond_7

    .line 83
    .line 84
    if-nez v5, :cond_8

    .line 85
    .line 86
    :cond_7
    if-eqz v6, :cond_0

    .line 87
    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    :cond_8
    return v4

    .line 91
    :cond_9
    return v1
.end method

.method public static getPersistentDexBounds(IILcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexPersistBoundsParam:Lcom/android/server/wm/DexPersistBoundsParams;

    .line 6
    .line 7
    iget v2, v1, Lcom/android/server/wm/DexPersistBoundsParams;->mDexWindowingMode:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v2, v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 13
    .line 14
    .line 15
    return v3

    .line 16
    :cond_1
    const/4 v2, 0x2

    .line 17
    if-ne p0, v2, :cond_3

    .line 18
    .line 19
    if-ne p1, v2, :cond_2

    .line 20
    .line 21
    iget-object p0, v1, Lcom/android/server/wm/DexPersistBoundsParams;->mDexDualBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object p0, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    iget-object p0, v1, Lcom/android/server/wm/DexPersistBoundsParams;->mDexStandAloneBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_4

    .line 34
    .line 35
    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    return v3

    .line 39
    :cond_4
    return v0
.end method

.method public static orientationFromBounds(Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-le v0, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    :goto_0
    return p0
.end method

.method public static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    sub-int/2addr p1, p0

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ge p0, v1, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method


# virtual methods
.method public adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static/range {p2 .. p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 v4, 0x0

    .line 24
    move v5, v4

    .line 25
    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    .line 26
    .line 27
    array-length v7, v6

    .line 28
    if-ge v5, v7, :cond_2

    .line 29
    .line 30
    aput v4, v6, v5

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v5, 0x5

    .line 36
    const/4 v7, 0x3

    .line 37
    const/16 v8, 0x55

    .line 38
    .line 39
    if-eqz p4, :cond_3

    .line 40
    .line 41
    aput v8, v6, v4

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    mul-int/lit8 v10, v9, 0x2

    .line 47
    .line 48
    iget v11, v1, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    add-int/2addr v10, v11

    .line 51
    div-int/2addr v10, v7

    .line 52
    mul-int/lit8 v11, v11, 0x2

    .line 53
    .line 54
    add-int/2addr v11, v9

    .line 55
    div-int/2addr v11, v7

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-ge v9, v10, :cond_4

    .line 61
    .line 62
    aput v5, v6, v4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    if-le v9, v11, :cond_5

    .line 66
    .line 67
    aput v7, v6, v4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    mul-int/lit8 v10, v9, 0x2

    .line 73
    .line 74
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    .line 75
    .line 76
    add-int/2addr v10, v11

    .line 77
    div-int/2addr v10, v7

    .line 78
    mul-int/lit8 v11, v11, 0x2

    .line 79
    .line 80
    add-int/2addr v11, v9

    .line 81
    div-int/2addr v11, v7

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    const/4 v12, 0x1

    .line 87
    if-lt v9, v10, :cond_7

    .line 88
    .line 89
    if-le v9, v11, :cond_6

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    aput v8, v6, v4

    .line 93
    .line 94
    const/16 v8, 0x33

    .line 95
    .line 96
    aput v8, v6, v12

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_7
    :goto_1
    aput v5, v6, v4

    .line 100
    .line 101
    aput v7, v6, v12

    .line 102
    .line 103
    :goto_2
    array-length v8, v6

    .line 104
    move v9, v4

    .line 105
    :goto_3
    if-ge v9, v8, :cond_13

    .line 106
    .line 107
    aget v10, v6, v9

    .line 108
    .line 109
    if-nez v10, :cond_8

    .line 110
    .line 111
    goto/16 :goto_8

    .line 112
    .line 113
    :cond_8
    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 114
    .line 115
    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    .line 117
    .line 118
    move v11, v4

    .line 119
    :goto_4
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 120
    .line 121
    invoke-static {v2, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-eqz v12, :cond_11

    .line 126
    .line 127
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 128
    .line 129
    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 130
    .line 131
    .line 132
    move-result v12

    .line 133
    if-nez v12, :cond_9

    .line 134
    .line 135
    if-eqz p4, :cond_11

    .line 136
    .line 137
    :cond_9
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 138
    .line 139
    and-int/lit8 v13, v10, 0x7

    .line 140
    .line 141
    if-eq v13, v7, :cond_b

    .line 142
    .line 143
    if-eq v13, v5, :cond_a

    .line 144
    .line 145
    move v13, v4

    .line 146
    goto :goto_5

    .line 147
    :cond_a
    iget v13, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_b
    iget v13, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    .line 151
    .line 152
    neg-int v13, v13

    .line 153
    :goto_5
    and-int/lit8 v14, v10, 0x70

    .line 154
    .line 155
    const/16 v15, 0x30

    .line 156
    .line 157
    if-eq v14, v15, :cond_d

    .line 158
    .line 159
    const/16 v15, 0x50

    .line 160
    .line 161
    if-eq v14, v15, :cond_c

    .line 162
    .line 163
    move v14, v4

    .line 164
    goto :goto_6

    .line 165
    :cond_c
    iget v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_d
    iget v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 169
    .line 170
    neg-int v14, v14

    .line 171
    :goto_6
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 172
    .line 173
    .line 174
    if-eqz p4, :cond_f

    .line 175
    .line 176
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 177
    .line 178
    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    if-nez v12, :cond_f

    .line 183
    .line 184
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    iget v15, v12, Landroid/graphics/Rect;->bottom:I

    .line 195
    .line 196
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 197
    .line 198
    if-le v15, v4, :cond_e

    .line 199
    .line 200
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 201
    .line 202
    iput v4, v12, Landroid/graphics/Rect;->top:I

    .line 203
    .line 204
    add-int/2addr v4, v14

    .line 205
    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    .line 206
    .line 207
    :cond_e
    iget v4, v12, Landroid/graphics/Rect;->right:I

    .line 208
    .line 209
    iget v14, v1, Landroid/graphics/Rect;->right:I

    .line 210
    .line 211
    if-le v4, v14, :cond_f

    .line 212
    .line 213
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 214
    .line 215
    iput v4, v12, Landroid/graphics/Rect;->left:I

    .line 216
    .line 217
    add-int/2addr v4, v13

    .line 218
    iput v4, v12, Landroid/graphics/Rect;->right:I

    .line 219
    .line 220
    :cond_f
    add-int/lit8 v4, v11, 0x1

    .line 221
    .line 222
    const/16 v12, 0xc8

    .line 223
    .line 224
    if-le v11, v12, :cond_10

    .line 225
    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v10, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, inOutBounds="

    .line 229
    .line 230
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v10, ", mTmpBounds="

    .line 237
    .line 238
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v10, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 242
    .line 243
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v10, ", displayBounds="

    .line 247
    .line 248
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v10, ", mDefaultFreeformStepHorizontal="

    .line 255
    .line 256
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget v10, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    .line 260
    .line 261
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v10, ", mDefaultFreeformStepVertical="

    .line 265
    .line 266
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget v10, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 270
    .line 271
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v10, ", Callers="

    .line 275
    .line 276
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const/16 v10, 0x8

    .line 280
    .line 281
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    const-string v10, "ActivityTaskManager"

    .line 293
    .line 294
    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 298
    .line 299
    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v11, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, adjusted proposal="

    .line 303
    .line 304
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v11, ", break!"

    .line 311
    .line 312
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_10
    move v11, v4

    .line 324
    const/4 v4, 0x0

    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :cond_11
    :goto_7
    iget-object v4, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 328
    .line 329
    invoke-static {v2, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-nez v4, :cond_12

    .line 334
    .line 335
    iget-object v4, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 336
    .line 337
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eqz v4, :cond_12

    .line 342
    .line 343
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 344
    .line 345
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 346
    .line 347
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v2, "avoid-bounds-conflict="

    .line 351
    .line 352
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 367
    .line 368
    const/4 v4, 0x0

    .line 369
    goto/16 :goto_3

    .line 370
    .line 371
    :cond_13
    :goto_8
    return-void
.end method

.method public final adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    invoke-direct {v1, p3, p4, p5, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-virtual {p1, v1, p3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    iget-object p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 22
    .line 23
    const/4 p5, 0x2

    .line 24
    if-ne p1, p5, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    :cond_0
    invoke-virtual {p0, p4, v0, p2, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sget-object v0, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v1, v0, v3, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 66
    .line 67
    int-to-float p1, p1

    .line 68
    const/high16 v1, 0x43200000    # 160.0f

    .line 69
    .line 70
    div-float/2addr p1, v1

    .line 71
    const/high16 v1, 0x41d80000    # 27.0f

    .line 72
    .line 73
    mul-float/2addr p1, v1

    .line 74
    const/high16 v1, 0x3f000000    # 0.5f

    .line 75
    .line 76
    add-float/2addr p1, v1

    .line 77
    float-to-int p1, p1

    .line 78
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-lt p1, v1, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-ge p1, v1, :cond_5

    .line 100
    .line 101
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    int-to-float p1, p1

    .line 106
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    int-to-float v1, v1

    .line 111
    div-float/2addr p1, v1

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    int-to-float v1, v1

    .line 117
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    int-to-float v3, v3

    .line 122
    div-float/2addr v1, v3

    .line 123
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    const/4 v1, -0x1

    .line 128
    if-nez p2, :cond_2

    .line 129
    .line 130
    move v3, v1

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    iget v3, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 133
    .line 134
    :goto_1
    if-nez p2, :cond_3

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 138
    .line 139
    :goto_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    int-to-float p2, p2

    .line 144
    mul-float/2addr p2, p1

    .line 145
    float-to-int p2, p2

    .line 146
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    int-to-float v3, v3

    .line 155
    mul-float/2addr v3, p1

    .line 156
    float-to-int p1, v3

    .line 157
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-lt v1, p2, :cond_a

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-ge v1, p1, :cond_4

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_4
    iget p0, p3, Landroid/graphics/Rect;->left:I

    .line 175
    .line 176
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 177
    .line 178
    add-int/2addr p2, p0

    .line 179
    add-int/2addr p1, v1

    .line 180
    invoke-virtual {p3, p0, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 181
    .line 182
    .line 183
    :cond_5
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 184
    .line 185
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 186
    .line 187
    if-le p0, p1, :cond_6

    .line 188
    .line 189
    :goto_3
    sub-int/2addr p1, p0

    .line 190
    goto :goto_4

    .line 191
    :cond_6
    iget p0, p3, Landroid/graphics/Rect;->left:I

    .line 192
    .line 193
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 194
    .line 195
    if-ge p0, p1, :cond_7

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_7
    move p1, v2

    .line 199
    :goto_4
    iget p0, p3, Landroid/graphics/Rect;->top:I

    .line 200
    .line 201
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 202
    .line 203
    if-ge p0, p2, :cond_8

    .line 204
    .line 205
    :goto_5
    sub-int v2, p2, p0

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_8
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 209
    .line 210
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 211
    .line 212
    if-le p0, p2, :cond_9

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    :goto_6
    invoke-virtual {p3, p1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 216
    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_a
    :goto_7
    const/4 v1, 0x1

    .line 220
    if-ne p0, v1, :cond_b

    .line 221
    .line 222
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 223
    .line 224
    sub-int/2addr p0, p2

    .line 225
    goto :goto_8

    .line 226
    :cond_b
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 227
    .line 228
    :goto_8
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 229
    .line 230
    add-int/2addr p2, p0

    .line 231
    add-int/2addr p1, v0

    .line 232
    invoke-virtual {p3, p0, v0, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    .line 234
    .line 235
    :goto_9
    return-void
.end method

.method public final appendLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    sub-int/2addr p0, p1

    .line 42
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {p3, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final getDexMetaDataBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z
    .locals 10

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p2, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 6
    .line 7
    iget-object v1, p2, Lcom/android/server/wm/Task;->mDexMetaDataInfo:Lcom/android/server/wm/DexController$DexMetaDataInfo;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DexController;->getDexMetadataLaunchSizeLocked(Lcom/android/server/wm/DexController$DexMetaDataInfo;I)Landroid/graphics/Point;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 26
    .line 27
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/server/wm/DexController;->parseDexMetadata(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/DexController$DexMetaDataInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 34
    .line 35
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0, v1}, Lcom/android/server/wm/DexController;->getDexMetadataLaunchSizeLocked(Lcom/android/server/wm/DexController$DexMetaDataInfo;I)Landroid/graphics/Point;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    :goto_0
    const/4 v0, 0x0

    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    iget v1, p2, Landroid/graphics/Point;->x:I

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    iget v2, p2, Landroid/graphics/Point;->y:I

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 56
    .line 57
    .line 58
    const-string p1, "dex-fullscreen-metadata-bounds"

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget v2, p2, Landroid/graphics/Point;->y:I

    .line 65
    .line 66
    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 74
    .line 75
    iget v2, p2, Landroid/graphics/Point;->x:I

    .line 76
    .line 77
    if-ne v1, v2, :cond_2

    .line 78
    .line 79
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 80
    .line 81
    iget v1, p2, Landroid/graphics/Point;->y:I

    .line 82
    .line 83
    if-eq v0, v1, :cond_3

    .line 84
    .line 85
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 86
    .line 87
    iget v3, p2, Landroid/graphics/Point;->x:I

    .line 88
    .line 89
    iget v5, p2, Landroid/graphics/Point;->y:I

    .line 90
    .line 91
    const/high16 v6, -0x40800000    # -1.0f

    .line 92
    .line 93
    const/16 v7, 0x11

    .line 94
    .line 95
    const/high16 v4, -0x40800000    # -1.0f

    .line 96
    .line 97
    const/4 v8, -0x1

    .line 98
    const/4 v9, -0x1

    .line 99
    move-object v2, v0

    .line 100
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 104
    .line 105
    :cond_3
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 106
    .line 107
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    const/4 p0, 0x1

    .line 111
    return p0

    .line 112
    :cond_4
    return v0
.end method

.method public final getInitialDexBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 10

    .line 1
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    .line 32
    .line 33
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 34
    .line 35
    mul-float/2addr v0, v3

    .line 36
    float-to-int v0, v0

    .line 37
    int-to-float v1, v1

    .line 38
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 39
    .line 40
    :goto_0
    mul-float/2addr v1, v2

    .line 41
    float-to-int v1, v1

    .line 42
    move v3, v0

    .line 43
    move v5, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    int-to-float v0, v0

    .line 46
    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    .line 47
    .line 48
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 49
    .line 50
    mul-float/2addr v0, v3

    .line 51
    float-to-int v0, v0

    .line 52
    int-to-float v1, v1

    .line 53
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    const-string v0, "from-default-size"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 66
    .line 67
    if-ne v1, v3, :cond_1

    .line 68
    .line 69
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 70
    .line 71
    if-eq v0, v5, :cond_2

    .line 72
    .line 73
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 74
    .line 75
    const/high16 v6, -0x40800000    # -1.0f

    .line 76
    .line 77
    const/16 v7, 0x11

    .line 78
    .line 79
    const/high16 v4, -0x40800000    # -1.0f

    .line 80
    .line 81
    const/4 v8, -0x1

    .line 82
    const/4 v9, -0x1

    .line 83
    move-object v2, v0

    .line 84
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 90
    .line 91
    invoke-virtual {p0, p3, p2, v0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 15

    .line 1
    move-object/from16 v3, p3

    .line 2
    .line 3
    move-object/from16 v7, p4

    .line 4
    .line 5
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 6
    .line 7
    and-int/lit8 v8, v0, 0x70

    .line 8
    .line 9
    and-int/lit8 v9, v0, 0x7

    .line 10
    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    if-nez v8, :cond_0

    .line 18
    .line 19
    if-nez v9, :cond_0

    .line 20
    .line 21
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    move-object v0, p0

    .line 26
    iget-object v10, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 27
    .line 28
    move-object/from16 v2, p1

    .line 29
    .line 30
    invoke-virtual {v2, v10}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 34
    .line 35
    .line 36
    move-result v11

    .line 37
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/high16 v13, 0x3f800000    # 1.0f

    .line 46
    .line 47
    const/4 v14, 0x0

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v4, 0x5

    .line 66
    const/4 v5, 0x0

    .line 67
    move-object v0, p0

    .line 68
    move-object/from16 v1, p2

    .line 69
    .line 70
    move-object/from16 v2, p1

    .line 71
    .line 72
    move-object/from16 v3, p3

    .line 73
    .line 74
    move-object/from16 v6, p4

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 89
    .line 90
    if-ltz v0, :cond_3

    .line 91
    .line 92
    if-ge v0, v11, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 96
    .line 97
    cmpl-float v1, v0, v14

    .line 98
    .line 99
    if-lez v1, :cond_4

    .line 100
    .line 101
    cmpg-float v1, v0, v13

    .line 102
    .line 103
    if-gez v1, :cond_4

    .line 104
    .line 105
    int-to-float v1, v11

    .line 106
    mul-float/2addr v1, v0

    .line 107
    float-to-int v0, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_4
    move v0, v11

    .line 110
    :goto_0
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 111
    .line 112
    if-ltz v1, :cond_5

    .line 113
    .line 114
    if-ge v1, v12, :cond_5

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 118
    .line 119
    cmpl-float v2, v1, v14

    .line 120
    .line 121
    if-lez v2, :cond_6

    .line 122
    .line 123
    cmpg-float v2, v1, v13

    .line 124
    .line 125
    if-gez v2, :cond_6

    .line 126
    .line 127
    int-to-float v2, v12

    .line 128
    mul-float/2addr v2, v1

    .line 129
    float-to-int v1, v2

    .line 130
    goto :goto_1

    .line 131
    :cond_6
    move v1, v12

    .line 132
    :goto_1
    const/4 v2, 0x3

    .line 133
    const/high16 v3, 0x3f000000    # 0.5f

    .line 134
    .line 135
    if-eq v9, v2, :cond_8

    .line 136
    .line 137
    const/4 v2, 0x5

    .line 138
    if-eq v9, v2, :cond_7

    .line 139
    .line 140
    move v2, v3

    .line 141
    goto :goto_2

    .line 142
    :cond_7
    move v2, v13

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    move v2, v14

    .line 145
    :goto_2
    const/16 v4, 0x30

    .line 146
    .line 147
    if-eq v8, v4, :cond_9

    .line 148
    .line 149
    const/16 v4, 0x50

    .line 150
    .line 151
    if-eq v8, v4, :cond_a

    .line 152
    .line 153
    move v13, v3

    .line 154
    goto :goto_3

    .line 155
    :cond_9
    move v13, v14

    .line 156
    :cond_a
    :goto_3
    const/4 v3, 0x0

    .line 157
    invoke-virtual {v7, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    .line 159
    .line 160
    iget v3, v10, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    iget v4, v10, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 165
    .line 166
    .line 167
    sub-int/2addr v11, v0

    .line 168
    int-to-float v0, v11

    .line 169
    mul-float/2addr v2, v0

    .line 170
    float-to-int v0, v2

    .line 171
    sub-int/2addr v12, v1

    .line 172
    int-to-float v1, v12

    .line 173
    mul-float/2addr v13, v1

    .line 174
    float-to-int v1, v13

    .line 175
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public final getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p6

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v7, v6

    .line 22
    :goto_0
    if-eqz v7, :cond_1

    .line 23
    .line 24
    invoke-virtual {v7}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-static {v7}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Lcom/android/server/wm/TaskDisplayArea;

    .line 33
    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v9, "display-area-token-from-option="

    .line 37
    .line 38
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v0, v8}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v7, v6

    .line 53
    :goto_1
    const/4 v8, 0x0

    .line 54
    const/4 v9, -0x1

    .line 55
    iget-object v10, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 56
    .line 57
    if-nez v7, :cond_3

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-eq v11, v9, :cond_3

    .line 66
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    if-ne v12, v9, :cond_2

    .line 72
    .line 73
    move v12, v8

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    :goto_2
    iget-object v13, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 80
    .line 81
    invoke-virtual {v13, v12}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    if-eqz v12, :cond_3

    .line 86
    .line 87
    new-instance v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;

    .line 88
    .line 89
    invoke-direct {v7, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12, v7}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Lcom/android/server/wm/TaskDisplayArea;

    .line 97
    .line 98
    new-instance v11, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v12, "display-area-feature-from-option="

    .line 101
    .line 102
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    if-nez v7, :cond_5

    .line 116
    .line 117
    if-eqz p2, :cond_4

    .line 118
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    move v11, v9

    .line 125
    :goto_3
    if-eq v11, v9, :cond_5

    .line 126
    .line 127
    iget-object v12, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 128
    .line 129
    invoke-virtual {v12, v11}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    if-eqz v12, :cond_5

    .line 134
    .line 135
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    new-instance v12, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v13, "display-from-option="

    .line 142
    .line 143
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    if-nez v7, :cond_7

    .line 157
    .line 158
    if-eqz v2, :cond_7

    .line 159
    .line 160
    iget-boolean v11, v2, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 161
    .line 162
    if-eqz v11, :cond_7

    .line 163
    .line 164
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 165
    .line 166
    if-eqz v7, :cond_6

    .line 167
    .line 168
    new-instance v11, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v12, "display-area-from-no-display-source="

    .line 171
    .line 172
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    iget v11, v2, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 187
    .line 188
    iget-object v12, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 189
    .line 190
    invoke-virtual {v12, v11}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    if-eqz v12, :cond_7

    .line 195
    .line 196
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v13, "display-from-no-display-source="

    .line 203
    .line 204
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_7
    :goto_4
    const/4 v11, 0x1

    .line 218
    if-eqz v1, :cond_9

    .line 219
    .line 220
    invoke-virtual {v1, v11, v8}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    if-nez v12, :cond_8

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_8
    invoke-virtual {v1, v11, v8}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    goto :goto_6

    .line 232
    :cond_9
    :goto_5
    move-object v12, v4

    .line 233
    :goto_6
    const/4 v13, 0x2

    .line 234
    if-eqz v7, :cond_a

    .line 235
    .line 236
    iget-object v14, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 237
    .line 238
    iget v14, v14, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 239
    .line 240
    if-eq v14, v13, :cond_a

    .line 241
    .line 242
    if-ne v14, v9, :cond_15

    .line 243
    .line 244
    :cond_a
    if-nez v7, :cond_b

    .line 245
    .line 246
    move v14, v9

    .line 247
    goto :goto_7

    .line 248
    :cond_b
    iget-object v14, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 249
    .line 250
    iget v14, v14, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 251
    .line 252
    :goto_7
    iget-object v15, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 253
    .line 254
    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 255
    .line 256
    invoke-virtual {v15}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 257
    .line 258
    .line 259
    move-result v15

    .line 260
    if-ne v15, v13, :cond_e

    .line 261
    .line 262
    if-ne v14, v9, :cond_c

    .line 263
    .line 264
    if-eqz v2, :cond_c

    .line 265
    .line 266
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    new-instance v15, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v11, "display-from-source="

    .line 273
    .line 274
    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :cond_c
    if-ne v14, v9, :cond_d

    .line 288
    .line 289
    if-eqz v1, :cond_d

    .line 290
    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    if-ne v11, v13, :cond_d

    .line 296
    .line 297
    iget-object v11, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 298
    .line 299
    if-eqz v11, :cond_d

    .line 300
    .line 301
    iget-object v11, v11, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 302
    .line 303
    iget v11, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 304
    .line 305
    if-ne v11, v13, :cond_d

    .line 306
    .line 307
    const-string v11, "display-from-task=2"

    .line 308
    .line 309
    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    move v14, v13

    .line 313
    :cond_d
    if-ne v14, v9, :cond_11

    .line 314
    .line 315
    if-eqz v4, :cond_11

    .line 316
    .line 317
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    if-nez v11, :cond_11

    .line 322
    .line 323
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 324
    .line 325
    .line 326
    move-result v11

    .line 327
    if-nez v11, :cond_11

    .line 328
    .line 329
    iget-object v11, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 330
    .line 331
    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 332
    .line 333
    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    if-eqz v11, :cond_11

    .line 338
    .line 339
    iget v14, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 340
    .line 341
    new-instance v11, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v15, "display-from-focused-stack="

    .line 344
    .line 345
    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_e
    iget-object v11, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 360
    .line 361
    if-eqz v11, :cond_f

    .line 362
    .line 363
    iget-object v11, v11, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 364
    .line 365
    iget v11, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 366
    .line 367
    if-ne v11, v13, :cond_f

    .line 368
    .line 369
    :goto_8
    move v14, v8

    .line 370
    goto :goto_9

    .line 371
    :cond_f
    if-eqz v1, :cond_10

    .line 372
    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 374
    .line 375
    .line 376
    move-result v11

    .line 377
    if-ne v11, v13, :cond_10

    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_10
    move v14, v9

    .line 381
    :cond_11
    :goto_9
    iget-object v11, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 382
    .line 383
    invoke-virtual {v11, v14}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 384
    .line 385
    .line 386
    move-result-object v11

    .line 387
    if-eqz v11, :cond_12

    .line 388
    .line 389
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    goto :goto_a

    .line 394
    :cond_12
    move-object v11, v6

    .line 395
    :goto_a
    const-string v14, "display-from-dex-policy"

    .line 396
    .line 397
    if-eqz p2, :cond_14

    .line 398
    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 400
    .line 401
    .line 402
    move-result v15

    .line 403
    if-eq v15, v9, :cond_14

    .line 404
    .line 405
    iget-object v9, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 406
    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 408
    .line 409
    .line 410
    move-result v15

    .line 411
    invoke-virtual {v9, v15, v8, v6, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    if-eqz v9, :cond_13

    .line 416
    .line 417
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 418
    .line 419
    .line 420
    move-result-object v15

    .line 421
    if-eqz v15, :cond_13

    .line 422
    .line 423
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    new-instance v9, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    const-string v11, "display-from-launch-target-task"

    .line 430
    .line 431
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object v11, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 435
    .line 436
    iget v11, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 437
    .line 438
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v9

    .line 445
    invoke-virtual {v0, v9}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto :goto_c

    .line 449
    :cond_13
    if-eqz v11, :cond_15

    .line 450
    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget-object v9, v11, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 457
    .line 458
    iget v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 459
    .line 460
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    invoke-virtual {v0, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    goto :goto_b

    .line 471
    :cond_14
    if-eqz v11, :cond_15

    .line 472
    .line 473
    new-instance v7, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    iget-object v9, v11, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 479
    .line 480
    iget v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 481
    .line 482
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    invoke-virtual {v0, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :goto_b
    move-object v7, v11

    .line 493
    :cond_15
    :goto_c
    if-nez v7, :cond_1c

    .line 494
    .line 495
    if-eqz v12, :cond_1c

    .line 496
    .line 497
    iget-object v9, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 498
    .line 499
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    .line 500
    .line 501
    invoke-virtual {v9}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayRunningLocked()Z

    .line 502
    .line 503
    .line 504
    move-result v9

    .line 505
    if-eqz v9, :cond_1c

    .line 506
    .line 507
    if-eqz v2, :cond_16

    .line 508
    .line 509
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    goto :goto_d

    .line 514
    :cond_16
    move-object v7, v6

    .line 515
    :goto_d
    if-nez v7, :cond_17

    .line 516
    .line 517
    iget-object v9, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 518
    .line 519
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 520
    .line 521
    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    if-eqz v9, :cond_17

    .line 526
    .line 527
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    :cond_17
    if-eqz v7, :cond_1c

    .line 532
    .line 533
    iget-object v9, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 534
    .line 535
    if-eqz v9, :cond_18

    .line 536
    .line 537
    iget v11, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 538
    .line 539
    if-nez v11, :cond_18

    .line 540
    .line 541
    const/4 v11, 0x1

    .line 542
    goto :goto_e

    .line 543
    :cond_18
    move v11, v8

    .line 544
    :goto_e
    if-eqz v9, :cond_19

    .line 545
    .line 546
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    .line 547
    .line 548
    .line 549
    move-result v14

    .line 550
    if-eqz v14, :cond_19

    .line 551
    .line 552
    const/4 v14, 0x1

    .line 553
    goto :goto_f

    .line 554
    :cond_19
    move v14, v8

    .line 555
    :goto_f
    if-nez v11, :cond_1b

    .line 556
    .line 557
    if-eqz v14, :cond_1a

    .line 558
    .line 559
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 560
    .line 561
    .line 562
    move-result v11

    .line 563
    if-nez v11, :cond_1b

    .line 564
    .line 565
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 566
    .line 567
    .line 568
    move-result v11

    .line 569
    if-eqz v11, :cond_1a

    .line 570
    .line 571
    goto :goto_10

    .line 572
    :cond_1a
    move-object v7, v6

    .line 573
    goto :goto_11

    .line 574
    :cond_1b
    :goto_10
    new-instance v11, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v14, "display-from-remote-app-policy="

    .line 577
    .line 578
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    iget v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 582
    .line 583
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v9

    .line 590
    invoke-virtual {v0, v9}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    :cond_1c
    :goto_11
    if-nez v7, :cond_1d

    .line 594
    .line 595
    if-eqz v2, :cond_1d

    .line 596
    .line 597
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string v9, "display-area-from-source="

    .line 604
    .line 605
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    :cond_1d
    if-nez v7, :cond_1e

    .line 619
    .line 620
    if-eqz v1, :cond_1e

    .line 621
    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    goto :goto_12

    .line 627
    :cond_1e
    move-object v1, v6

    .line 628
    :goto_12
    if-eqz v1, :cond_21

    .line 629
    .line 630
    sget-boolean v2, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 631
    .line 632
    if-eqz v2, :cond_20

    .line 633
    .line 634
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 639
    .line 640
    if-eqz v2, :cond_20

    .line 641
    .line 642
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 647
    .line 648
    const/4 v9, 0x1

    .line 649
    xor-int/2addr v2, v9

    .line 650
    if-nez v2, :cond_20

    .line 651
    .line 652
    if-eqz v12, :cond_1f

    .line 653
    .line 654
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-nez v2, :cond_1f

    .line 659
    .line 660
    iget-object v2, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 661
    .line 662
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 663
    .line 664
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 669
    .line 670
    if-nez v7, :cond_1f

    .line 671
    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    const-string v7, "display-from-focus="

    .line 675
    .line 676
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 680
    .line 681
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v6

    .line 688
    invoke-virtual {v0, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 692
    .line 693
    .line 694
    move-result-object v6

    .line 695
    :cond_1f
    move-object v7, v6

    .line 696
    :cond_20
    if-nez v7, :cond_21

    .line 697
    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    const-string v6, "display-from-task="

    .line 701
    .line 702
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 706
    .line 707
    .line 708
    move-result v6

    .line 709
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 720
    .line 721
    .line 722
    move-result-object v7

    .line 723
    :cond_21
    if-nez v7, :cond_22

    .line 724
    .line 725
    if-eqz p2, :cond_22

    .line 726
    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    .line 728
    .line 729
    .line 730
    move-result v1

    .line 731
    iget-object v2, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 732
    .line 733
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    if-eqz v2, :cond_22

    .line 738
    .line 739
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 740
    .line 741
    .line 742
    move-result-object v7

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    .line 744
    .line 745
    const-string v6, "display-from-caller="

    .line 746
    .line 747
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    :cond_22
    if-nez v7, :cond_23

    .line 761
    .line 762
    if-eqz v3, :cond_23

    .line 763
    .line 764
    iget-object v7, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 765
    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    .line 767
    .line 768
    const-string v2, "display-area-from-current-params="

    .line 769
    .line 770
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    :cond_23
    if-eqz v7, :cond_24

    .line 784
    .line 785
    iget-object v1, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 786
    .line 787
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 788
    .line 789
    if-nez v1, :cond_24

    .line 790
    .line 791
    iget-object v1, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 792
    .line 793
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 794
    .line 795
    if-eqz v1, :cond_24

    .line 796
    .line 797
    iget-object v1, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 798
    .line 799
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 800
    .line 801
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 802
    .line 803
    .line 804
    move-result-object v7

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    const-string v2, "display-area-from-no-multidisplay="

    .line 808
    .line 809
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    :cond_24
    if-eqz v7, :cond_25

    .line 823
    .line 824
    if-eqz v4, :cond_25

    .line 825
    .line 826
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-eqz v1, :cond_25

    .line 831
    .line 832
    iget-object v1, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 833
    .line 834
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 835
    .line 836
    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 837
    .line 838
    .line 839
    move-result v1

    .line 840
    if-nez v1, :cond_25

    .line 841
    .line 842
    iget-object v1, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 843
    .line 844
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 845
    .line 846
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 847
    .line 848
    .line 849
    move-result-object v7

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    const-string v2, "display-area-from-home="

    .line 853
    .line 854
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    :cond_25
    if-eqz v7, :cond_26

    .line 868
    .line 869
    return-object v7

    .line 870
    :cond_26
    if-eqz v4, :cond_28

    .line 871
    .line 872
    iget-object v1, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 873
    .line 874
    iget v2, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    .line 875
    .line 876
    iget v3, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 877
    .line 878
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    if-eqz v1, :cond_27

    .line 883
    .line 884
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    if-eqz v1, :cond_27

    .line 889
    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    .line 891
    .line 892
    const-string v3, "display-area-for-launching-record="

    .line 893
    .line 894
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v2

    .line 904
    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    goto :goto_13

    .line 908
    :cond_27
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 909
    .line 910
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 911
    .line 912
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 913
    .line 914
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 915
    .line 916
    .line 917
    move-result v2

    .line 918
    iget-object v3, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 919
    .line 920
    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    if-eqz v1, :cond_28

    .line 925
    .line 926
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    if-eqz v1, :cond_28

    .line 931
    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    .line 933
    .line 934
    const-string v3, "display-area-for-record="

    .line 935
    .line 936
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v2

    .line 946
    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    goto :goto_13

    .line 950
    :cond_28
    if-eqz v5, :cond_29

    .line 951
    .line 952
    iget-object v1, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 953
    .line 954
    iget v2, v5, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 955
    .line 956
    iget v3, v5, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 957
    .line 958
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    if-eqz v1, :cond_29

    .line 963
    .line 964
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    if-eqz v1, :cond_29

    .line 969
    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    .line 971
    .line 972
    const-string v3, "display-area-source-process="

    .line 973
    .line 974
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    goto :goto_13

    .line 988
    :cond_29
    iget-object v1, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 989
    .line 990
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 991
    .line 992
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 993
    .line 994
    .line 995
    move-result-object v1

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    .line 997
    .line 998
    const-string v3, "display-area-from-default-fallback="

    .line 999
    .line 1000
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    :goto_13
    iget-object v0, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1014
    .line 1015
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1016
    .line 1017
    if-ne v0, v13, :cond_2a

    .line 1018
    .line 1019
    iget-object v2, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1020
    .line 1021
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 1022
    .line 1023
    iget-boolean v2, v2, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 1024
    .line 1025
    if-nez v2, :cond_2a

    .line 1026
    .line 1027
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1028
    .line 1029
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1030
    .line 1031
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    return-object v0

    .line 1036
    :cond_2a
    iget-object v2, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1037
    .line 1038
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1039
    .line 1040
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1041
    .line 1042
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 1043
    .line 1044
    invoke-interface {v2, v0}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldChooseDefaultTaskDisplayArea(I)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v0

    .line 1048
    if-eqz v0, :cond_2b

    .line 1049
    .line 1050
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1051
    .line 1052
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1053
    .line 1054
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    return-object v0

    .line 1059
    :cond_2b
    return-object v1
.end method

.method public final getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p4, v0, :cond_0

    .line 4
    .line 5
    if-eq p4, v1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo p2, "skip-bounds-"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0, p6, p1, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eq p1, v1, :cond_2

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p3, "Orientation must be one of portrait or landscape, but it\'s "

    .line 45
    .line 46
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {p2, p4}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 70
    .line 71
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p4}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-ge v0, v2, :cond_4

    .line 108
    .line 109
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 114
    .line 115
    :cond_4
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-ge v0, v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 126
    .line 127
    .line 128
    move-result p4

    .line 129
    iput p4, v1, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    :cond_5
    new-instance p4, Landroid/util/Size;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-direct {p4, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 145
    .line 146
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    const/4 v2, 0x0

    .line 155
    invoke-virtual {v0, v2, v2, v1, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    .line 157
    .line 158
    if-nez p5, :cond_7

    .line 159
    .line 160
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 161
    .line 162
    invoke-static {p6, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 163
    .line 164
    .line 165
    move-result p4

    .line 166
    if-eqz p4, :cond_6

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 170
    .line 171
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 184
    .line 185
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    invoke-static {p2, p1, p3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 190
    .line 191
    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string p3, "freeform-size-mismatch="

    .line 195
    .line 196
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_7
    :goto_1
    invoke-static {p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    .line 211
    .line 212
    .line 213
    move-result p3

    .line 214
    if-ne p1, p3, :cond_8

    .line 215
    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string p3, "freeform-size-orientation-match="

    .line 219
    .line 220
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 235
    .line 236
    invoke-static {p6, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_9

    .line 241
    .line 242
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    .line 243
    .line 244
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 254
    .line 255
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 256
    .line 257
    .line 258
    move-result p3

    .line 259
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    .line 260
    .line 261
    invoke-static {p2, p1, p3, p4}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    .line 265
    .line 266
    invoke-virtual {p6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 267
    .line 268
    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string p3, "freeform-orientation-ignore="

    .line 272
    .line 273
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_9
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    .line 292
    .line 293
    .line 294
    move-result p3

    .line 295
    invoke-static {p2, p1, p3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 296
    .line 297
    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string p3, "freeform-orientation-mismatch="

    .line 301
    .line 302
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :goto_2
    const/4 v5, 0x0

    .line 316
    const/4 v3, 0x0

    .line 317
    const/4 v4, 0x0

    .line 318
    move-object v0, p0

    .line 319
    move-object v1, p2

    .line 320
    move-object v2, p6

    .line 321
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    .line 322
    .line 323
    .line 324
    :goto_3
    return-void
.end method

.method public final recalculateLayout(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;)Landroid/content/pm/ActivityInfo$WindowLayout;
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-float p0, p0

    .line 20
    const/4 v0, 0x0

    .line 21
    cmpg-float v0, p0, v0

    .line 22
    .line 23
    if-gtz v0, :cond_1

    .line 24
    .line 25
    return-object p2

    .line 26
    :cond_1
    if-eqz p3, :cond_2

    .line 27
    .line 28
    const-string v0, "android.server.wm.app"

    .line 29
    .line 30
    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_2

    .line 37
    .line 38
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 39
    .line 40
    :goto_0
    int-to-float p1, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    div-float/2addr p1, p0

    .line 50
    iget p0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 51
    .line 52
    const/high16 p3, 0x3f000000    # 0.5f

    .line 53
    .line 54
    const/4 v0, -0x1

    .line 55
    if-gez p0, :cond_3

    .line 56
    .line 57
    move v2, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    int-to-float p0, p0

    .line 60
    mul-float/2addr p0, p1

    .line 61
    add-float/2addr p0, p3

    .line 62
    float-to-int p0, p0

    .line 63
    move v2, p0

    .line 64
    :goto_2
    iget p0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 65
    .line 66
    if-gez p0, :cond_4

    .line 67
    .line 68
    move v4, v0

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    int-to-float p0, p0

    .line 71
    mul-float/2addr p0, p1

    .line 72
    add-float/2addr p0, p3

    .line 73
    float-to-int p0, p0

    .line 74
    move v4, p0

    .line 75
    :goto_3
    iget p0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 76
    .line 77
    if-gez p0, :cond_5

    .line 78
    .line 79
    move v7, v0

    .line 80
    goto :goto_4

    .line 81
    :cond_5
    int-to-float p0, p0

    .line 82
    mul-float/2addr p0, p1

    .line 83
    add-float/2addr p0, p3

    .line 84
    float-to-int p0, p0

    .line 85
    move v7, p0

    .line 86
    :goto_4
    iget p0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 87
    .line 88
    if-gez p0, :cond_6

    .line 89
    .line 90
    :goto_5
    move v8, v0

    .line 91
    goto :goto_6

    .line 92
    :cond_6
    int-to-float p0, p0

    .line 93
    mul-float/2addr p0, p1

    .line 94
    add-float/2addr p0, p3

    .line 95
    float-to-int v0, p0

    .line 96
    goto :goto_5

    .line 97
    :goto_6
    new-instance p0, Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 98
    .line 99
    iget v3, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 100
    .line 101
    iget v5, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 102
    .line 103
    iget v6, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 104
    .line 105
    move-object v1, p0

    .line 106
    invoke-direct/range {v1 .. v8}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    .line 107
    .line 108
    .line 109
    return-object p0
.end method

.method public final resolveOrientation(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)I
    .locals 5

    .line 1
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    iget p2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    if-eq p2, v3, :cond_1

    .line 13
    .line 14
    const/16 v4, 0xb

    .line 15
    .line 16
    if-eq p2, v4, :cond_2

    .line 17
    .line 18
    const/16 v4, 0xc

    .line 19
    .line 20
    if-eq p2, v4, :cond_1

    .line 21
    .line 22
    if-eq p2, v1, :cond_0

    .line 23
    .line 24
    packed-switch p2, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move p2, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :pswitch_0
    move p2, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :pswitch_1
    const-string p2, "activity-requested-portrait"

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move p2, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :pswitch_2
    const-string p2, "activity-requested-landscape"

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move p2, v0

    .line 44
    :goto_0
    if-ne p2, v1, :cond_7

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_5

    .line 51
    .line 52
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 57
    .line 58
    if-eq p2, v3, :cond_3

    .line 59
    .line 60
    const/4 p3, 0x2

    .line 61
    if-eq p2, p3, :cond_4

    .line 62
    .line 63
    move v0, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v0, v3

    .line 66
    :cond_4
    :goto_1
    move p2, v0

    .line 67
    goto :goto_2

    .line 68
    :cond_5
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_6

    .line 77
    .line 78
    const-string p3, "locked-orientation-from-display="

    .line 79
    .line 80
    invoke-static {p2, p3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    goto :goto_3

    .line 85
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v0, "locked-orientation-from-bounds="

    .line 88
    .line 89
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    if-ne p2, v2, :cond_a

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_8

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_9

    .line 120
    .line 121
    const-string p1, "default-portrait"

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string/jumbo p3, "orientation-from-bounds="

    .line 127
    .line 128
    .line 129
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move p2, v3

    .line 143
    :cond_a
    return p2

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-ne p3, v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-eqz p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-static {p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 p2, 0x5

    .line 46
    if-ne p1, p2, :cond_2

    .line 47
    .line 48
    if-eq p3, p0, :cond_2

    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    :goto_0
    return v0
.end method
