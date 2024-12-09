.class public final Lcom/android/server/desktopmode/BootInitBlocker;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBlocker:Lcom/android/server/desktopmode/BootInitBlocker$$ExternalSyntheticLambda0;

.field public final mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 18
    .line 19
    new-instance p1, Lcom/android/server/desktopmode/BootInitBlocker$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mBlocker:Lcom/android/server/desktopmode/BootInitBlocker$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    return-void
.end method
