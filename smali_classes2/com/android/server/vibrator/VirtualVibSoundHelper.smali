.class public final Lcom/android/server/vibrator/VirtualVibSoundHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mIsVirtualSoundPlaying:Z

.field public final mSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final mSoundPool:Landroid/media/SoundPool;

.field public mStreamId:I

.field public final mVirtualSoundId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 11
    .line 12
    new-instance p1, Landroid/media/SoundPool$Builder;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0xd

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const/4 v0, 0x4

    .line 38
    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v0, "VIRTUAL_VIB_SOUND"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    iput-boolean p2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    .line 64
    .line 65
    const-string v0, "/system/media/audio/ui/VIB_Vibration_Call.ogg"

    .line 66
    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final playVirtualSoundIfNeeded(Ljava/lang/String;Landroid/os/VibrationAttributes;Z)V
    .locals 9

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string p3, "VIRTUAL_VIB_SOUND"

    .line 5
    .line 6
    invoke-virtual {p2, p3}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    iget-object p3, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 13
    .line 14
    const-string/jumbo v0, "virtual_vibration_sound_allowance"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 31
    .line 32
    const-string/jumbo p3, "vibration_sound_enabled"

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0, p3}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne p3, v1, :cond_b

    .line 42
    .line 43
    const/16 p3, 0x21

    .line 44
    .line 45
    if-eq p2, p3, :cond_2

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_2
    iget-object p2, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter p2

    .line 52
    :try_start_0
    iget-object p3, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 53
    .line 54
    if-nez p3, :cond_3

    .line 55
    .line 56
    monitor-exit p2

    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_3
    invoke-virtual {p3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    if-eq p3, v1, :cond_4

    .line 67
    .line 68
    monitor-exit p2

    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_4
    iget-object p3, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    .line 73
    const/4 v2, 0x2

    .line 74
    invoke-virtual {p3, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    array-length v2, p3

    .line 79
    move v3, v0

    .line 80
    move v4, v3

    .line 81
    :goto_0
    if-ge v3, v2, :cond_8

    .line 82
    .line 83
    aget-object v5, p3, v3

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const/16 v7, 0x8

    .line 90
    .line 91
    if-eq v6, v7, :cond_7

    .line 92
    .line 93
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    const/16 v7, 0x16

    .line 98
    .line 99
    if-ne v6, v7, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    const/4 v6, 0x7

    .line 107
    if-ne v5, v6, :cond_6

    .line 108
    .line 109
    add-int/lit8 v4, v4, 0x1

    .line 110
    .line 111
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_7
    :goto_1
    const-string p1, "VibratorManagerService"

    .line 115
    .line 116
    const-string/jumbo p3, "skip virtual sound: connected A2DP or USB_HEADSET"

    .line 117
    .line 118
    .line 119
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    monitor-exit p2

    .line 123
    goto :goto_3

    .line 124
    :cond_8
    const-string p3, "VibratorManagerService"

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v3, "sco Devices:"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v3, ", only watch connected:"

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-boolean v3, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mOnlyWatchConnected:Z

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    if-eqz v4, :cond_9

    .line 158
    .line 159
    if-ne v4, v1, :cond_a

    .line 160
    .line 161
    iget-boolean p1, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mOnlyWatchConnected:Z

    .line 162
    .line 163
    if-eqz p1, :cond_a

    .line 164
    .line 165
    :cond_9
    move v0, v1

    .line 166
    :cond_a
    monitor-exit p2

    .line 167
    goto :goto_3

    .line 168
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    throw p0

    .line 170
    :cond_b
    const-string p1, "VibratorManagerService"

    .line 171
    .line 172
    const-string/jumbo p2, "shouldSoundForRingerMode false"

    .line 173
    .line 174
    .line 175
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    :goto_3
    if-eqz v0, :cond_f

    .line 179
    .line 180
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 181
    .line 182
    if-eqz p1, :cond_e

    .line 183
    .line 184
    iget p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    .line 185
    .line 186
    if-nez p1, :cond_c

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_c
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 190
    .line 191
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 192
    .line 193
    iget-object p2, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 194
    .line 195
    array-length p2, p2

    .line 196
    sub-int/2addr p2, v1

    .line 197
    const-string p3, "VIB_RECVCALL_MAGNITUDE"

    .line 198
    .line 199
    invoke-virtual {p1, p2, p3}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    int-to-float p1, p1

    .line 204
    int-to-float p2, p2

    .line 205
    div-float v5, p1, p2

    .line 206
    .line 207
    const/4 p1, 0x0

    .line 208
    cmpg-float p1, v5, p1

    .line 209
    .line 210
    if-gtz p1, :cond_d

    .line 211
    .line 212
    return-void

    .line 213
    :cond_d
    const-string p1, "VibratorManagerService"

    .line 214
    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string/jumbo p3, "play virtual sound: "

    .line 218
    .line 219
    .line 220
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string p3, " volume"

    .line 227
    .line 228
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    iput-boolean v1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    .line 239
    .line 240
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 241
    .line 242
    iget p2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    .line 243
    .line 244
    const-string/jumbo p3, "stv_virtual_vib_sound"

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, p2, p3}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 251
    .line 252
    iget v3, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    .line 253
    .line 254
    const/16 v7, 0x14

    .line 255
    .line 256
    const/high16 v8, 0x3f800000    # 1.0f

    .line 257
    .line 258
    const/4 v6, 0x0

    .line 259
    move v4, v5

    .line 260
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    iput p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mStreamId:I

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_e
    :goto_4
    const-string p0, "VibratorManagerService"

    .line 268
    .line 269
    const-string p1, "cannot play virtual sound"

    .line 270
    .line 271
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :cond_f
    const-string p0, "VibratorManagerService"

    .line 276
    .line 277
    const-string/jumbo p1, "skip virtual sound: shouldSoundForRingerMode false"

    .line 278
    .line 279
    .line 280
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    :goto_5
    return-void
.end method

.method public final stopVirtualSound(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "stop virtual sound : "

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 9
    .line 10
    const-string v2, "VibratorManagerService"

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 30
    .line 31
    iget p0, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mStreamId:I

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    const-string p0, "failed stopping virtual sound"

    .line 38
    .line 39
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const-string p0, "cannot stop virtual sound"

    .line 44
    .line 45
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    return-void
.end method
