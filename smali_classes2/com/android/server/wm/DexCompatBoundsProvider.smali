.class public Lcom/android/server/wm/DexCompatBoundsProvider;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mIsPortrait:Z

.field public final mStableBounds:Landroid/graphics/Rect;

.field public mTask:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mStableBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    return-void
.end method

.method public static getDefaultHeight(II)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_2

    .line 3
    .line 4
    if-lez p1, :cond_1

    .line 5
    .line 6
    const/16 p0, 0x578

    .line 7
    .line 8
    if-le p1, p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p0, 0x2f5

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/16 p0, 0x41a

    .line 15
    .line 16
    :goto_1
    return p0

    .line 17
    :cond_2
    const/4 p1, 0x2

    .line 18
    if-ne p0, p1, :cond_4

    .line 19
    .line 20
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    const/16 p0, 0x258

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_3
    const/16 p0, 0x2db

    .line 28
    .line 29
    :goto_2
    return p0

    .line 30
    :cond_4
    const/4 p0, -0x1

    .line 31
    return p0
.end method

.method public static getDefaultWidth(II)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_2

    .line 3
    .line 4
    const/16 p0, 0x578

    .line 5
    .line 6
    if-lez p1, :cond_1

    .line 7
    .line 8
    if-le p1, p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p0, 0x3f2

    .line 12
    .line 13
    :cond_1
    :goto_0
    return p0

    .line 14
    :cond_2
    const/4 p1, 0x2

    .line 15
    if-ne p0, p1, :cond_4

    .line 16
    .line 17
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 18
    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    const/16 p0, 0x320

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_3
    const/16 p0, 0x19b

    .line 25
    .line 26
    :goto_1
    return p0

    .line 27
    :cond_4
    const/4 p0, -0x1

    .line 28
    return p0
.end method


# virtual methods
.method public getBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDexMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDisplayShortSize()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultWidth(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDexMode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDisplayShortSize()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v1, v2}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultHeight(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    if-gtz v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1, v2, v2, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1, v2, v2, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :cond_2
    :goto_1
    const-string p0, "getBounds: Invalid default size, "

    .line 60
    .line 61
    const-string/jumbo p1, "x"

    .line 62
    .line 63
    .line 64
    const-string v2, "DexCompatBoundsProvider"

    .line 65
    .line 66
    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public getDexMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getDisplayShortSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mStableBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mStableBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public isPortrait(I)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move p1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    move p1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move p1, v1

    .line 21
    :goto_0
    if-nez p1, :cond_c

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    move p1, v1

    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    move v0, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    move v0, v3

    .line 45
    :goto_1
    iget v4, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 46
    .line 47
    if-eq v4, v3, :cond_9

    .line 48
    .line 49
    if-eq v4, v2, :cond_6

    .line 50
    .line 51
    const/4 p0, 0x3

    .line 52
    if-eq v4, p0, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_b

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-le p0, p1, :cond_5

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    move v2, v3

    .line 73
    goto :goto_3

    .line 74
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_8

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    .line 81
    .line 82
    if-nez p0, :cond_7

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_7
    iget p1, p0, Landroid/graphics/Point;->x:I

    .line 86
    .line 87
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 88
    .line 89
    if-le p1, p0, :cond_5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-le p0, p1, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_a

    .line 108
    .line 109
    :goto_2
    move v2, v0

    .line 110
    goto :goto_3

    .line 111
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-le p0, p1, :cond_5

    .line 120
    .line 121
    :cond_b
    :goto_3
    move p1, v2

    .line 122
    :cond_c
    :goto_4
    if-ne p1, v3, :cond_d

    .line 123
    .line 124
    move v1, v3

    .line 125
    :cond_d
    return v1
.end method
