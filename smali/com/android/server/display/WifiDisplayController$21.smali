.class public final Lcom/android/server/display/WifiDisplayController$21;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$mode:I

.field public final synthetic val$state:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/WifiDisplayController$21;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    iput p2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayController;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/display/WifiDisplayController$21;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput p2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    iput p3, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/display/WifiDisplayController$21;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "status"

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/16 v4, 0x14

    .line 27
    .line 28
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v2, "sendRemoteDisplayStateChangeEvent state : "

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, ", event : "

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    .line 54
    .line 55
    const-string v3, "WifiDisplayController"

    .line 56
    .line 57
    invoke-static {v0, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_0
    const-string v0, "WifiDisplayController"

    .line 69
    .line 70
    const-string/jumbo v1, "sendEventToSemDeviceStatusListener"

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    new-instance v0, Landroid/os/Bundle;

    .line 77
    .line 78
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    .line 82
    .line 83
    const/16 v2, 0x8

    .line 84
    .line 85
    if-ne v1, v2, :cond_0

    .line 86
    .line 87
    const-string/jumbo v1, "status"

    .line 88
    .line 89
    .line 90
    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 98
    .line 99
    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    const/16 v4, 0x14

    .line 103
    .line 104
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string/jumbo v1, "handleWifiDisplayStateBroadcast:: state = "

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    .line 128
    .line 129
    const/4 v2, 0x1

    .line 130
    if-ne v1, v2, :cond_1

    .line 131
    .line 132
    const-string v1, "ON"

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    const-string v1, "OFF"

    .line 136
    .line 137
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", [VolumeControl] isVolumeControlSupported: "

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 146
    .line 147
    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", disconnectByUser: "

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 158
    .line 159
    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v1, "WifiDisplayController"

    .line 169
    .line 170
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    new-instance v0, Landroid/content/Intent;

    .line 174
    .line 175
    const-string/jumbo v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const/high16 v1, 0x4000000

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    const-string/jumbo v1, "state"

    .line 187
    .line 188
    .line 189
    iget v3, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    .line 190
    .line 191
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 195
    .line 196
    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    .line 197
    .line 198
    const-string/jumbo v3, "isSupportDisplayVolumeControl"

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 205
    .line 206
    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    .line 207
    .line 208
    const-string/jumbo v3, "by_user"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 215
    .line 216
    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mIsPortraitDisplay:Z

    .line 217
    .line 218
    const-string/jumbo v3, "isPortraitDisplay"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    .line 223
    .line 224
    const-string/jumbo v1, "mode"

    .line 225
    .line 226
    .line 227
    iget v3, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    .line 228
    .line 229
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 233
    .line 234
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 235
    .line 236
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 237
    .line 238
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 242
    .line 243
    iget-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    .line 244
    .line 245
    const/4 v3, 0x0

    .line 246
    if-eqz v1, :cond_4

    .line 247
    .line 248
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    .line 249
    .line 250
    const/16 v4, 0xf

    .line 251
    .line 252
    const/16 v5, 0x19

    .line 253
    .line 254
    const/4 v6, 0x3

    .line 255
    if-ne v1, v2, :cond_2

    .line 256
    .line 257
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 258
    .line 259
    invoke-virtual {v1, v6, v5}, Landroid/media/AudioManager;->semGetStreamVolume(II)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    iput v1, v0, Lcom/android/server/display/WifiDisplayController;->mPrevMusicStreamVolume:I

    .line 264
    .line 265
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 266
    .line 267
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 268
    .line 269
    invoke-virtual {v0, v6, v4, v3, v5}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_2
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 274
    .line 275
    invoke-virtual {v0, v6, v5}, Landroid/media/AudioManager;->semGetStreamVolume(II)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 280
    .line 281
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 282
    .line 283
    if-ne v0, v4, :cond_3

    .line 284
    .line 285
    iget v0, v1, Lcom/android/server/display/WifiDisplayController;->mPrevMusicStreamVolume:I

    .line 286
    .line 287
    :cond_3
    invoke-virtual {v2, v6, v0, v3, v5}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V

    .line 288
    .line 289
    .line 290
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 291
    .line 292
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    .line 293
    .line 294
    return-void

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
