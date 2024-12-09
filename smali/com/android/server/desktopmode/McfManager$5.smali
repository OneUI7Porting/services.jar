.class public final Lcom/android/server/desktopmode/McfManager$5;
.super Lcom/samsung/android/mcf/ble/BleScanCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/McfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/McfManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleScanCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScanFailed(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/desktopmode/McfManager;->mLastBleScanFailedErrorCode:I

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v0, "onScanFailed errorCode "

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "[DMS]McfManager"

    .line 21
    .line 22
    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/android/server/desktopmode/McfManager;->mLastBleScanResult:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 10
    .line 11
    iget-wide v0, v0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    .line 12
    .line 13
    const-wide/32 v2, 0xea60

    .line 14
    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v1, "onScanResult result "

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "[DMS]McfManager"

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 51
    .line 52
    const/16 v0, 0x191

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method
