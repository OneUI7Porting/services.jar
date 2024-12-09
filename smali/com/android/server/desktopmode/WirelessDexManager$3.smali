.class public final Lcom/android/server/desktopmode/WirelessDexManager$3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-object v3, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 10
    .line 11
    iget-wide v3, v3, Lcom/android/server/desktopmode/WirelessDexManager;->mMotionEventStartTime:J

    .line 12
    .line 13
    sub-long/2addr v1, v3

    .line 14
    const-wide/16 v3, 0x3e8

    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    if-lez v1, :cond_3

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x7

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_3

    .line 30
    .line 31
    :cond_0
    const/16 v0, 0x2002

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const/16 v0, 0x4002

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iput-wide v0, p1, Lcom/android/server/desktopmode/WirelessDexManager;->mMotionEventStartTime:J

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 56
    .line 57
    iget-boolean v0, p1, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p1, Lcom/android/server/desktopmode/WirelessDexManager;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/desktopmode/WirelessDexManager;->mRunnableEnableLowLatencyMode:Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 69
    .line 70
    iget-object v0, p1, Lcom/android/server/desktopmode/WirelessDexManager;->mHandler:Landroid/os/Handler;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/server/desktopmode/WirelessDexManager;->mRunnableDisableLowLatencyMode:Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    const-wide/16 v0, 0x1388

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mRunnableDisableLowLatencyMode:Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method
