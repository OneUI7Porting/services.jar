.class public final Lcom/android/server/desktopmode/UiManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$2;->this$0:Lcom/android/server/desktopmode/UiManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    .line 1
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$2;->this$0:Lcom/android/server/desktopmode/UiManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
