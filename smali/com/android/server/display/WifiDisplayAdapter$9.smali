.class public final Lcom/android/server/display/WifiDisplayAdapter$9;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$callback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

.field public final synthetic val$wifidisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$wifidisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$callback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$wifidisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$callback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    .line 10
    .line 11
    iput-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 14
    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v2, "requestConnect:: "

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v7, "WifiDisplayController"

    .line 35
    .line 36
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    const/4 v8, 0x1

    .line 46
    if-ne p0, v8, :cond_0

    .line 47
    .line 48
    iget-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getP2pMacAddress()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Lcom/android/server/display/WifiDisplayController;->requestConnect(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_0
    iget-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    const/4 v1, 0x2

    .line 66
    const/4 v2, 0x3

    .line 67
    if-eq p0, v1, :cond_1

    .line 68
    .line 69
    iget-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-ne p0, v2, :cond_5

    .line 76
    .line 77
    :cond_1
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 78
    .line 79
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ne v1, v2, :cond_2

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getIpAddress()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getP2pMacAddress()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :goto_0
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->getDeviceName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 112
    .line 113
    iput-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 114
    .line 115
    iput-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayConfig;->getIpAddress()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, ":"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 137
    .line 138
    const-string v3, "DIRECT-"

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 147
    .line 148
    const-string v2, "Broadcom"

    .line 149
    .line 150
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_3

    .line 155
    .line 156
    const/16 p0, 0x216a

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    const/16 p0, 0x1c44

    .line 160
    .line 161
    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    iput-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 169
    .line 170
    iget-boolean p0, v0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 171
    .line 172
    if-eqz p0, :cond_4

    .line 173
    .line 174
    const/4 p0, 0x0

    .line 175
    iput-boolean p0, v0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 178
    .line 179
    .line 180
    :cond_4
    iget-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 181
    .line 182
    invoke-virtual {v0, p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const/4 p0, 0x6

    .line 187
    invoke-virtual {v2, p0}, Landroid/hardware/display/WifiDisplay;->setState(I)V

    .line 188
    .line 189
    .line 190
    iget-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getFlags()I

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    invoke-virtual {v2, p0}, Landroid/hardware/display/WifiDisplay;->setFlags(I)V

    .line 197
    .line 198
    .line 199
    iget-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    invoke-virtual {v2, p0}, Landroid/hardware/display/WifiDisplay;->setMode(I)V

    .line 206
    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    const/4 v6, 0x0

    .line 210
    const/4 v3, 0x0

    .line 211
    const/4 v4, 0x0

    .line 212
    move-object v1, v0

    .line 213
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v8}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(I)V

    .line 217
    .line 218
    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v1, "Listening for RTSP connection from Wifi display via AP : "

    .line 222
    .line 223
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 227
    .line 228
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {p0, v1, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v8, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v9, v0, Lcom/android/server/display/WifiDisplayController;->remoteDisplayListener:Lcom/android/server/display/WifiDisplayController$36;

    .line 236
    .line 237
    iget-object v10, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 238
    .line 239
    iget-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->getEngineParameters()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController;->mNativeListener:Lcom/android/server/display/WifiDisplayController$35;

    .line 250
    .line 251
    invoke-static/range {v8 .. v13}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/media/RemoteDisplay$NativeListener;)Landroid/media/RemoteDisplay;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    iput-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 256
    .line 257
    iget-object p0, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 258
    .line 259
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Lcom/android/server/display/WifiDisplayController$6;

    .line 260
    .line 261
    const-wide/16 v1, 0x7530

    .line 262
    .line 263
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    .line 265
    .line 266
    :cond_5
    :goto_2
    return-void
.end method
