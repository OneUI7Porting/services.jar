.class public final Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAnchorView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public final mPopup:Landroid/widget/PopupMenu;

.field public final mReceiver:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x33

    .line 5
    .line 6
    const/16 v1, 0x35

    .line 7
    .line 8
    const/16 v2, 0x53

    .line 9
    .line 10
    const/16 v3, 0x55

    .line 11
    .line 12
    filled-new-array {v0, v1, v2, v3}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mReceiver:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

    .line 22
    .line 23
    const-string v2, "CornerActionSelectPopup corner : "

    .line 24
    .line 25
    const-string/jumbo v3, "usibi"

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string/jumbo v2, "window"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/view/WindowManager;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 43
    .line 44
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 45
    .line 46
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    .line 54
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    .line 56
    const/16 v2, 0x7d9

    .line 57
    .line 58
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 59
    .line 60
    aget p2, v0, p2

    .line 61
    .line 62
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    .line 64
    const/16 p2, 0x120

    .line 65
    .line 66
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 67
    .line 68
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 69
    .line 70
    const/high16 v0, 0x20000

    .line 71
    .line 72
    or-int/2addr p2, v0

    .line 73
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 74
    .line 75
    const/4 p2, 0x3

    .line 76
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 77
    .line 78
    new-instance p1, Landroid/view/View;

    .line 79
    .line 80
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 90
    .line 91
    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 105
    .line 106
    and-int/lit8 p1, p1, 0x30

    .line 107
    .line 108
    const/16 p2, 0x20

    .line 109
    .line 110
    if-ne p1, p2, :cond_0

    .line 111
    .line 112
    const p1, 0x1030128

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const p1, 0x103012b

    .line 117
    .line 118
    .line 119
    :goto_0
    new-instance p2, Landroid/widget/PopupMenu;

    .line 120
    .line 121
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-direct {v0, v2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    .line 129
    .line 130
    invoke-direct {p2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 134
    .line 135
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 136
    .line 137
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    return-void
.end method
