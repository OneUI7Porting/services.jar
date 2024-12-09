.class public final Lcom/android/server/desktopmode/WirelessDexManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 6
    .line 7
    const-string v1, "[DMS]WirelessDexManager"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v3, "onReceive(), action="

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/desktopmode/WirelessDexManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 32
    .line 33
    check-cast v2, Lcom/android/server/desktopmode/StateManager;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const-string/jumbo v4, "state"

    .line 46
    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcOrWirelessDexConnected()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const-string p1, "Disconnect Wireless DeX / DFP when HDMI plugged"

    .line 66
    .line 67
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/server/desktopmode/WirelessDexManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 73
    .line 74
    const/16 p2, 0x3e9

    .line 75
    .line 76
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/android/server/desktopmode/StateManager;->notifyDisplayDisconnectionRequest(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/server/desktopmode/WirelessDexManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 84
    .line 85
    const/16 p2, 0x3e8

    .line 86
    .line 87
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/android/server/desktopmode/StateManager;->notifyDisplayDisconnectionRequest(I)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_3
    const-string/jumbo v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    const/4 p1, -0x1

    .line 109
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    const-string/jumbo v0, "by_user"

    .line 114
    .line 115
    .line 116
    const/4 v3, 0x1

    .line 117
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v4, "WifiDisplay Connection state="

    .line 124
    .line 125
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v4, ", disconnectedByUser="

    .line 132
    .line 133
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v4, ", isWirelessDex="

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v2, ", mIsWirelessDexEntered="

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 157
    .line 158
    iget-boolean v2, v2, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    if-nez p1, :cond_5

    .line 171
    .line 172
    if-nez p2, :cond_5

    .line 173
    .line 174
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 175
    .line 176
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_5

    .line 183
    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string p2, "["

    .line 187
    .line 188
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object p2, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string p2, "] has been disconnected by something other than the user request."

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    const p2, 0x1040460

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    .line 218
    .line 219
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    sget-object p2, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-eqz p2, :cond_4

    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_4
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    new-instance v0, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;

    .line 241
    .line 242
    invoke-direct {v0, v3, p1, p0, v3}, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;-><init>(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    .line 247
    .line 248
    :cond_5
    :goto_0
    return-void
.end method
