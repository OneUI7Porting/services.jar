.class public final Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

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
    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
