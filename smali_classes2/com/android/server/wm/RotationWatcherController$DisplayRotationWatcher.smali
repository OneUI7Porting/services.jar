.class public final Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;
.super Lcom/android/server/wm/RotationWatcherController$RotationWatcher;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mDisplayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;->mDisplayId:I

    .line 5
    .line 6
    return-void
.end method