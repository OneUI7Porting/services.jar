.class public final Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;
.super Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public DexUNNumber:Ljava/lang/String;

.field public isAlreadySentDSVersionInfo:Z

.field public mCharger_Power_Value:I

.field public mCharger_Type_Value:I

.field public mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

.field public mCurrentFanLevel:I

.field public mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

.field public mFanLevel4Gsim:I

.field public mFanRetryCnt:I

.field public mFastChargingRetryCnt:I

.field public mFastChargingStatus:Z

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public final mIResponseListener:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;

.field public mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

.field public mIsFastChargingEnabled:Z

.field public reTryPowerChargerInfoRequestCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DockManager$3;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0xa029

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;-><init>(Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->isAlreadySentDSVersionInfo:Z

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    .line 18
    .line 19
    const/16 v2, -0x3e7

    .line 20
    .line 21
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCurrentFanLevel:I

    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    .line 29
    .line 30
    new-instance v2, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;-><init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V

    .line 33
    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingStatus:Z

    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    .line 38
    .line 39
    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 40
    .line 41
    new-instance p2, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput v0, p2, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    .line 47
    .line 48
    iput v0, p2, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    .line 49
    .line 50
    iput v0, p2, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    .line 51
    .line 52
    iput v0, p2, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I

    .line 53
    .line 54
    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 55
    .line 56
    new-instance p2, Landroid/os/HandlerThread;

    .line 57
    .line 58
    const-string v0, "DexPad"

    .line 59
    .line 60
    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 69
    .line 70
    if-eqz p2, :cond_0

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 76
    .line 77
    :cond_0
    new-instance p2, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-direct {p2, p0, v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;-><init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;Landroid/os/Looper;)V

    .line 86
    .line 87
    .line 88
    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v3, "destroyMessageSender : "

    .line 93
    .line 94
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 98
    .line 99
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {v0, p2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 110
    .line 111
    if-eqz p2, :cond_1

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->destroy()V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 117
    .line 118
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string p2, "createMessageSender : "

    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v0, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 138
    .line 139
    if-nez p1, :cond_2

    .line 140
    .line 141
    new-instance p1, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    .line 142
    .line 143
    invoke-direct {p1, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;-><init>(I)V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 147
    .line 148
    const/4 p2, 0x3

    .line 149
    iput p2, p1, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    .line 150
    .line 151
    iput-object v2, p1, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    .line 152
    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->creatFanControl()V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public static access$700(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;[B)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aget-byte v3, p1, v2

    .line 8
    .line 9
    const/16 v4, -0x50

    .line 10
    .line 11
    const/4 v5, -0x5

    .line 12
    const/4 v6, 0x5

    .line 13
    const/16 v7, 0x12c

    .line 14
    .line 15
    const/16 v8, -0x10

    .line 16
    .line 17
    const/4 v9, 0x4

    .line 18
    const/16 v10, 0x10

    .line 19
    .line 20
    const-string v11, "DexPad"

    .line 21
    .line 22
    const/4 v12, 0x3

    .line 23
    if-eq v3, v4, :cond_13

    .line 24
    .line 25
    if-eq v3, v0, :cond_a

    .line 26
    .line 27
    if-eq v3, v12, :cond_0

    .line 28
    .line 29
    const-string p0, "handleResponseResult - Not in Case"

    .line 30
    .line 31
    invoke-static {v11, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_d

    .line 35
    .line 36
    :cond_0
    aget-byte v3, p1, v1

    .line 37
    .line 38
    if-eq v3, v1, :cond_4

    .line 39
    .line 40
    if-eq v3, v10, :cond_1

    .line 41
    .line 42
    const-string p0, "Not in Case"

    .line 43
    .line 44
    invoke-static {v11, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_d

    .line 48
    .line 49
    :cond_1
    aget-byte v0, p1, v0

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    const-string v0, "COMMAND_CURRENT_CHARGING_MODE_REPONSE ACK"

    .line 54
    .line 55
    invoke-static {v11, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    aget-byte p1, p1, v12

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v1, v2

    .line 64
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    .line 65
    .line 66
    goto/16 :goto_d

    .line 67
    .line 68
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v0, "COMMAND_CURRENT_CHARGING_MODE_REPONSE NAK : "

    .line 71
    .line 72
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    aget-byte p1, p1, v12

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v11, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_d

    .line 88
    .line 89
    :cond_4
    aget-byte v3, p1, v0

    .line 90
    .line 91
    if-nez v3, :cond_8

    .line 92
    .line 93
    array-length v3, p1

    .line 94
    if-ge v3, v9, :cond_6

    .line 95
    .line 96
    const-string p1, "COMMAND_CHARGING_CONTROL_RESPONSE ACK"

    .line 97
    .line 98
    invoke-static {v11, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string/jumbo p1, "requestChargingModeUpdate"

    .line 102
    .line 103
    .line 104
    invoke-static {v11, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 108
    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    new-array v0, v0, [B

    .line 112
    .line 113
    fill-array-data v0, :array_0

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x1f4

    .line 117
    .line 118
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->send(I[B)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    const-string/jumbo p1, "mMessageSender null"

    .line 123
    .line 124
    .line 125
    invoke-static {v11, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 p1, -0x7

    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    aget-byte p1, p1, v12

    .line 134
    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_7
    move v1, v2

    .line 139
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    .line 140
    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v0, "COMMAND_CHARGING_CONTROL_RESPONSE ACK - enable = "

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v11, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_2
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    .line 161
    .line 162
    goto/16 :goto_d

    .line 163
    .line 164
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v3, "COMMAND_CHARGING_CONTROL_RESPONSE NAK : "

    .line 167
    .line 168
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    aget-byte v3, p1, v12

    .line 172
    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v11, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    aget-byte p1, p1, v12

    .line 184
    .line 185
    if-ne p1, v8, :cond_2d

    .line 186
    .line 187
    iget p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    .line 188
    .line 189
    add-int/2addr v1, p1

    .line 190
    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    .line 191
    .line 192
    if-ge p1, v12, :cond_9

    .line 193
    .line 194
    invoke-virtual {p0, v12, v7}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_d

    .line 198
    .line 199
    :cond_9
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    .line 200
    .line 201
    const/4 p1, -0x4

    .line 202
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_d

    .line 206
    .line 207
    :cond_a
    aget-byte v3, p1, v1

    .line 208
    .line 209
    if-eq v3, v1, :cond_d

    .line 210
    .line 211
    if-eq v3, v10, :cond_b

    .line 212
    .line 213
    const-string p0, "handleFanControlResponse - Not in Case"

    .line 214
    .line 215
    invoke-static {v11, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_d

    .line 219
    .line 220
    :cond_b
    aget-byte v0, p1, v0

    .line 221
    .line 222
    if-nez v0, :cond_c

    .line 223
    .line 224
    const-string v0, "COMMAND_CURRENT_FAN_STATUS_RESPONSE ACK"

    .line 225
    .line 226
    invoke-static {v11, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    aget-byte p1, p1, v12

    .line 230
    .line 231
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->updateResponsedFanLevel(I)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_d

    .line 235
    .line 236
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v0, "COMMAND_CURRENT_FAN_STATUS_RESPONSE NAK : "

    .line 239
    .line 240
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    aget-byte p1, p1, v12

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-static {v11, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_d

    .line 256
    .line 257
    :cond_d
    aget-byte v0, p1, v0

    .line 258
    .line 259
    if-nez v0, :cond_f

    .line 260
    .line 261
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    .line 262
    .line 263
    array-length v0, p1

    .line 264
    if-ge v0, v9, :cond_e

    .line 265
    .line 266
    const-string p1, "COMMAND_FAN_CONTROL_RESPONSE ACK"

    .line 267
    .line 268
    invoke-static {v11, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_d

    .line 275
    .line 276
    :cond_e
    aget-byte p1, p1, v12

    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v1, "COMMAND_FAN_CONTROL_RESPONSE ACK - level = "

    .line 281
    .line 282
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v11, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->updateResponsedFanLevel(I)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_d

    .line 299
    .line 300
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v2, "COMMAND_FAN_CONTROL_RESPONSE NAK : "

    .line 303
    .line 304
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    aget-byte v2, p1, v12

    .line 308
    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v11, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    aget-byte p1, p1, v12

    .line 320
    .line 321
    const/16 v0, -0xf

    .line 322
    .line 323
    if-eq p1, v0, :cond_10

    .line 324
    .line 325
    if-ne p1, v8, :cond_2d

    .line 326
    .line 327
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v0, "ERROR_SYSTEM_FAULT : "

    .line 330
    .line 331
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-static {v11, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    .line 347
    .line 348
    add-int/lit8 v0, p1, 0x1

    .line 349
    .line 350
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    .line 351
    .line 352
    if-ge p1, v12, :cond_11

    .line 353
    .line 354
    invoke-virtual {p0, v9, v7}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_d

    .line 358
    .line 359
    :cond_11
    if-ne v0, v12, :cond_2d

    .line 360
    .line 361
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 362
    .line 363
    const-string v0, "2ERR"

    .line 364
    .line 365
    invoke-static {p1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    .line 369
    .line 370
    if-eqz p1, :cond_12

    .line 371
    .line 372
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 377
    .line 378
    invoke-virtual {p1, v5}, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->count(I)V

    .line 379
    .line 380
    .line 381
    :goto_3
    const/4 p1, -0x6

    .line 382
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    .line 383
    .line 384
    .line 385
    iget p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    .line 386
    .line 387
    add-int/2addr p1, v1

    .line 388
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    .line 389
    .line 390
    goto/16 :goto_d

    .line 391
    .line 392
    :cond_13
    const-string v3, "handleBigDataResponse - COMMAND_UN_NUMBER_RESPONSE ACK : "

    .line 393
    .line 394
    aget-byte v4, p1, v1

    .line 395
    .line 396
    if-eqz v4, :cond_26

    .line 397
    .line 398
    if-eq v4, v10, :cond_14

    .line 399
    .line 400
    const-string p0, "handleBigDataResponse - Not in Case"

    .line 401
    .line 402
    invoke-static {v11, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_d

    .line 406
    .line 407
    :cond_14
    aget-byte v3, p1, v0

    .line 408
    .line 409
    const/4 v4, 0x0

    .line 410
    const/16 v10, 0xa

    .line 411
    .line 412
    if-nez v3, :cond_21

    .line 413
    .line 414
    const-string v3, "handleBigDataResponse - COMMAND_CHARGER_TYPE_RESPONSE ACK"

    .line 415
    .line 416
    invoke-static {v11, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 420
    .line 421
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 422
    .line 423
    array-length v3, p1

    .line 424
    if-le v3, v9, :cond_1f

    .line 425
    .line 426
    array-length v3, p1

    .line 427
    if-ne v3, v10, :cond_15

    .line 428
    .line 429
    goto/16 :goto_7

    .line 430
    .line 431
    :cond_15
    aget-byte v3, p1, v9

    .line 432
    .line 433
    iput v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 434
    .line 435
    aget-byte v5, p1, v12

    .line 436
    .line 437
    iput v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 438
    .line 439
    const/16 v7, 0xf

    .line 440
    .line 441
    if-gt v3, v10, :cond_16

    .line 442
    .line 443
    const-string v3, "1"

    .line 444
    .line 445
    goto :goto_4

    .line 446
    :cond_16
    if-gt v3, v7, :cond_17

    .line 447
    .line 448
    const-string v3, "2"

    .line 449
    .line 450
    goto :goto_4

    .line 451
    :cond_17
    const/16 v8, 0x18

    .line 452
    .line 453
    if-gt v3, v8, :cond_18

    .line 454
    .line 455
    const-string v3, "3"

    .line 456
    .line 457
    goto :goto_4

    .line 458
    :cond_18
    const/16 v8, 0x64

    .line 459
    .line 460
    if-gt v3, v8, :cond_19

    .line 461
    .line 462
    const-string v3, "4"

    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_19
    move-object v3, v4

    .line 466
    :goto_4
    if-nez v5, :cond_1a

    .line 467
    .line 468
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 469
    .line 470
    goto :goto_8

    .line 471
    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 472
    .line 473
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mTATypeMap:Ljava/util/HashMap;

    .line 478
    .line 479
    iget v8, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 480
    .line 481
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object v8

    .line 485
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    check-cast v5, Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    const-string v5, "2TAT"

    .line 499
    .line 500
    invoke-static {v2, v5, v3}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    .line 504
    .line 505
    if-eqz v2, :cond_1b

    .line 506
    .line 507
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mTATypeMap:Ljava/util/HashMap;

    .line 508
    .line 509
    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 510
    .line 511
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    check-cast v2, Ljava/lang/String;

    .line 520
    .line 521
    :cond_1b
    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 522
    .line 523
    if-eq v2, v1, :cond_1e

    .line 524
    .line 525
    if-eq v2, v6, :cond_1d

    .line 526
    .line 527
    :cond_1c
    move v2, v1

    .line 528
    goto :goto_6

    .line 529
    :cond_1d
    :goto_5
    move v2, v0

    .line 530
    goto :goto_6

    .line 531
    :cond_1e
    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 532
    .line 533
    if-lt v2, v7, :cond_1c

    .line 534
    .line 535
    goto :goto_5

    .line 536
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendFanControlCheckChargerFastCharging()V

    .line 537
    .line 538
    .line 539
    goto :goto_8

    .line 540
    :cond_1f
    :goto_7
    const-string v3, "handleChargerTypeResponse - TA Not Exist"

    .line 541
    .line 542
    invoke-static {v11, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string v5, "handleChargerType -  Power : "

    .line 548
    .line 549
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    iget v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 553
    .line 554
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    const-string v5, "  Type : "

    .line 558
    .line 559
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    iget v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 563
    .line 564
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v5, "  FastCharging Support : "

    .line 568
    .line 569
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    invoke-static {v11, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 583
    .line 584
    if-eqz v3, :cond_20

    .line 585
    .line 586
    iget v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 587
    .line 588
    iget-object v3, v3, Lcom/android/server/desktopmode/DockManager$3;->this$0:Ljava/lang/Object;

    .line 589
    .line 590
    check-cast v3, Lcom/android/server/desktopmode/DockManager;

    .line 591
    .line 592
    iget-object v6, v3, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 593
    .line 594
    const/16 v7, 0xd3

    .line 595
    .line 596
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    .line 598
    .line 599
    iget-object v3, v3, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 600
    .line 601
    invoke-virtual {v3, v7, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 606
    .line 607
    .line 608
    :cond_20
    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    .line 609
    .line 610
    goto :goto_9

    .line 611
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    const-string v3, "handleBigDataResponse - COMMAND_CHARGER_TYPE_RESPONSE NAK : "

    .line 614
    .line 615
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    aget-byte v3, p1, v12

    .line 619
    .line 620
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    invoke-static {v11, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    aget-byte v2, p1, v12

    .line 631
    .line 632
    if-ne v2, v8, :cond_23

    .line 633
    .line 634
    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    .line 635
    .line 636
    add-int/lit8 v3, v2, 0x1

    .line 637
    .line 638
    iput v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    .line 639
    .line 640
    const/16 v3, 0x32

    .line 641
    .line 642
    if-ge v2, v3, :cond_22

    .line 643
    .line 644
    invoke-virtual {p0, v0, v7}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_d

    .line 648
    .line 649
    :cond_22
    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    .line 650
    .line 651
    invoke-virtual {p0, v5}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    .line 652
    .line 653
    .line 654
    :cond_23
    :goto_9
    iget-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->isAlreadySentDSVersionInfo:Z

    .line 655
    .line 656
    if-nez v2, :cond_2d

    .line 657
    .line 658
    array-length v2, p1

    .line 659
    if-eq v2, v10, :cond_24

    .line 660
    .line 661
    array-length v2, p1

    .line 662
    const/16 v3, 0xb

    .line 663
    .line 664
    if-ne v2, v3, :cond_2d

    .line 665
    .line 666
    :cond_24
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 667
    .line 668
    if-eqz v2, :cond_2d

    .line 669
    .line 670
    array-length v2, p1

    .line 671
    sub-int/2addr v2, v12

    .line 672
    array-length v3, p1

    .line 673
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 674
    .line 675
    .line 676
    move-result-object p1

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    .line 678
    .line 679
    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    const-string v0, "0000"

    .line 697
    .line 698
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    if-eqz v0, :cond_25

    .line 703
    .line 704
    goto :goto_a

    .line 705
    :cond_25
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 706
    .line 707
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    const-string/jumbo v0, "update ds verison - "

    .line 714
    .line 715
    .line 716
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    invoke-static {v11, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 730
    .line 731
    iget-object p1, p1, Lcom/android/server/desktopmode/DockManager$3;->this$0:Ljava/lang/Object;

    .line 732
    .line 733
    check-cast p1, Lcom/android/server/desktopmode/DockManager;

    .line 734
    .line 735
    iget-object v0, p1, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 736
    .line 737
    const/16 v2, 0xe7

    .line 738
    .line 739
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 740
    .line 741
    .line 742
    iget-object p1, p1, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 743
    .line 744
    invoke-virtual {p1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 745
    .line 746
    .line 747
    move-result-object p1

    .line 748
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 749
    .line 750
    .line 751
    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->isAlreadySentDSVersionInfo:Z

    .line 752
    .line 753
    const/4 p1, 0x6

    .line 754
    const/16 v0, 0x3a98

    .line 755
    .line 756
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_d

    .line 760
    .line 761
    :cond_26
    aget-byte v0, p1, v0

    .line 762
    .line 763
    if-nez v0, :cond_2c

    .line 764
    .line 765
    array-length v0, p1

    .line 766
    invoke-static {p1, v12, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 767
    .line 768
    .line 769
    move-result-object p1

    .line 770
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 771
    .line 772
    const-string v4, "UTF-8"

    .line 773
    .line 774
    invoke-direct {v0, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 775
    .line 776
    .line 777
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    .line 778
    .line 779
    new-instance p1, Ljava/lang/StringBuilder;

    .line 780
    .line 781
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    .line 785
    .line 786
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object p1

    .line 793
    invoke-static {v11, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    iget p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 797
    .line 798
    if-lez p1, :cond_27

    .line 799
    .line 800
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mTATypeMap:Ljava/util/HashMap;

    .line 801
    .line 802
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 803
    .line 804
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object p1

    .line 812
    check-cast p1, Ljava/lang/String;

    .line 813
    .line 814
    goto :goto_b

    .line 815
    :catch_0
    move-exception p0

    .line 816
    goto :goto_c

    .line 817
    :cond_27
    :goto_b
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 818
    .line 819
    if-eqz p1, :cond_2d

    .line 820
    .line 821
    iget p1, p1, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I

    .line 822
    .line 823
    if-lez p1, :cond_28

    .line 824
    .line 825
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    :cond_28
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 829
    .line 830
    iget p1, p1, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    .line 831
    .line 832
    if-lez p1, :cond_29

    .line 833
    .line 834
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    :cond_29
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 838
    .line 839
    iget p1, p1, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    .line 840
    .line 841
    if-lez p1, :cond_2a

    .line 842
    .line 843
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    :cond_2a
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 847
    .line 848
    iget p1, p1, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    .line 849
    .line 850
    if-lez p1, :cond_2b

    .line 851
    .line 852
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    :cond_2b
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 856
    .line 857
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    .line 858
    .line 859
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    .line 860
    .line 861
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    .line 862
    .line 863
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .line 865
    goto :goto_d

    .line 866
    :goto_c
    const-string/jumbo p1, "un convert error"

    .line 867
    .line 868
    .line 869
    invoke-static {v11, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 873
    .line 874
    .line 875
    goto :goto_d

    .line 876
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 877
    .line 878
    const-string v0, "handleBigDataResponse - COMMAND_UN_NUMBER_RESPONSE NAK : "

    .line 879
    .line 880
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    aget-byte p1, p1, v12

    .line 884
    .line 885
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object p0

    .line 892
    invoke-static {v11, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    :cond_2d
    :goto_d
    return-void

    .line 896
    nop

    .line 897
    :array_0
    .array-data 1
        0x3t
        0x10t
    .end array-data
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->destroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DexPad"

    .line 5
    .line 6
    const-string v1, "destroy"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 41
    .line 42
    const/16 v0, -0x3e7

    .line 43
    .line 44
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    .line 45
    .line 46
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 49
    .line 50
    return-void
.end method

.method public final notifyFailedError(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyFailedError : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "DexPad"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lcom/android/server/desktopmode/DockManager;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 30
    .line 31
    const/16 v1, 0xdd

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 41
    .line 42
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final onFanControlResult(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCurrentFanLevel:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendFanControlCheckChargerFastCharging()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final requestConnectedPowerChargerInfoUpdate()V
    .locals 2

    .line 1
    const-string v0, "DexPad"

    .line 2
    .line 3
    const-string/jumbo v1, "requestConnectedPowerChargerInfoUpdate"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    new-array p0, p0, [B

    .line 15
    .line 16
    fill-array-data p0, :array_0

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x1f4

    .line 20
    .line 21
    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->send(I[B)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string/jumbo v1, "mMessageSender null"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, -0x7

    .line 32
    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 1
        -0x50t
        0x10t
    .end array-data
.end method

.method public final sendFanControlCheckChargerFastCharging()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "sendFanControlCheckChargerFastCharging - type : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "  power : "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "  fastcharging : "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "DexPad"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    const/4 v0, 0x4

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final sendRequestToHandler(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "sendRequestToHandler "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "DexPad"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 45
    .line 46
    int-to-long v0, p2

    .line 47
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string p0, "Handler is null"

    .line 52
    .line 53
    invoke-static {v1, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
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
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexMonitorIntentReceiver:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    const-string p0, "DexPad"

    .line 16
    .line 17
    const-string/jumbo v0, "unregisterReceiver"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final updateResponsedFanLevel(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateResponsedFanLevel "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "FanControlModel"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v1, "onDexFanLevelUpdated : "

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "DexFanControlManager"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eq v0, p1, :cond_0

    .line 55
    .line 56
    const-string v0, "Received Fan Level("

    .line 57
    .line 58
    const-string v2, ") is not matched with "

    .line 59
    .line 60
    invoke-static {p1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, " level."

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v1, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method public final usbDeviceChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0xa029

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const v0, 0xf650

    .line 7
    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const v0, 0xf645

    .line 12
    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string p1, "2USB"

    .line 19
    .line 20
    invoke-static {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
