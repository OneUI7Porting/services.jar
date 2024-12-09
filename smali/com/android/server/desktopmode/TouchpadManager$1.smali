.class public final Lcom/android/server/desktopmode/TouchpadManager$1;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/desktopmode/TouchpadManager;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/desktopmode/TouchpadManager$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/TouchpadManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/TouchpadManager$1;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onShow()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 7
    .line 8
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StateManager;->setTouchpadEnabled(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
