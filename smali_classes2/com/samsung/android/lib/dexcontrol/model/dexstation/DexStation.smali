.class public final Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;
.super Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final mFanLevelMap:Ljava/util/HashMap;


# instance fields
.field public final mEth0Receiver:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;

.field public final mIResponseListener:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$2;

.field public preFanLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mFanLevelMap:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const v1, 0xa020

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;-><init>(Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    const/16 p1, -0x3e7

    .line 9
    .line 10
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->preFanLevel:I

    .line 11
    .line 12
    new-instance p1, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$2;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;-><init>(Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mEth0Receiver:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->destroy()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 33
    .line 34
    :cond_0
    new-instance v2, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 40
    .line 41
    iput-object p1, v2, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->creatFanControl()V

    .line 44
    .line 45
    .line 46
    new-instance p1, Landroid/content/IntentFilter;

    .line 47
    .line 48
    const-string/jumbo v1, "samsung.net.ethernet.ETH_STATE_CHANGED"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->destroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DexStation"

    .line 5
    .line 6
    const-string v1, "destroy"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, -0x3e7

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->preFanLevel:I

    .line 14
    .line 15
    return-void
.end method

.method public final onFanControlResult(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DexStation"

    .line 6
    .line 7
    const-string/jumbo v1, "onFanControlResult"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "getFanControlBytes : "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mFanLevelMap:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Byte;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x1

    .line 51
    new-array v1, v1, [B

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    aput-byte v0, v1, v2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 57
    .line 58
    const/16 v2, 0x1f4

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->send(I[B)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ltz v0, :cond_0

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->preFanLevel:I

    .line 74
    .line 75
    if-eq v0, v1, :cond_0

    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, "1FAN"

    .line 88
    .line 89
    invoke-static {v0, v2, v1}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->preFanLevel:I

    .line 97
    .line 98
    :cond_0
    return-void
.end method

.method public final unregisterReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mUsbDeviceReceiver:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexMonitorIntentReceiver:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "DexStation"

    .line 16
    .line 17
    const-string/jumbo v1, "unregisterReceiver"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mEth0Receiver:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final usbDeviceChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0xa020

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x5210

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string p1, "1USB"

    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
