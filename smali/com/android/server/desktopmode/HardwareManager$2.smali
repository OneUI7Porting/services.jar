.class public final Lcom/android/server/desktopmode/HardwareManager$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatusLocked()V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final onInputDeviceChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatusLocked()V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method
