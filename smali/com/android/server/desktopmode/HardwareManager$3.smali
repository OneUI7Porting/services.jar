.class public final Lcom/android/server/desktopmode/HardwareManager$3;
.super Landroid/os/UEventObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/HardwareManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/HardwareManager$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "ACTION"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "DEVTYPE"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "PRODUCT"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v2, "4b4/f645"

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    sget-object v2, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 37
    .line 38
    const-string v2, "[DMS]HardwareManager"

    .line 39
    .line 40
    const-string/jumbo v3, "onUEvent(device) :: action = "

    .line 41
    .line 42
    .line 43
    const-string v4, ", devType = "

    .line 44
    .line 45
    const-string v5, ", product = "

    .line 46
    .line 47
    invoke-static {v3, v0, v4, v1, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v2, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter p1

    .line 66
    :try_start_0
    const-string v1, "add"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 75
    .line 76
    const-string v0, "[DMS]HardwareManager"

    .line 77
    .line 78
    const-string v1, "Attached US bootmode for dex pad"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 84
    .line 85
    const/16 v1, 0x72

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockStateLocked(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 91
    .line 92
    const-string v1, "04b4:f645"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIdsLocked(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const-string/jumbo v1, "remove"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 115
    .line 116
    const-string v0, "[DMS]HardwareManager"

    .line 117
    .line 118
    const-string v1, "Detached US bootmode for dex pad"

    .line 119
    .line 120
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockStateLocked(I)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 130
    .line 131
    const-string v1, "04b4:f645"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIdsLocked(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 139
    .line 140
    .line 141
    :cond_2
    :goto_0
    monitor-exit p1

    .line 142
    goto :goto_2

    .line 143
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    throw p0

    .line 145
    :cond_3
    :goto_2
    return-void

    .line 146
    :pswitch_0
    const-string v0, "Could not parse switch state from event "

    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 149
    .line 150
    iget-object v1, v1, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 151
    .line 152
    monitor-enter v1

    .line 153
    :try_start_1
    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 154
    .line 155
    const-string v3, "SWITCH_STATE"

    .line 156
    .line 157
    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockStateLocked(I)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 169
    .line 170
    const-string v3, "USBPD_IDS"

    .line 171
    .line 172
    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIdsLocked(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :catchall_1
    move-exception p0

    .line 186
    goto :goto_4

    .line 187
    :catch_0
    :try_start_2
    sget-object p0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 188
    .line 189
    const-string p0, "[DMS]HardwareManager"

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_3
    monitor-exit v1

    .line 207
    return-void

    .line 208
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    throw p0

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
