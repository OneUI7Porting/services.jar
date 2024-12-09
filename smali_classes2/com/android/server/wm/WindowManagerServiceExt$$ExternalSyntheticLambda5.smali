.class public final synthetic Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(IIILandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$3:Landroid/os/IBinder;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    new-instance v3, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    .line 20
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const-string v7, "ScreenshotAnimation"

    .line 31
    .line 32
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x0

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_1

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_1
    and-int/lit8 v6, v5, 0x10

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_3

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_3
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    .line 67
    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    const/16 v6, 0xa2c

    .line 71
    .line 72
    if-ne v4, v6, :cond_4

    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :cond_4
    const/4 v4, 0x1

    .line 77
    if-ne v2, v4, :cond_5

    .line 78
    .line 79
    new-instance v2, Landroid/graphics/Region;

    .line 80
    .line 81
    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 95
    .line 96
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 97
    .line 98
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    .line 100
    .line 101
    iget v2, p1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 102
    .line 103
    if-ne v2, v4, :cond_6

    .line 104
    .line 105
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 106
    .line 107
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 108
    .line 109
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 110
    .line 111
    add-int/2addr v2, v8

    .line 112
    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 113
    .line 114
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    add-int/2addr v2, v8

    .line 119
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 120
    .line 121
    iget v2, v3, Landroid/graphics/Rect;->right:I

    .line 122
    .line 123
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    sub-int/2addr v2, v8

    .line 126
    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 127
    .line 128
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 129
    .line 130
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 131
    .line 132
    sub-int/2addr v2, v6

    .line 133
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    const/4 v6, 0x2

    .line 137
    if-eq v2, v6, :cond_7

    .line 138
    .line 139
    const/4 v6, 0x3

    .line 140
    if-ne v2, v6, :cond_8

    .line 141
    .line 142
    :cond_7
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 145
    .line 146
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 147
    .line 148
    add-int/2addr v2, v8

    .line 149
    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 150
    .line 151
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 152
    .line 153
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 154
    .line 155
    add-int/2addr v2, v8

    .line 156
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 157
    .line 158
    iget v2, v3, Landroid/graphics/Rect;->right:I

    .line 159
    .line 160
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 161
    .line 162
    sub-int/2addr v2, v8

    .line 163
    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 164
    .line 165
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 166
    .line 167
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 168
    .line 169
    sub-int/2addr v2, v6

    .line 170
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 171
    .line 172
    :cond_8
    :goto_0
    and-int/lit8 v2, v5, 0x28

    .line 173
    .line 174
    if-nez v2, :cond_9

    .line 175
    .line 176
    move v2, v4

    .line 177
    goto :goto_1

    .line 178
    :cond_9
    move v2, v7

    .line 179
    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_a

    .line 184
    .line 185
    if-eqz v2, :cond_b

    .line 186
    .line 187
    :cond_a
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 188
    .line 189
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-eq p1, p0, :cond_b

    .line 194
    .line 195
    move v7, v4

    .line 196
    :cond_b
    :goto_2
    return v7
.end method
