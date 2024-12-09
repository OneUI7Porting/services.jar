.class public final Lcom/android/server/accessibility/autoaction/CornerActionController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final POPUP_DIRECTION:[I

.field public static final POPUP_GRAVITY:[I

.field public static final TTS_CORNER:[I

.field public static final mGestureActionFlag:Ljava/util/HashMap;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mCornerActionTypeObserver:Lcom/android/server/accessibility/autoaction/CornerActionController$1;

.field public mCornerActions:[Ljava/lang/String;

.field public mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

.field public mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mGestureAction:Ljava/lang/String;

.field public mIsAnimating:Z

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mTipAnchorView:Landroid/view/View;

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public final mUserId:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string/jumbo v3, "double_click"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string/jumbo v4, "zoom_in"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string/jumbo v4, "zoom_out"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const/16 v3, 0x8

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string/jumbo v4, "swipe_left"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const/16 v3, 0x10

    .line 54
    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string/jumbo v4, "swipe_right"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const/16 v3, 0x20

    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string/jumbo v4, "swipe_up"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const/16 v3, 0x40

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string/jumbo v4, "swipe_down"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const/16 v3, 0x80

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string/jumbo v4, "click_and_hold"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const/16 v3, 0x100

    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string/jumbo v4, "drag"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const/16 v3, 0x200

    .line 114
    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const-string/jumbo v4, "drag_and_drop"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    const/16 v0, 0x53

    .line 126
    .line 127
    const/16 v3, 0x55

    .line 128
    .line 129
    const/16 v4, 0x33

    .line 130
    .line 131
    const/16 v5, 0x35

    .line 132
    .line 133
    filled-new-array {v4, v5, v0, v3}, [I

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    .line 138
    .line 139
    const/4 v0, 0x3

    .line 140
    const/4 v3, 0x0

    .line 141
    filled-new-array {v0, v2, v1, v3}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_DIRECTION:[I

    .line 146
    .line 147
    const v0, 0x104010f

    .line 148
    .line 149
    .line 150
    const v1, 0x1040110

    .line 151
    .line 152
    .line 153
    const v2, 0x1040112

    .line 154
    .line 155
    .line 156
    const v3, 0x1040113

    .line 157
    .line 158
    .line 159
    filled-new-array {v2, v3, v0, v1}, [I

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    .line 164
    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionController$1;

    .line 11
    .line 12
    new-instance v2, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionController$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    .line 27
    .line 28
    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    .line 29
    .line 30
    const-string/jumbo v3, "window"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/view/WindowManager;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    .line 40
    .line 41
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 47
    .line 48
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 49
    .line 50
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    .line 52
    const/16 p0, 0x7d6

    .line 53
    .line 54
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 55
    .line 56
    const/16 p0, 0x20

    .line 57
    .line 58
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    .line 60
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 61
    .line 62
    const/high16 v3, 0x20000

    .line 63
    .line 64
    or-int/2addr p0, v3

    .line 65
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 66
    .line 67
    const-string p0, "accessibility_corner_actions"

    .line 68
    .line 69
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v2, p0, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x1

    .line 77
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->onChange(Z)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final clearDuration()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final getCorner(IFF)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "display"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroid/view/DisplayInfo;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 26
    .line 27
    .line 28
    iget p1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 29
    .line 30
    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    .line 31
    .line 32
    iget p1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 33
    .line 34
    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 35
    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    cmpl-float v0, p2, p1

    .line 38
    .line 39
    const/high16 v1, 0x42200000    # 40.0f

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    cmpg-float v2, p3, v1

    .line 44
    .line 45
    if-ltz v2, :cond_2

    .line 46
    .line 47
    :cond_1
    cmpg-float v2, p2, v1

    .line 48
    .line 49
    if-gez v2, :cond_3

    .line 50
    .line 51
    cmpl-float v3, p3, p1

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    return p0

    .line 57
    :cond_3
    iget v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    .line 58
    .line 59
    add-int/lit8 v4, v3, -0x1

    .line 60
    .line 61
    int-to-float v4, v4

    .line 62
    cmpl-float v4, p2, v4

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    if-nez v4, :cond_4

    .line 66
    .line 67
    cmpg-float v4, p3, v1

    .line 68
    .line 69
    if-ltz v4, :cond_5

    .line 70
    .line 71
    :cond_4
    int-to-float v4, v3

    .line 72
    sub-float/2addr v4, p2

    .line 73
    cmpg-float v4, v4, v1

    .line 74
    .line 75
    if-gez v4, :cond_6

    .line 76
    .line 77
    cmpl-float p1, p3, p1

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    :cond_5
    return v5

    .line 82
    :cond_6
    if-gez v2, :cond_7

    .line 83
    .line 84
    iget p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 85
    .line 86
    sub-int/2addr p1, v5

    .line 87
    int-to-float p1, p1

    .line 88
    cmpl-float p1, p3, p1

    .line 89
    .line 90
    if-eqz p1, :cond_8

    .line 91
    .line 92
    :cond_7
    if-nez v0, :cond_9

    .line 93
    .line 94
    iget p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 95
    .line 96
    int-to-float p1, p1

    .line 97
    sub-float/2addr p1, p3

    .line 98
    cmpg-float p1, p1, v1

    .line 99
    .line 100
    if-gez p1, :cond_9

    .line 101
    .line 102
    :cond_8
    const/4 p0, 0x2

    .line 103
    return p0

    .line 104
    :cond_9
    int-to-float p1, v3

    .line 105
    sub-float/2addr p1, p2

    .line 106
    cmpg-float p1, p1, v1

    .line 107
    .line 108
    if-gez p1, :cond_a

    .line 109
    .line 110
    iget p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 111
    .line 112
    sub-int/2addr p1, v5

    .line 113
    int-to-float p1, p1

    .line 114
    cmpl-float p1, p3, p1

    .line 115
    .line 116
    if-eqz p1, :cond_b

    .line 117
    .line 118
    :cond_a
    sub-int/2addr v3, v5

    .line 119
    int-to-float p1, v3

    .line 120
    cmpl-float p1, p2, p1

    .line 121
    .line 122
    if-nez p1, :cond_c

    .line 123
    .line 124
    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 125
    .line 126
    int-to-float p0, p0

    .line 127
    sub-float/2addr p0, p3

    .line 128
    cmpg-float p0, p0, v1

    .line 129
    .line 130
    if-gez p0, :cond_c

    .line 131
    .line 132
    :cond_b
    const/4 p0, 0x3

    .line 133
    return p0

    .line 134
    :cond_c
    const/4 p0, -0x1

    .line 135
    return p0
.end method

.method public final getDisplayContext(I)Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "display"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    return-object p0
.end method

.method public final performCornerAction(IILjava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/16 v4, 0x9

    .line 8
    .line 9
    const/16 v5, 0x8

    .line 10
    .line 11
    const/4 v6, 0x7

    .line 12
    const/4 v7, 0x6

    .line 13
    const/4 v8, 0x5

    .line 14
    const/4 v9, 0x4

    .line 15
    const/4 v10, 0x3

    .line 16
    const/4 v11, 0x2

    .line 17
    const/4 v12, 0x1

    .line 18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v13, 0x0

    .line 22
    iget v14, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    .line 23
    .line 24
    const/4 v15, -0x1

    .line 25
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v16

    .line 29
    sparse-switch v16, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    :goto_0
    move v3, v15

    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_0
    const-string/jumbo v3, "double_click"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v3, 0xa

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_1
    const-string/jumbo v3, "swipe_right"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v3, v4

    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :sswitch_2
    const-string/jumbo v3, "zoom_out"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v3, v5

    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :sswitch_3
    const-string/jumbo v3, "swipe_left"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    move v3, v6

    .line 86
    goto :goto_1

    .line 87
    :sswitch_4
    const-string/jumbo v3, "swipe_down"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    move v3, v7

    .line 98
    goto :goto_1

    .line 99
    :sswitch_5
    const-string/jumbo v3, "drag_and_drop"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_5

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    move v3, v8

    .line 110
    goto :goto_1

    .line 111
    :sswitch_6
    const-string/jumbo v3, "drag"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_6

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    move v3, v9

    .line 122
    goto :goto_1

    .line 123
    :sswitch_7
    const-string/jumbo v3, "swipe_up"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_7

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_7
    move v3, v10

    .line 134
    goto :goto_1

    .line 135
    :sswitch_8
    const-string/jumbo v3, "zoom_in"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_8

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_8
    move v3, v11

    .line 146
    goto :goto_1

    .line 147
    :sswitch_9
    const-string/jumbo v3, "pause_resume_auto_click"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_9

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_9
    move v3, v12

    .line 158
    goto :goto_1

    .line 159
    :sswitch_a
    const-string/jumbo v3, "click_and_hold"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-nez v3, :cond_a

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_a
    move v3, v13

    .line 171
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 172
    .line 173
    .line 174
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    sparse-switch v1, :sswitch_data_1

    .line 181
    .line 182
    .line 183
    :goto_2
    move v3, v15

    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :sswitch_b
    const-string/jumbo v1, "open_close_quick_panel"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_b

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_b
    const/16 v3, 0x13

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :sswitch_c
    const-string/jumbo v1, "ringtone_volume_down"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_c

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_c
    const/16 v3, 0x12

    .line 211
    .line 212
    goto/16 :goto_3

    .line 213
    .line 214
    :sswitch_d
    const-string/jumbo v1, "media_volume_up"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_d

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_d
    const/16 v3, 0x11

    .line 225
    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :sswitch_e
    const-string/jumbo v1, "recents"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_e

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_e
    const/16 v3, 0x10

    .line 239
    .line 240
    goto/16 :goto_3

    .line 241
    .line 242
    :sswitch_f
    const-string/jumbo v1, "send_sos_messages"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_f

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_f
    const/16 v3, 0xf

    .line 253
    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :sswitch_10
    const-string/jumbo v1, "power_off_menu"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_10

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_10
    const/16 v3, 0xe

    .line 267
    .line 268
    goto/16 :goto_3

    .line 269
    .line 270
    :sswitch_11
    const-string/jumbo v1, "media_volume_down"

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_11

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_11
    const/16 v3, 0xd

    .line 281
    .line 282
    goto/16 :goto_3

    .line 283
    .line 284
    :sswitch_12
    const-string/jumbo v1, "increase_brightness"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-nez v1, :cond_12

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_12
    const/16 v3, 0xc

    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :sswitch_13
    const-string/jumbo v1, "none"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_13

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_13
    const/16 v3, 0xb

    .line 309
    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :sswitch_14
    const-string/jumbo v1, "home"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_14

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_14
    const/16 v3, 0xa

    .line 324
    .line 325
    goto/16 :goto_3

    .line 326
    .line 327
    :sswitch_15
    const-string/jumbo v1, "back"

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_15

    .line 335
    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :cond_15
    move v3, v4

    .line 339
    goto/16 :goto_3

    .line 340
    .line 341
    :sswitch_16
    const-string/jumbo v1, "screen_shot"

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-nez v1, :cond_16

    .line 349
    .line 350
    goto/16 :goto_2

    .line 351
    .line 352
    :cond_16
    move v3, v5

    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :sswitch_17
    const-string/jumbo v1, "reduce_brightness"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_17

    .line 363
    .line 364
    goto/16 :goto_2

    .line 365
    .line 366
    :cond_17
    move v3, v6

    .line 367
    goto :goto_3

    .line 368
    :sswitch_18
    const-string/jumbo v1, "screen_off"

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-nez v1, :cond_18

    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :cond_18
    move v3, v7

    .line 380
    goto :goto_3

    .line 381
    :sswitch_19
    const-string/jumbo v1, "sound_vibrate_mute"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-nez v1, :cond_19

    .line 389
    .line 390
    goto/16 :goto_2

    .line 391
    .line 392
    :cond_19
    move v3, v8

    .line 393
    goto :goto_3

    .line 394
    :sswitch_1a
    const-string/jumbo v1, "screen_rotation"

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-nez v1, :cond_1a

    .line 402
    .line 403
    goto/16 :goto_2

    .line 404
    .line 405
    :cond_1a
    move v3, v9

    .line 406
    goto :goto_3

    .line 407
    :sswitch_1b
    const-string/jumbo v1, "ringtone_volume_up"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-nez v1, :cond_1b

    .line 415
    .line 416
    goto/16 :goto_2

    .line 417
    .line 418
    :cond_1b
    move v3, v10

    .line 419
    goto :goto_3

    .line 420
    :sswitch_1c
    const-string/jumbo v1, "talk_to_bixby"

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-nez v1, :cond_1c

    .line 428
    .line 429
    goto/16 :goto_2

    .line 430
    .line 431
    :cond_1c
    move v3, v11

    .line 432
    goto :goto_3

    .line 433
    :sswitch_1d
    const-string v1, "accessibility_button"

    .line 434
    .line 435
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-nez v1, :cond_1d

    .line 440
    .line 441
    goto/16 :goto_2

    .line 442
    .line 443
    :cond_1d
    move v3, v12

    .line 444
    goto :goto_3

    .line 445
    :sswitch_1e
    const-string/jumbo v1, "open_close_notifications"

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_1e

    .line 453
    .line 454
    goto/16 :goto_2

    .line 455
    .line 456
    :cond_1e
    move v3, v13

    .line 457
    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 458
    .line 459
    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 461
    .line 462
    const-string v1, "Wrong Corner Action Type"

    .line 463
    .line 464
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v0

    .line 468
    :pswitch_0
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;

    .line 469
    .line 470
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 471
    .line 472
    .line 473
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;->mContext:Landroid/content/Context;

    .line 474
    .line 475
    goto/16 :goto_4

    .line 476
    .line 477
    :pswitch_1
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    .line 478
    .line 479
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 480
    .line 481
    .line 482
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mContext:Landroid/content/Context;

    .line 483
    .line 484
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mUserId:I

    .line 485
    .line 486
    goto :goto_4

    .line 487
    :pswitch_2
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;

    .line 488
    .line 489
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 490
    .line 491
    .line 492
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;->mContext:Landroid/content/Context;

    .line 493
    .line 494
    goto :goto_4

    .line 495
    :pswitch_3
    const/4 v1, 0x0

    .line 496
    goto :goto_4

    .line 497
    :pswitch_4
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;

    .line 498
    .line 499
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 500
    .line 501
    .line 502
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    .line 503
    .line 504
    goto :goto_4

    .line 505
    :pswitch_5
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;

    .line 506
    .line 507
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 508
    .line 509
    .line 510
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    .line 511
    .line 512
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mType:Ljava/lang/String;

    .line 513
    .line 514
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mUserId:I

    .line 515
    .line 516
    goto :goto_4

    .line 517
    :pswitch_6
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;

    .line 518
    .line 519
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 520
    .line 521
    .line 522
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->mContext:Landroid/content/Context;

    .line 523
    .line 524
    goto :goto_4

    .line 525
    :pswitch_7
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    .line 526
    .line 527
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 528
    .line 529
    .line 530
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 531
    .line 532
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    .line 533
    .line 534
    goto :goto_4

    .line 535
    :pswitch_8
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;

    .line 536
    .line 537
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 538
    .line 539
    .line 540
    const-string/jumbo v3, "audio"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    check-cast v0, Landroid/media/AudioManager;

    .line 548
    .line 549
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 550
    .line 551
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mType:Ljava/lang/String;

    .line 552
    .line 553
    goto :goto_4

    .line 554
    :pswitch_9
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;

    .line 555
    .line 556
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 557
    .line 558
    .line 559
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    .line 560
    .line 561
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mUserId:I

    .line 562
    .line 563
    goto :goto_4

    .line 564
    :pswitch_a
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;

    .line 565
    .line 566
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 567
    .line 568
    .line 569
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 570
    .line 571
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mType:Ljava/lang/String;

    .line 572
    .line 573
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mUserId:I

    .line 574
    .line 575
    goto :goto_4

    .line 576
    :pswitch_b
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;

    .line 577
    .line 578
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 579
    .line 580
    .line 581
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->mContext:Landroid/content/Context;

    .line 582
    .line 583
    :goto_4
    if-eqz v1, :cond_1f

    .line 584
    .line 585
    move/from16 v3, p1

    .line 586
    .line 587
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    .line 588
    .line 589
    .line 590
    :cond_1f
    return v13

    .line 591
    :pswitch_c
    return v10

    .line 592
    :pswitch_d
    move/from16 v3, p1

    .line 593
    .line 594
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 595
    .line 596
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    .line 597
    .line 598
    const-string v5, "accessibility_corner_action_tip_shown"

    .line 599
    .line 600
    invoke-static {v4, v5, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    sget-object v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    .line 605
    .line 606
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    check-cast v6, Ljava/lang/Integer;

    .line 611
    .line 612
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 613
    .line 614
    .line 615
    move-result v6

    .line 616
    and-int v7, v4, v6

    .line 617
    .line 618
    if-nez v7, :cond_22

    .line 619
    .line 620
    new-instance v7, Landroid/view/View;

    .line 621
    .line 622
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    invoke-direct {v7, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 627
    .line 628
    .line 629
    iput-object v7, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    .line 630
    .line 631
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 632
    .line 633
    sget-object v8, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    .line 634
    .line 635
    aget v8, v8, v1

    .line 636
    .line 637
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 638
    .line 639
    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    .line 640
    .line 641
    invoke-interface {v8, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    .line 643
    .line 644
    new-instance v3, Lcom/samsung/android/widget/SemTipPopup;

    .line 645
    .line 646
    iget-object v7, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    .line 647
    .line 648
    invoke-direct {v3, v7}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    .line 649
    .line 650
    .line 651
    iput-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 652
    .line 653
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 654
    .line 655
    invoke-static/range {p3 .. p3}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    const v7, 0x1040111

    .line 668
    .line 669
    .line 670
    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 675
    .line 676
    invoke-virtual {v3, v2}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 677
    .line 678
    .line 679
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 680
    .line 681
    invoke-virtual {v3, v12}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 682
    .line 683
    .line 684
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 685
    .line 686
    rem-int/lit8 v7, v1, 0x2

    .line 687
    .line 688
    if-nez v7, :cond_20

    .line 689
    .line 690
    move v7, v13

    .line 691
    goto :goto_5

    .line 692
    :cond_20
    iget v7, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    .line 693
    .line 694
    :goto_5
    if-ge v1, v11, :cond_21

    .line 695
    .line 696
    move v8, v13

    .line 697
    goto :goto_6

    .line 698
    :cond_21
    iget v8, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 699
    .line 700
    :goto_6
    invoke-virtual {v3, v7, v8}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 701
    .line 702
    .line 703
    new-array v3, v12, [Z

    .line 704
    .line 705
    aput-boolean v13, v3, v13

    .line 706
    .line 707
    new-instance v7, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;

    .line 708
    .line 709
    invoke-direct {v7, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V

    .line 710
    .line 711
    .line 712
    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 713
    .line 714
    new-instance v9, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;

    .line 715
    .line 716
    invoke-direct {v9, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemTipPopup;->setOnDismissListener(Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;)V

    .line 720
    .line 721
    .line 722
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 723
    .line 724
    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v3, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 736
    .line 737
    .line 738
    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    .line 739
    .line 740
    invoke-direct {v2, v0}, Lcom/android/server/accessibility/autoaction/CornerActionController$2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v3, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 744
    .line 745
    .line 746
    new-instance v2, Landroid/os/Handler;

    .line 747
    .line 748
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 749
    .line 750
    .line 751
    move-result-object v3

    .line 752
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 753
    .line 754
    .line 755
    new-instance v3, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;

    .line 756
    .line 757
    invoke-direct {v3, v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    .line 762
    .line 763
    const-wide/16 v8, 0x1388

    .line 764
    .line 765
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 766
    .line 767
    .line 768
    or-int v1, v4, v6

    .line 769
    .line 770
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    .line 771
    .line 772
    invoke-static {v0, v5, v1, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 773
    .line 774
    .line 775
    :cond_22
    return v12

    .line 776
    nop

    .line 777
    :sswitch_data_0
    .sparse-switch
        -0x643f1902 -> :sswitch_a
        -0x5513dbbf -> :sswitch_9
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

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    :sswitch_data_1
    .sparse-switch
        -0x7ec2e294 -> :sswitch_1e
        -0x74e910bd -> :sswitch_1d
        -0x682f8f69 -> :sswitch_1c
        -0x55236e7d -> :sswitch_1b
        -0x5173c60f -> :sswitch_1a
        -0x18e94be7 -> :sswitch_19
        -0x18db78e4 -> :sswitch_18
        -0x1479af36 -> :sswitch_17
        -0x291c913 -> :sswitch_16
        0x2e04e7 -> :sswitch_15
        0x30f4df -> :sswitch_14
        0x33af38 -> :sswitch_13
        0x1443e66e -> :sswitch_12
        0x1af46ecc -> :sswitch_11
        0x2d9a2c29 -> :sswitch_10
        0x3f33e64b -> :sswitch_f
        0x40828578 -> :sswitch_e
        0x4505db45 -> :sswitch_d
        0x65f68d8a -> :sswitch_c
        0x670f86b6 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
