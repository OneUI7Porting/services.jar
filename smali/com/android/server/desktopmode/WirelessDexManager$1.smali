.class public final Lcom/android/server/desktopmode/WirelessDexManager$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/display/SemWifiDisplayParameterListener;


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
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onParametersChanged(Ljava/util/List;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_9

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayParameter;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 28
    .line 29
    const-string v3, "[DMS]WirelessDexManager"

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string/jumbo v4, "onParametersChanged (Key : "

    .line 34
    .line 35
    .line 36
    const-string v5, ", Value : "

    .line 37
    .line 38
    const-string v6, ")"

    .line 39
    .line 40
    invoke-static {v4, v1, v5, v0, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const-string/jumbo v4, "wfd_sec_dex_support"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const-string/jumbo v5, "yes"

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x1

    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 68
    .line 69
    iput v7, v0, Lcom/android/server/desktopmode/WirelessDexManager;->mReducedLatency:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 73
    .line 74
    iput v6, v0, Lcom/android/server/desktopmode/WirelessDexManager;->mReducedLatency:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const-string/jumbo v4, "wfd_sec_dex_mouse_support"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 93
    .line 94
    iput v7, v0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 98
    .line 99
    iput v6, v0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    const-string/jumbo v4, "notify"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    const-string/jumbo v4, "weak_network"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 121
    .line 122
    iget-object v1, v0, Lcom/android/server/desktopmode/WirelessDexManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 123
    .line 124
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    .line 136
    iget-object v2, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 137
    .line 138
    const/4 v3, 0x4

    .line 139
    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_0

    .line 144
    .line 145
    iget-object v2, v0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    iget v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 148
    .line 149
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v2, v0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    const v3, 0x104047b

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iget-object v0, v0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    const v3, 0x1040ce6

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v1, v0, v7}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_6
    const-string/jumbo v4, "frequency"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_7

    .line 192
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 194
    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    iput v2, v1, Lcom/android/server/desktopmode/WirelessDexManager;->mFrequencyValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :catch_0
    move-exception v1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v4, "Wrong number format="

    .line 207
    .line 208
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v3, v0, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_7
    const-string/jumbo v4, "tizenVer"

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_0

    .line 231
    .line 232
    if-eqz v2, :cond_8

    .line 233
    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v2, "TV Tizen version : "

    .line 237
    .line 238
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v3, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_8
    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 252
    .line 253
    iput-object v0, v1, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_9
    return-void
.end method
