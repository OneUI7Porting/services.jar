.class public final Lcom/android/server/wm/FreeformTaskPinningController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mPinnedTask:Lcom/android/server/wm/Task;

.field public final mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
