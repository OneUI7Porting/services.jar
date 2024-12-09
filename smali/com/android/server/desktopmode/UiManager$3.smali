.class public final Lcom/android/server/desktopmode/UiManager$3;
.super Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/UiManager;

.field public final synthetic val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationComplete()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClickButtonNegative()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, v0, v2}, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onClickButtonPositive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v0, v2}, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onDismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    invoke-direct {v2, v0, v3}, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-direct {v1, v0, v2}, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
