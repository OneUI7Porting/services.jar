.class public abstract Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;
.super Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public isSiopLevelValid:Z

.field public isTestAppSIOPEnable:Z

.field public mAudioManager:Landroid/media/AudioManager;

.field public final mAudioRecordingCallback:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;

.field public final mDexModel:I

.field public final mDexMonitorIntentReceiver:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;

.field public mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

.field public final mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

.field public mIsAudioRecodingMode:Z

.field public mIsCallMode:Z

.field public mIsScreenOffMode:Z

.field public mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

.field public final mPhoneStateListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;

.field public mSiopLevel:I

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsScreenOffMode:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsAudioRecodingMode:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    .line 15
    .line 16
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSiopLevel:I

    .line 17
    .line 18
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexModel:I

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isTestAppSIOPEnable:Z

    .line 23
    .line 24
    new-instance p1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

    .line 30
    .line 31
    new-instance p1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mPhoneStateListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;

    .line 37
    .line 38
    new-instance v1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioRecordingCallback:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;

    .line 44
    .line 45
    new-instance v2, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexMonitorIntentReceiver:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;

    .line 51
    .line 52
    const-string v2, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    .line 53
    .line 54
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 55
    .line 56
    const-string v4, "android.intent.action.USER_PRESENT"

    .line 57
    .line 58
    const-string v5, "com.samsung.accessory.action.DEX_FAN_HOLDING"

    .line 59
    .line 60
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    .line 61
    .line 62
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "com.samsung.accessory.action.DEX_FAN_ON_TEMP"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v3, "com.samsung.accessory.action.DEX_FAN_OFF_TEMP"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v3, "com.samsung.intent.action.CHECK_SIOP_LEVEL_TEMP"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v3, "Register with Context.RECEIVER_EXPORTED"

    .line 82
    .line 83
    const-string v4, "FanControlModel"

    .line 84
    .line 85
    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexMonitorIntentReceiver:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;

    .line 91
    .line 92
    const/4 v6, 0x2

    .line 93
    invoke-virtual {v3, v5, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    iput p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexModel:I

    .line 97
    .line 98
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    const-string v2, "audio"

    .line 101
    .line 102
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Landroid/media/AudioManager;

    .line 107
    .line 108
    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    .line 110
    if-eqz p2, :cond_0

    .line 111
    .line 112
    invoke-virtual {p2, v1, v0}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const-string/jumbo p2, "registerAudioRecodingListener - mAudioManager is null"

    .line 117
    .line 118
    .line 119
    invoke-static {v4, p2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    if-eqz p3, :cond_1

    .line 123
    .line 124
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    const-string/jumbo p3, "phone"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 134
    .line 135
    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 136
    .line 137
    if-eqz p2, :cond_1

    .line 138
    .line 139
    const/16 p0, 0x20

    .line 140
    .line 141
    invoke-virtual {p2, p1, p0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 142
    .line 143
    .line 144
    :cond_1
    return-void
.end method


# virtual methods
.method public final creatFanControl()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isSiopLevelValid:Z

    .line 3
    .line 4
    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 5
    .line 6
    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSiopLevel:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isExistSystemRequest()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    iput-object v4, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 17
    .line 18
    iput-object v4, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 19
    .line 20
    iput-boolean v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    .line 21
    .line 22
    iput-object v4, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 23
    .line 24
    iput-object v4, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 25
    .line 26
    iput-object v4, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 27
    .line 28
    iput-object v4, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 29
    .line 30
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexModel:I

    .line 31
    .line 32
    iput v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mDexModel:I

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

    .line 35
    .line 36
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->fromValue(I)Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->onChangedDexMode()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setSystemRequest(Z)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 58
    .line 59
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->unregisterReceiver()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->destroy()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 17
    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    const-string v2, "DexFanControlManager"

    .line 21
    .line 22
    const-string v3, "destroy"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-lez v2, :cond_3

    .line 32
    .line 33
    iget-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    new-instance v2, Ljava/util/Timer;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    iput-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 44
    .line 45
    :cond_1
    iget-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 55
    .line 56
    .line 57
    :cond_2
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 58
    .line 59
    iget-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 60
    .line 61
    check-cast v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 64
    .line 65
    .line 66
    :cond_3
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 67
    .line 68
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 69
    .line 70
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 71
    .line 72
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

    .line 73
    .line 74
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 75
    .line 76
    iget-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NonDexMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 81
    .line 82
    check-cast v2, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 89
    .line 90
    invoke-interface {v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->destroy()V

    .line 91
    .line 92
    .line 93
    iget-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 94
    .line 95
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 96
    .line 97
    check-cast v2, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 104
    .line 105
    invoke-interface {v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->destroy()V

    .line 106
    .line 107
    .line 108
    iget-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 109
    .line 110
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 111
    .line 112
    check-cast v2, Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 119
    .line 120
    invoke-interface {v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->destroy()V

    .line 121
    .line 122
    .line 123
    iget-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 124
    .line 125
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 126
    .line 127
    check-cast v2, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 134
    .line 135
    invoke-interface {v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->destroy()V

    .line 136
    .line 137
    .line 138
    iget-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 139
    .line 140
    check-cast v2, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 143
    .line 144
    .line 145
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 146
    .line 147
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    .line 148
    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioRecordingCallback:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    .line 157
    .line 158
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 159
    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mPhoneStateListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 166
    .line 167
    .line 168
    :cond_6
    return-void
.end method

.method public final isExistSystemRequest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsScreenOffMode:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsAudioRecodingMode:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public abstract onFanControlResult(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V
.end method

.method public abstract unregisterReceiver()V
.end method
