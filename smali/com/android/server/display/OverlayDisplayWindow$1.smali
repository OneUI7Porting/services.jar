.class public final Lcom/android/server/display/OverlayDisplayWindow$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne p1, v0, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 29
    .line 30
    iget p0, p0, Landroid/view/DisplayInfo;->state:I

    .line 31
    .line 32
    iget-object v0, p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iput p0, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mState:I

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    iput-object p0, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 45
    .line 46
    iget-object p0, p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 47
    .line 48
    const/4 p1, 0x2

    .line 49
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit v0

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_2
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
