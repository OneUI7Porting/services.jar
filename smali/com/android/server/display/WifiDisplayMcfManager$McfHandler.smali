.class public final Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "WifiDisplayMcfManager"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->initialize()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 45
    .line 46
    const/4 v0, 0x6

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_1
    invoke-interface {v1, v3}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->tryStartScanBleScanner()V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-wide/16 v0, 0x3e8

    .line 72
    .line 73
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindMcfAdapter()V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    .line 84
    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string/jumbo v0, "bindBleAdvertiserService, mIsBounded : "

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    new-instance p1, Landroid/content/Intent;

    .line 110
    .line 111
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string/jumbo v0, "com.samsung.android.smartmirroring"

    .line 115
    .line 116
    .line 117
    const-string/jumbo v1, "com.samsung.android.smartmirroring.ble.BleAdvertiserService"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string/jumbo v0, "wfd_sec_mirroring_uuid"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->getInitiatedMirroringUuid()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Lcom/android/server/display/WifiDisplayMcfManager$1;

    .line 137
    .line 138
    invoke-virtual {v0, p1, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 139
    .line 140
    .line 141
    :cond_3
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 142
    .line 143
    const/4 p1, 0x7

    .line 144
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-wide/16 v0, 0x7530

    .line 152
    .line 153
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    .line 155
    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_4

    .line 165
    .line 166
    :pswitch_6
    const-class v0, Lcom/samsung/android/mcf/McfAdapter;

    .line 167
    .line 168
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Lcom/samsung/android/mcf/McfAdapter;

    .line 175
    .line 176
    if-eqz p1, :cond_4

    .line 177
    .line 178
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    :goto_0
    :try_start_0
    const-string p1, ""

    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 187
    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 191
    .line 192
    if-nez v4, :cond_5

    .line 193
    .line 194
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleAdapterCallback:Lcom/android/server/display/WifiDisplayMcfManager$2;

    .line 195
    .line 196
    const/16 v5, 0x26

    .line 197
    .line 198
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/mcf/McfAdapter;->getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_0
    move-exception p0

    .line 206
    goto :goto_3

    .line 207
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 208
    .line 209
    if-eqz v0, :cond_7

    .line 210
    .line 211
    invoke-interface {v0, v3}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->tryStartScanBleScanner()V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_7
    const-string/jumbo p1, "handleMcfAdapterServiceConnected mMcfBleAdapter null"

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_8
    const-string/jumbo p1, "handleMcfAdapterServiceConnected mMcfAdapter null"

    .line 235
    .line 236
    .line 237
    :goto_2
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :goto_3
    const-string/jumbo p1, "handleMcfAdapterServiceConnected Exception:"

    .line 242
    .line 243
    .line 244
    invoke-static {p0, p1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 259
    .line 260
    if-eqz v0, :cond_a

    .line 261
    .line 262
    if-ne v1, p1, :cond_a

    .line 263
    .line 264
    invoke-interface {v0, v3}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_9

    .line 269
    .line 270
    const-string/jumbo p1, "handleMcfServiceStateChanged - BLE NETWORK is enabled"

    .line 271
    .line 272
    .line 273
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->initialize()V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_9
    const-string/jumbo p1, "handleMcfServiceStateChanged - BLE NETWORK is not enabled. Need to unbind"

    .line 281
    .line 282
    .line 283
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    .line 290
    .line 291
    .line 292
    :cond_a
    :goto_4
    return-void

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
