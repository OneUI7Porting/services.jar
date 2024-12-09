.class public final Lcom/android/server/wm/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

.field public final mContext:Landroid/content/Context;

.field public mDebugFireable:Z

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayCutoutTouchableRegionSize:I

.field public final mDownPointerId:[I

.field public mDownPointers:I

.field public final mDownTime:[J

.field public final mDownX:[F

.field public final mDownY:[F

.field public mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

.field public final mHandler:Landroid/os/Handler;

.field public mLastFlingTime:J

.field public mMouseHoveringAtBottom:Z

.field public mMouseHoveringAtLeft:Z

.field public mMouseHoveringAtRight:Z

.field public mMouseHoveringAtTop:Z

.field public mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field public mSwipeDistanceThreshold:I

.field public mSwipeFireable:Z

.field public final mSwipeStartThreshold:Landroid/graphics/Rect;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayPolicy$PolicyHandler;Lcom/android/server/wm/DisplayPolicy$1;)V
    .locals 2

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
    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/16 v0, 0x20

    .line 12
    .line 13
    new-array v1, v0, [I

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 16
    .line 17
    new-array v1, v0, [F

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 20
    .line 21
    new-array v1, v0, [F

    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 24
    .line 25
    new-array v0, v0, [J

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p1, " must not be null"

    .line 44
    .line 45
    const-string p2, "context"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method


# virtual methods
.method public final captureDown(ILandroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    aput v2, v1, v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    aput p1, v1, v0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    aput-wide p1, p0, v0

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final detectSwipe(IJFF)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 6
    .line 7
    aget v1, v1, p1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 10
    .line 11
    aget-wide v2, v2, p1

    .line 12
    .line 13
    sub-long/2addr p2, v2

    .line 14
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    cmpg-float v2, v1, v2

    .line 20
    .line 21
    const-wide/16 v3, 0x1f4

    .line 22
    .line 23
    if-gtz v2, :cond_0

    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    add-float/2addr v2, v1

    .line 29
    cmpl-float v2, p5, v2

    .line 30
    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    cmp-long v2, p2, v3

    .line 34
    .line 35
    if-gez v2, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 40
    .line 41
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    sub-int/2addr v2, v5

    .line 44
    int-to-float v2, v2

    .line 45
    cmpl-float v2, v1, v2

    .line 46
    .line 47
    if-ltz v2, :cond_1

    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    sub-float/2addr v1, v2

    .line 53
    cmpg-float p5, p5, v1

    .line 54
    .line 55
    if-gez p5, :cond_1

    .line 56
    .line 57
    cmp-long p5, p2, v3

    .line 58
    .line 59
    if-gez p5, :cond_1

    .line 60
    .line 61
    const/4 p0, 0x2

    .line 62
    return p0

    .line 63
    :cond_1
    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 64
    .line 65
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 66
    .line 67
    sub-int/2addr p5, v1

    .line 68
    int-to-float p5, p5

    .line 69
    cmpl-float p5, v0, p5

    .line 70
    .line 71
    if-ltz p5, :cond_2

    .line 72
    .line 73
    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 74
    .line 75
    int-to-float p5, p5

    .line 76
    sub-float p5, v0, p5

    .line 77
    .line 78
    cmpg-float p5, p4, p5

    .line 79
    .line 80
    if-gez p5, :cond_2

    .line 81
    .line 82
    cmp-long p5, p2, v3

    .line 83
    .line 84
    if-gez p5, :cond_2

    .line 85
    .line 86
    const/4 p0, 0x3

    .line 87
    return p0

    .line 88
    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    int-to-float p1, p1

    .line 91
    cmpg-float p1, v0, p1

    .line 92
    .line 93
    if-gtz p1, :cond_3

    .line 94
    .line 95
    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 96
    .line 97
    int-to-float p0, p0

    .line 98
    add-float/2addr v0, p0

    .line 99
    cmpl-float p0, p4, v0

    .line 100
    .line 101
    if-lez p0, :cond_3

    .line 102
    .line 103
    cmp-long p0, p2, v3

    .line 104
    .line 105
    if-gez p0, :cond_3

    .line 106
    .line 107
    const/4 p0, 0x4

    .line 108
    return p0

    .line 109
    :cond_3
    const/4 p0, 0x0

    .line 110
    return p0
.end method

.method public final detectSystemGestureForDex(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    cmpl-float v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const-wide/16 v2, 0x1f4

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 31
    .line 32
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    cmpl-float v0, v0, v2

    .line 48
    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 56
    .line 57
    add-int/lit8 v2, v2, -0x16

    .line 58
    .line 59
    int-to-float v2, v2

    .line 60
    cmpg-float v0, v0, v2

    .line 61
    .line 62
    if-gez v0, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 65
    .line 66
    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 79
    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 87
    .line 88
    add-int/lit8 v2, v2, -0x16

    .line 89
    .line 90
    int-to-float v2, v2

    .line 91
    cmpl-float v0, v0, v2

    .line 92
    .line 93
    if-ltz v0, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy$1;->onMouseHoverAtBottom()V

    .line 98
    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iget v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 112
    .line 113
    add-int/lit8 v0, v0, -0x16

    .line 114
    .line 115
    int-to-float v0, v0

    .line 116
    cmpg-float p1, p1, v0

    .line 117
    .line 118
    if-gez p1, :cond_3

    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 121
    .line 122
    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 125
    .line 126
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    iput-boolean v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 132
    .line 133
    :cond_3
    :goto_0
    return-void
.end method

.method public final findIndex(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/16 v0, 0x20

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v1, v0, :cond_3

    .line 20
    .line 21
    if-ne p1, v2, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 29
    .line 30
    aput p1, v0, v1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    :goto_1
    return v2
.end method

.method public final onConfigurationChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x105057c

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    .line 25
    .line 26
    const v1, 0x105057b

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 34
    .line 35
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    const v3, 0x1050182

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    aget-object v1, v0, v2

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 68
    .line 69
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 76
    .line 77
    add-int/2addr v1, v4

    .line 78
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    :cond_1
    const/4 v1, 0x1

    .line 85
    aget-object v1, v0, v1

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 90
    .line 91
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 98
    .line 99
    add-int/2addr v1, v4

    .line 100
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    :cond_2
    const/4 v1, 0x2

    .line 107
    aget-object v1, v0, v1

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 112
    .line 113
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 120
    .line 121
    add-int/2addr v1, v4

    .line 122
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 127
    .line 128
    :cond_3
    const/4 v1, 0x3

    .line 129
    aget-object v0, v0, v1

    .line 130
    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 134
    .line 135
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 142
    .line 143
    add-int/2addr v0, p0

    .line 144
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 149
    .line 150
    :cond_4
    return-void
.end method

.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    .line 16
    .line 17
    invoke-virtual {v1, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    const/4 v9, 0x0

    .line 27
    if-eqz v1, :cond_24

    .line 28
    .line 29
    if-eq v1, v8, :cond_21

    .line 30
    .line 31
    const/4 v10, 0x3

    .line 32
    const/4 v11, 0x2

    .line 33
    const/4 v12, 0x0

    .line 34
    if-eq v1, v11, :cond_c

    .line 35
    .line 36
    if-eq v1, v10, :cond_21

    .line 37
    .line 38
    const/4 v2, 0x5

    .line 39
    if-eq v1, v2, :cond_a

    .line 40
    .line 41
    const/4 v2, 0x7

    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    goto/16 :goto_d

    .line 45
    .line 46
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSystemGestureForDex(Landroid/view/MotionEvent;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_d

    .line 64
    .line 65
    :cond_2
    const/16 v1, 0x2002

    .line 66
    .line 67
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2b

    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 82
    .line 83
    const-wide/16 v4, 0x1f4

    .line 84
    .line 85
    if-nez v3, :cond_3

    .line 86
    .line 87
    cmpl-float v6, v1, v12

    .line 88
    .line 89
    if-nez v6, :cond_3

    .line 90
    .line 91
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 92
    .line 93
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 94
    .line 95
    iget-object v7, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 96
    .line 97
    iget-object v10, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    .line 108
    .line 109
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    if-eqz v3, :cond_4

    .line 113
    .line 114
    cmpl-float v3, v1, v12

    .line 115
    .line 116
    if-lez v3, :cond_4

    .line 117
    .line 118
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 119
    .line 120
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 121
    .line 122
    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 123
    .line 124
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 130
    .line 131
    :cond_4
    :goto_0
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 132
    .line 133
    if-nez v3, :cond_5

    .line 134
    .line 135
    cmpl-float v6, v2, v12

    .line 136
    .line 137
    if-nez v6, :cond_5

    .line 138
    .line 139
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 140
    .line 141
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 142
    .line 143
    iget-object v7, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 144
    .line 145
    iget-object v10, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 153
    .line 154
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    .line 156
    .line 157
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    if-eqz v3, :cond_6

    .line 161
    .line 162
    cmpl-float v3, v2, v12

    .line 163
    .line 164
    if-lez v3, :cond_6

    .line 165
    .line 166
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 167
    .line 168
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 169
    .line 170
    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 171
    .line 172
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    .line 176
    .line 177
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 178
    .line 179
    :cond_6
    :goto_1
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 180
    .line 181
    if-nez v3, :cond_7

    .line 182
    .line 183
    iget v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 184
    .line 185
    sub-int/2addr v6, v8

    .line 186
    int-to-float v6, v6

    .line 187
    cmpl-float v6, v1, v6

    .line 188
    .line 189
    if-ltz v6, :cond_7

    .line 190
    .line 191
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 192
    .line 193
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 194
    .line 195
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 196
    .line 197
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 198
    .line 199
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    .line 201
    .line 202
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 203
    .line 204
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 205
    .line 206
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    .line 208
    .line 209
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    if-eqz v3, :cond_8

    .line 213
    .line 214
    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 215
    .line 216
    sub-int/2addr v3, v8

    .line 217
    int-to-float v3, v3

    .line 218
    cmpg-float v1, v1, v3

    .line 219
    .line 220
    if-gez v1, :cond_8

    .line 221
    .line 222
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 223
    .line 224
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 225
    .line 226
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 227
    .line 228
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 229
    .line 230
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    .line 232
    .line 233
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 234
    .line 235
    :cond_8
    :goto_2
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 236
    .line 237
    if-nez v1, :cond_9

    .line 238
    .line 239
    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 240
    .line 241
    sub-int/2addr v3, v8

    .line 242
    int-to-float v3, v3

    .line 243
    cmpl-float v3, v2, v3

    .line 244
    .line 245
    if-ltz v3, :cond_9

    .line 246
    .line 247
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy$1;->onMouseHoverAtBottom()V

    .line 250
    .line 251
    .line 252
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 253
    .line 254
    goto/16 :goto_d

    .line 255
    .line 256
    :cond_9
    if-eqz v1, :cond_2b

    .line 257
    .line 258
    iget v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 259
    .line 260
    sub-int/2addr v1, v8

    .line 261
    int-to-float v1, v1

    .line 262
    cmpg-float v1, v2, v1

    .line 263
    .line 264
    if-gez v1, :cond_2b

    .line 265
    .line 266
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 267
    .line 268
    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 269
    .line 270
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 271
    .line 272
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 273
    .line 274
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    .line 276
    .line 277
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 278
    .line 279
    goto/16 :goto_d

    .line 280
    .line 281
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(ILandroid/view/MotionEvent;)V

    .line 286
    .line 287
    .line 288
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 289
    .line 290
    if-eqz v1, :cond_2b

    .line 291
    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-ge v1, v2, :cond_b

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_b
    move v8, v9

    .line 300
    :goto_3
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 301
    .line 302
    if-nez v8, :cond_2b

    .line 303
    .line 304
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    goto/16 :goto_d

    .line 310
    .line 311
    :cond_c
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 312
    .line 313
    if-eqz v1, :cond_2b

    .line 314
    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    const/4 v13, 0x4

    .line 320
    if-ne v1, v13, :cond_10

    .line 321
    .line 322
    const/16 v1, 0x35

    .line 323
    .line 324
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    const/high16 v2, 0x40400000    # 3.0f

    .line 329
    .line 330
    cmpl-float v1, v1, v2

    .line 331
    .line 332
    if-nez v1, :cond_10

    .line 333
    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    iget-object v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 339
    .line 340
    aget v2, v2, v9

    .line 341
    .line 342
    sub-float/2addr v1, v2

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 348
    .line 349
    aget v3, v3, v9

    .line 350
    .line 351
    sub-float/2addr v2, v3

    .line 352
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    cmpg-float v3, v3, v4

    .line 361
    .line 362
    if-gez v3, :cond_e

    .line 363
    .line 364
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 369
    .line 370
    int-to-float v3, v3

    .line 371
    cmpl-float v1, v1, v3

    .line 372
    .line 373
    if-lez v1, :cond_10

    .line 374
    .line 375
    cmpl-float v1, v2, v12

    .line 376
    .line 377
    if-lez v1, :cond_d

    .line 378
    .line 379
    move v1, v8

    .line 380
    goto :goto_4

    .line 381
    :cond_d
    move v1, v11

    .line 382
    goto :goto_4

    .line 383
    :cond_e
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 388
    .line 389
    int-to-float v3, v3

    .line 390
    cmpl-float v2, v2, v3

    .line 391
    .line 392
    if-lez v2, :cond_10

    .line 393
    .line 394
    cmpl-float v1, v1, v12

    .line 395
    .line 396
    if-lez v1, :cond_f

    .line 397
    .line 398
    move v1, v13

    .line 399
    goto :goto_4

    .line 400
    :cond_f
    move v1, v10

    .line 401
    goto :goto_4

    .line 402
    :cond_10
    move v1, v9

    .line 403
    :goto_4
    if-nez v1, :cond_11

    .line 404
    .line 405
    move v2, v8

    .line 406
    goto :goto_5

    .line 407
    :cond_11
    move v2, v9

    .line 408
    :goto_5
    iput-boolean v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 409
    .line 410
    if-nez v2, :cond_15

    .line 411
    .line 412
    if-ne v1, v8, :cond_12

    .line 413
    .line 414
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 415
    .line 416
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromTop()V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_d

    .line 420
    .line 421
    :cond_12
    if-ne v1, v11, :cond_13

    .line 422
    .line 423
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromBottom()V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_d

    .line 429
    .line 430
    :cond_13
    if-ne v1, v10, :cond_14

    .line 431
    .line 432
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_d

    .line 438
    .line 439
    :cond_14
    if-ne v1, v13, :cond_2b

    .line 440
    .line 441
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 442
    .line 443
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromLeft()V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_d

    .line 447
    .line 448
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 449
    .line 450
    .line 451
    move-result v14

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 453
    .line 454
    .line 455
    move-result v15

    .line 456
    move v6, v9

    .line 457
    :goto_6
    if-ge v6, v15, :cond_16

    .line 458
    .line 459
    invoke-virtual {v7, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPalm()F

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    cmpl-float v1, v1, v12

    .line 472
    .line 473
    if-lez v1, :cond_17

    .line 474
    .line 475
    :cond_16
    move v1, v9

    .line 476
    goto :goto_8

    .line 477
    :cond_17
    const/4 v1, -0x1

    .line 478
    if-eq v5, v1, :cond_1a

    .line 479
    .line 480
    move v3, v9

    .line 481
    :goto_7
    if-ge v3, v14, :cond_19

    .line 482
    .line 483
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    .line 484
    .line 485
    .line 486
    move-result-wide v16

    .line 487
    invoke-virtual {v7, v6, v3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    .line 488
    .line 489
    .line 490
    move-result v18

    .line 491
    invoke-virtual {v7, v6, v3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    .line 492
    .line 493
    .line 494
    move-result v19

    .line 495
    move-object/from16 v1, p0

    .line 496
    .line 497
    move v2, v5

    .line 498
    move/from16 v20, v3

    .line 499
    .line 500
    move-wide/from16 v3, v16

    .line 501
    .line 502
    move/from16 v16, v5

    .line 503
    .line 504
    move/from16 v5, v18

    .line 505
    .line 506
    move v12, v6

    .line 507
    move/from16 v6, v19

    .line 508
    .line 509
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    if-eqz v1, :cond_18

    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_18
    add-int/lit8 v3, v20, 0x1

    .line 517
    .line 518
    move v6, v12

    .line 519
    move/from16 v5, v16

    .line 520
    .line 521
    const/4 v12, 0x0

    .line 522
    goto :goto_7

    .line 523
    :cond_19
    move/from16 v16, v5

    .line 524
    .line 525
    move v12, v6

    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 527
    .line 528
    .line 529
    move-result-wide v3

    .line 530
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getX(I)F

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getY(I)F

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    move-object/from16 v1, p0

    .line 539
    .line 540
    move/from16 v2, v16

    .line 541
    .line 542
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-eqz v1, :cond_1b

    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_1a
    move v12, v6

    .line 550
    :cond_1b
    add-int/lit8 v6, v12, 0x1

    .line 551
    .line 552
    const/4 v12, 0x0

    .line 553
    goto :goto_6

    .line 554
    :goto_8
    if-nez v1, :cond_1c

    .line 555
    .line 556
    move v9, v8

    .line 557
    :cond_1c
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 558
    .line 559
    if-ne v1, v8, :cond_1d

    .line 560
    .line 561
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 562
    .line 563
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromTop()V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_d

    .line 567
    .line 568
    :cond_1d
    if-ne v1, v11, :cond_1e

    .line 569
    .line 570
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 571
    .line 572
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromBottom()V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_d

    .line 576
    .line 577
    :cond_1e
    if-ne v1, v10, :cond_1f

    .line 578
    .line 579
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 580
    .line 581
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    .line 582
    .line 583
    .line 584
    goto/16 :goto_d

    .line 585
    .line 586
    :cond_1f
    if-ne v1, v13, :cond_20

    .line 587
    .line 588
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 589
    .line 590
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromLeft()V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_d

    .line 594
    .line 595
    :cond_20
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 596
    .line 597
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    if-eqz v1, :cond_2b

    .line 602
    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eq v1, v10, :cond_2b

    .line 608
    .line 609
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSystemGestureForDex(Landroid/view/MotionEvent;)V

    .line 610
    .line 611
    .line 612
    goto/16 :goto_d

    .line 613
    .line 614
    :cond_21
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 615
    .line 616
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 617
    .line 618
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 619
    .line 620
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 621
    .line 622
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 623
    .line 624
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 625
    .line 626
    if-eqz v0, :cond_22

    .line 627
    .line 628
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 629
    .line 630
    :cond_22
    if-eqz v2, :cond_2b

    .line 631
    .line 632
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 633
    .line 634
    .line 635
    move-result-wide v0

    .line 636
    iget-object v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 637
    .line 638
    monitor-enter v3

    .line 639
    :try_start_0
    iget-object v2, v2, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 640
    .line 641
    if-eqz v2, :cond_23

    .line 642
    .line 643
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    .line 644
    .line 645
    .line 646
    goto :goto_9

    .line 647
    :catchall_0
    move-exception v0

    .line 648
    goto :goto_a

    .line 649
    :cond_23
    :goto_9
    monitor-exit v3

    .line 650
    goto :goto_d

    .line 651
    :goto_a
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    throw v0

    .line 653
    :cond_24
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 654
    .line 655
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 656
    .line 657
    iput v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 658
    .line 659
    invoke-virtual {v0, v9, v7}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(ILandroid/view/MotionEvent;)V

    .line 660
    .line 661
    .line 662
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 663
    .line 664
    if-eqz v1, :cond_25

    .line 665
    .line 666
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 667
    .line 668
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 669
    .line 670
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 671
    .line 672
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 673
    .line 674
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 675
    .line 676
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 677
    .line 678
    .line 679
    :cond_25
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 680
    .line 681
    if-eqz v1, :cond_26

    .line 682
    .line 683
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 684
    .line 685
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 686
    .line 687
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 688
    .line 689
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 690
    .line 691
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 692
    .line 693
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 694
    .line 695
    .line 696
    :cond_26
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 697
    .line 698
    if-eqz v1, :cond_27

    .line 699
    .line 700
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 701
    .line 702
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 703
    .line 704
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 705
    .line 706
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 707
    .line 708
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 709
    .line 710
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    .line 712
    .line 713
    :cond_27
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 714
    .line 715
    if-eqz v1, :cond_28

    .line 716
    .line 717
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 718
    .line 719
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 720
    .line 721
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 722
    .line 723
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 724
    .line 725
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 726
    .line 727
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 728
    .line 729
    .line 730
    :cond_28
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 731
    .line 732
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 733
    .line 734
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 735
    .line 736
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 737
    .line 738
    if-eqz v0, :cond_29

    .line 739
    .line 740
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 741
    .line 742
    :cond_29
    if-eqz v2, :cond_2b

    .line 743
    .line 744
    iget-object v1, v2, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 745
    .line 746
    monitor-enter v1

    .line 747
    :try_start_1
    iget-object v0, v2, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 748
    .line 749
    if-eqz v0, :cond_2a

    .line 750
    .line 751
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    .line 752
    .line 753
    .line 754
    goto :goto_b

    .line 755
    :catchall_1
    move-exception v0

    .line 756
    goto :goto_c

    .line 757
    :cond_2a
    :goto_b
    monitor-exit v1

    .line 758
    goto :goto_d

    .line 759
    :goto_c
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 760
    throw v0

    .line 761
    :cond_2b
    :goto_d
    return-void
.end method
