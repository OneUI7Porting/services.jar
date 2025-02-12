.class public final Lcom/android/server/accessibility/gestures/MultiFingerSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBase:[Landroid/graphics/PointF;

.field public mCurrentFingerCount:I

.field public final mDirection:I

.field public final mMinPixelsBetweenSamplesX:F

.field public final mMinPixelsBetweenSamplesY:F

.field public final mPointerIds:[I

.field public final mPreviousGesturePoint:[Landroid/graphics/PointF;

.field public final mStrokeBuffers:[Ljava/util/ArrayList;

.field public final mTargetFingerCount:I

.field public mTargetFingerCountReached:Z

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 11
    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    iput-boolean p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 15
    .line 16
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    .line 17
    .line 18
    new-array p4, p2, [I

    .line 19
    .line 20
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 21
    .line 22
    new-array p4, p2, [Landroid/graphics/PointF;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 25
    .line 26
    new-array p4, p2, [Landroid/graphics/PointF;

    .line 27
    .line 28
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 29
    .line 30
    new-array p2, p2, [Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 33
    .line 34
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget p3, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 45
    .line 46
    const p4, 0x40228f5c    # 2.54f

    .line 47
    .line 48
    .line 49
    div-float/2addr p3, p4

    .line 50
    iget p2, p2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 51
    .line 52
    div-float/2addr p2, p4

    .line 53
    const/high16 p4, 0x3e800000    # 0.25f

    .line 54
    .line 55
    mul-float/2addr p3, p4

    .line 56
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 57
    .line 58
    mul-float/2addr p2, p4

    .line 59
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 60
    .line 61
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->clear()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static directionToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const-string p0, "Unknown Direction"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string/jumbo p0, "down"

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const-string/jumbo p0, "up"

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    const-string/jumbo p0, "right"

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const-string/jumbo p0, "left"

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public static toDirection(FF)I
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    cmpg-float p0, p0, v1

    .line 15
    .line 16
    if-gez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    :goto_0
    return p0

    .line 22
    :cond_1
    cmpg-float p0, p1, v1

    .line 23
    .line 24
    if-gez p0, :cond_2

    .line 25
    .line 26
    const/4 p0, 0x2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 p0, 0x3

    .line 29
    :goto_1
    return p0
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 5
    .line 6
    :goto_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    .line 7
    .line 8
    if-ge v0, v1, :cond_3

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    aput v2, v1, v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 16
    .line 17
    aget-object v2, v1, v0

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Landroid/graphics/PointF;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 24
    .line 25
    .line 26
    aput-object v2, v1, v0

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 29
    .line 30
    aget-object v1, v1, v0

    .line 31
    .line 32
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 33
    .line 34
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 35
    .line 36
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 39
    .line 40
    aget-object v3, v1, v0

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    new-instance v3, Landroid/graphics/PointF;

    .line 45
    .line 46
    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 47
    .line 48
    .line 49
    aput-object v3, v1, v0

    .line 50
    .line 51
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 52
    .line 53
    aget-object v1, v1, v0

    .line 54
    .line 55
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 56
    .line 57
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 60
    .line 61
    aget-object v2, v1, v0

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    const/16 v3, 0x64

    .line 68
    .line 69
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    aput-object v2, v1, v0

    .line 73
    .line 74
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 75
    .line 76
    aget-object v1, v1, v0

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final getGestureName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "-finger Swipe "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    .line 17
    .line 18
    invoke-static {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->directionToString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 12
    .line 13
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    sub-int/2addr v4, v0

    .line 26
    if-gez v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 33
    .line 34
    aget v5, v0, v4

    .line 35
    .line 36
    const/4 v6, -0x1

    .line 37
    if-eq v5, v6, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    aput v3, v0, v4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 46
    .line 47
    aget-object v0, v0, v4

    .line 48
    .line 49
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 58
    .line 59
    aget-object v0, v0, v4

    .line 60
    .line 61
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/4 v3, 0x0

    .line 78
    cmpg-float v5, v0, v3

    .line 79
    .line 80
    if-ltz v5, :cond_4

    .line 81
    .line 82
    cmpg-float v3, v2, v3

    .line 83
    .line 84
    if-gez v3, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 88
    .line 89
    aget-object p1, p1, v4

    .line 90
    .line 91
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 92
    .line 93
    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 96
    .line 97
    aget-object p0, p0, v4

    .line 98
    .line 99
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 100
    .line 101
    iput v2, p0, Landroid/graphics/PointF;->y:F

    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    :goto_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_5
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 17

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
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    :goto_0
    iget v6, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    .line 11
    .line 12
    if-ge v5, v6, :cond_e

    .line 13
    .line 14
    iget-object v7, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 15
    .line 16
    aget v8, v7, v5

    .line 17
    .line 18
    const/4 v9, -0x1

    .line 19
    if-ne v8, v9, :cond_1

    .line 20
    .line 21
    :cond_0
    :goto_1
    move/from16 v16, v5

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    sget-boolean v8, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 26
    .line 27
    if-eqz v8, :cond_2

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    const-string v10, "Processing move on finger "

    .line 34
    .line 35
    invoke-static {v5, v10, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    aget v7, v7, v5

    .line 39
    .line 40
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-gez v7, :cond_3

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const-string v7, "Finger "

    .line 53
    .line 54
    const-string v8, " not found in this event. skipping."

    .line 55
    .line 56
    invoke-static {v5, v7, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getX(I)F

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const/4 v10, 0x0

    .line 69
    cmpg-float v11, v9, v10

    .line 70
    .line 71
    const/4 v12, 0x3

    .line 72
    if-ltz v11, :cond_d

    .line 73
    .line 74
    cmpg-float v10, v7, v10

    .line 75
    .line 76
    if-gez v10, :cond_4

    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_4
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 81
    .line 82
    aget-object v10, v10, v5

    .line 83
    .line 84
    iget v10, v10, Landroid/graphics/PointF;->x:F

    .line 85
    .line 86
    sub-float v10, v9, v10

    .line 87
    .line 88
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 93
    .line 94
    aget-object v11, v11, v5

    .line 95
    .line 96
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 97
    .line 98
    sub-float v11, v7, v11

    .line 99
    .line 100
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    iget-object v13, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 105
    .line 106
    aget-object v13, v13, v5

    .line 107
    .line 108
    iget v13, v13, Landroid/graphics/PointF;->x:F

    .line 109
    .line 110
    sub-float v13, v9, v13

    .line 111
    .line 112
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    float-to-double v13, v13

    .line 117
    iget-object v15, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 118
    .line 119
    aget-object v15, v15, v5

    .line 120
    .line 121
    iget v15, v15, Landroid/graphics/PointF;->y:F

    .line 122
    .line 123
    sub-float v15, v7, v15

    .line 124
    .line 125
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    move/from16 v16, v5

    .line 130
    .line 131
    float-to-double v4, v15

    .line 132
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 133
    .line 134
    .line 135
    move-result-wide v4

    .line 136
    if-eqz v8, :cond_5

    .line 137
    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    new-instance v13, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string/jumbo v14, "moveDelta:"

    .line 145
    .line 146
    .line 147
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_5
    iget v8, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 161
    .line 162
    iget v13, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    .line 163
    .line 164
    const/4 v14, 0x1

    .line 165
    if-nez v8, :cond_9

    .line 166
    .line 167
    iget v8, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    .line 168
    .line 169
    mul-int/2addr v8, v6

    .line 170
    int-to-double v10, v8

    .line 171
    cmpg-double v4, v4, v10

    .line 172
    .line 173
    if-gez v4, :cond_6

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_6
    iget v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 177
    .line 178
    if-eq v4, v6, :cond_7

    .line 179
    .line 180
    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_7
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 185
    .line 186
    aget-object v4, v4, v16

    .line 187
    .line 188
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 189
    .line 190
    sub-float/2addr v9, v5

    .line 191
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 192
    .line 193
    sub-float/2addr v7, v4

    .line 194
    invoke-static {v9, v7}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eq v4, v13, :cond_8

    .line 199
    .line 200
    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_8
    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 205
    .line 206
    .line 207
    const/4 v4, 0x0

    .line 208
    :goto_2
    if-ge v4, v6, :cond_c

    .line 209
    .line 210
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 211
    .line 212
    aget-object v5, v5, v4

    .line 213
    .line 214
    new-instance v7, Landroid/graphics/PointF;

    .line 215
    .line 216
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 217
    .line 218
    aget-object v8, v8, v4

    .line 219
    .line 220
    invoke-direct {v7, v8}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    add-int/lit8 v4, v4, 0x1

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_9
    if-ne v8, v14, :cond_c

    .line 230
    .line 231
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 232
    .line 233
    aget-object v4, v4, v16

    .line 234
    .line 235
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 236
    .line 237
    sub-float v5, v9, v5

    .line 238
    .line 239
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 240
    .line 241
    sub-float v4, v7, v4

    .line 242
    .line 243
    invoke-static {v5, v4}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-eq v4, v13, :cond_a

    .line 248
    .line 249
    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_a
    iget v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 254
    .line 255
    cmpl-float v4, v10, v4

    .line 256
    .line 257
    if-gez v4, :cond_b

    .line 258
    .line 259
    iget v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 260
    .line 261
    cmpl-float v4, v11, v4

    .line 262
    .line 263
    if-ltz v4, :cond_c

    .line 264
    .line 265
    :cond_b
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 266
    .line 267
    aget-object v4, v4, v16

    .line 268
    .line 269
    iput v9, v4, Landroid/graphics/PointF;->x:F

    .line 270
    .line 271
    iput v7, v4, Landroid/graphics/PointF;->y:F

    .line 272
    .line 273
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 274
    .line 275
    aget-object v4, v4, v16

    .line 276
    .line 277
    new-instance v5, Landroid/graphics/PointF;

    .line 278
    .line 279
    invoke-direct {v5, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    :cond_c
    :goto_3
    add-int/lit8 v5, v16, 0x1

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_d
    :goto_4
    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 290
    .line 291
    .line 292
    :cond_e
    return-void
.end method

.method public final onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    .line 7
    .line 8
    if-le v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    add-int/2addr v0, v3

    .line 18
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eq v0, v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 31
    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    iput-boolean v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 35
    .line 36
    :cond_2
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-gez v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    iget v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 51
    .line 52
    sub-int/2addr v4, v3

    .line 53
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 54
    .line 55
    aget v5, v3, v4

    .line 56
    .line 57
    const/4 v6, -0x1

    .line 58
    if-eq v5, v6, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    aput v2, v3, v4

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 67
    .line 68
    aget-object v2, v2, v4

    .line 69
    .line 70
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 71
    .line 72
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_7

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 79
    .line 80
    aget-object v2, v2, v4

    .line 81
    .line 82
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 83
    .line 84
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_7

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v3, 0x0

    .line 99
    cmpg-float v5, v2, v3

    .line 100
    .line 101
    if-ltz v5, :cond_6

    .line 102
    .line 103
    cmpg-float v3, v0, v3

    .line 104
    .line 105
    if-gez v3, :cond_5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 109
    .line 110
    aget-object p1, p1, v4

    .line 111
    .line 112
    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 113
    .line 114
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 117
    .line 118
    aget-object p0, p0, v4

    .line 119
    .line 120
    iput v2, p0, Landroid/graphics/PointF;->x:F

    .line 121
    .line 122
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 123
    .line 124
    return-void

    .line 125
    :cond_6
    :goto_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_7
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-gez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 31
    .line 32
    invoke-static {v3, v2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-gez v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v4, 0x0

    .line 51
    cmpg-float v5, v3, v4

    .line 52
    .line 53
    if-ltz v5, :cond_6

    .line 54
    .line 55
    cmpg-float v4, v0, v4

    .line 56
    .line 57
    if-gez v4, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 61
    .line 62
    aget-object p1, p1, v2

    .line 63
    .line 64
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 65
    .line 66
    sub-float p1, v3, p1

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 73
    .line 74
    aget-object p2, p2, v2

    .line 75
    .line 76
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 77
    .line 78
    sub-float p2, v0, p2

    .line 79
    .line 80
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    iget p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 85
    .line 86
    cmpl-float p1, p1, p3

    .line 87
    .line 88
    if-gez p1, :cond_4

    .line 89
    .line 90
    iget p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 91
    .line 92
    cmpl-float p1, p2, p1

    .line 93
    .line 94
    if-ltz p1, :cond_5

    .line 95
    .line 96
    :cond_4
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 97
    .line 98
    aget-object p0, p0, v2

    .line 99
    .line 100
    new-instance p1, Landroid/graphics/PointF;

    .line 101
    .line 102
    invoke-direct {p1, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :cond_5
    return-void

    .line 109
    :cond_6
    :goto_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 23
    .line 24
    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-gez v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v6, 0x0

    .line 43
    cmpg-float v7, v5, v6

    .line 44
    .line 45
    if-ltz v7, :cond_d

    .line 46
    .line 47
    cmpg-float v6, v3, v6

    .line 48
    .line 49
    if-gez v6, :cond_2

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_2
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 54
    .line 55
    aget-object v6, v6, v4

    .line 56
    .line 57
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 58
    .line 59
    sub-float v6, v5, v6

    .line 60
    .line 61
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    iget-object v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 66
    .line 67
    aget-object v7, v7, v4

    .line 68
    .line 69
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 70
    .line 71
    sub-float v7, v3, v7

    .line 72
    .line 73
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    iget v8, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 78
    .line 79
    cmpl-float v6, v6, v8

    .line 80
    .line 81
    if-gez v6, :cond_3

    .line 82
    .line 83
    iget v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 84
    .line 85
    cmpl-float v6, v7, v6

    .line 86
    .line 87
    if-ltz v6, :cond_4

    .line 88
    .line 89
    :cond_3
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 90
    .line 91
    aget-object v4, v6, v4

    .line 92
    .line 93
    new-instance v6, Landroid/graphics/PointF;

    .line 94
    .line 95
    invoke-direct {v6, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_4
    move v3, v0

    .line 102
    :goto_0
    iget v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    .line 103
    .line 104
    const/4 v5, 0x2

    .line 105
    if-ge v3, v4, :cond_c

    .line 106
    .line 107
    sget-boolean v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 108
    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    const-string v7, "Recognizing finger: "

    .line 116
    .line 117
    invoke-static {v3, v7, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 121
    .line 122
    aget-object v6, v6, v3

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-ge v6, v5, :cond_6

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v2, "Too few points."

    .line 135
    .line 136
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :cond_6
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 145
    .line 146
    aget-object v5, v5, v3

    .line 147
    .line 148
    if-eqz v4, :cond_7

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string/jumbo v7, "path="

    .line 157
    .line 158
    .line 159
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 177
    .line 178
    .line 179
    move v4, v0

    .line 180
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    sub-int/2addr v6, v2

    .line 185
    if-ge v4, v6, :cond_a

    .line 186
    .line 187
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    check-cast v6, Landroid/graphics/PointF;

    .line 192
    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    .line 195
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    check-cast v7, Landroid/graphics/PointF;

    .line 200
    .line 201
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 202
    .line 203
    iget v9, v6, Landroid/graphics/PointF;->x:F

    .line 204
    .line 205
    sub-float/2addr v8, v9

    .line 206
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 207
    .line 208
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 209
    .line 210
    sub-float/2addr v7, v6

    .line 211
    invoke-static {v8, v7}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    .line 216
    .line 217
    if-eq v6, v7, :cond_8

    .line 218
    .line 219
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 220
    .line 221
    if-eqz v0, :cond_9

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v3, "Found direction "

    .line 230
    .line 231
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->directionToString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v3, " when expecting "

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-static {v7}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->directionToString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    :cond_9
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 261
    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_a
    sget-boolean v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 265
    .line 266
    if-eqz v4, :cond_b

    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    const-string v5, "Completed."

    .line 273
    .line 274
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_c
    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 282
    .line 283
    .line 284
    :goto_1
    return-void

    .line 285
    :cond_d
    :goto_2
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    const-string v1, ", mBase: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", mMinPixelsBetweenSamplesX:"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", mMinPixelsBetweenSamplesY:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
