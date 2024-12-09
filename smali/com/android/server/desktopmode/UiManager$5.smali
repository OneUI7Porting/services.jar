.class public final Lcom/android/server/desktopmode/UiManager$5;
.super Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$callback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/desktopmode/UiManager$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$5;->val$callback:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onAnimationComplete$com$android$server$desktopmode$UiManager$4()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationComplete$com$android$server$desktopmode$UiManager$6()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onClickButtonNegative$com$android$server$desktopmode$UiManager$4()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onClickButtonNegative$com$android$server$desktopmode$UiManager$5()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onClickButtonPositive$com$android$server$desktopmode$UiManager$4()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onClickButtonPositive$com$android$server$desktopmode$UiManager$5()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onDismiss$com$android$server$desktopmode$UiManager$5()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onShow$com$android$server$desktopmode$UiManager$4()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onShow$com$android$server$desktopmode$UiManager$5()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onAnimationComplete()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/UiManager$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$5;->val$callback:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onAnimationComplete()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onClickButtonNegative()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/UiManager$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$5;->val$callback:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :cond_0
    :pswitch_1
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onClickButtonPositive()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/UiManager$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$5;->val$callback:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onClickButtonPositive()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :pswitch_1
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDismiss()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/UiManager$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$5;->val$callback:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/android/server/desktopmode/UiManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$5;->val$callback:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onDismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :pswitch_1
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onShow()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/UiManager$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$5;->val$callback:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onShow()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :pswitch_1
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
