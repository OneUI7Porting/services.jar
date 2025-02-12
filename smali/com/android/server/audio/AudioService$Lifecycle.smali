.class public final Lcom/android/server/audio/AudioService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v7, Lcom/android/server/audio/DefaultAudioPolicyFacade;

    .line 9
    .line 10
    invoke-direct {v7, v0}, Lcom/android/server/audio/DefaultAudioPolicyFacade;-><init>(Ljava/util/concurrent/Executor;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/android/server/audio/AudioService;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcom/android/server/audio/SystemServerAdapter;

    .line 23
    .line 24
    invoke-direct {v4, p1}, Lcom/android/server/audio/SystemServerAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/android/server/audio/SettingsAdapter;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v6, Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;

    .line 33
    .line 34
    invoke-direct {v6}, Lcom/android/server/audio/AudioVolumeGroupHelperBase;-><init>()V

    .line 35
    .line 36
    .line 37
    const-class v1, Landroid/app/AppOpsManager;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v8, v1

    .line 44
    check-cast v8, Landroid/app/AppOpsManager;

    .line 45
    .line 46
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-static {}, Lcom/android/media/audio/Flags;->audioserverPermissions()Z

    .line 51
    .line 52
    .line 53
    move-object v1, v0

    .line 54
    move-object v2, p1

    .line 55
    invoke-direct/range {v1 .. v9}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;Lcom/android/server/audio/DefaultAudioPolicyFacade;Landroid/app/AppOpsManager;Landroid/os/PermissionEnforcer;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    const/16 v0, 0x226

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    const/16 v0, 0x3e8

    .line 22
    .line 23
    if-ne p1, v0, :cond_d

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/16 v2, 0xad3

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    const/16 v7, 0x7530

    .line 34
    .line 35
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordEventChecker:Lcom/android/server/audio/AudioService$11;

    .line 43
    .line 44
    iput-object v0, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mChecker:Lcom/android/server/audio/AudioService$11;

    .line 45
    .line 46
    :cond_1
    new-instance p1, Lcom/samsung/android/server/audio/AudioGameManager;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-direct {p1, v0}, Lcom/samsung/android/server/audio/AudioGameManager;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 58
    .line 59
    sget-object v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 60
    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    new-instance v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 64
    .line 65
    invoke-direct {v1, p1, v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;)V

    .line 66
    .line 67
    .line 68
    sput-object v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 69
    .line 70
    :cond_2
    sget-object p1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 75
    .line 76
    const-string v0, "APP_LIST_VERSION"

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(ILjava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;

    .line 84
    .line 85
    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/audio/AudioService;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    sget-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 94
    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    new-instance v0, Lcom/samsung/android/server/audio/PackageListHelper;

    .line 98
    .line 99
    invoke-direct {v0, p1}, Lcom/samsung/android/server/audio/PackageListHelper;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    sput-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 103
    .line 104
    :cond_3
    sget-object p1, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const-string v2, "PackageListHelper"

    .line 114
    .line 115
    const-string/jumbo v3, "initPackageList"

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move v2, v1

    .line 122
    :goto_0
    iget-object v3, p1, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-ge v2, v3, :cond_5

    .line 129
    .line 130
    iget-object v3, p1, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v0, v3}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_4

    .line 143
    .line 144
    sget-object v4, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    .line 145
    .line 146
    iget-object v5, p1, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/audio/AppCategorizer;->putPackage(ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_5
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_FM_RADIO:Z

    .line 161
    .line 162
    if-eqz p1, :cond_6

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 165
    .line 166
    const-string/jumbo v0, "g_fmradio_enable=false"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    const/4 p1, 0x2

    .line 173
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    array-length v2, v0

    .line 178
    move v3, v1

    .line 179
    move v4, v3

    .line 180
    :goto_1
    const/4 v5, 0x1

    .line 181
    if-ge v3, v2, :cond_8

    .line 182
    .line 183
    aget-object v6, v0, v3

    .line 184
    .line 185
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-ne v6, v5, :cond_7

    .line 190
    .line 191
    const-string v4, "AS.AudioService"

    .line 192
    .line 193
    const-string/jumbo v6, "updateReceiverSupported RCV"

    .line 194
    .line 195
    .line 196
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move v4, v5

    .line 200
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 204
    .line 205
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 212
    .line 213
    const-string/jumbo v2, "speaker"

    .line 214
    .line 215
    .line 216
    const-string v3, ""

    .line 217
    .line 218
    invoke-virtual {v0, p1, v3, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 219
    .line 220
    .line 221
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    .line 222
    .line 223
    if-eqz p1, :cond_9

    .line 224
    .line 225
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 226
    .line 227
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 228
    .line 229
    invoke-static {p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 234
    .line 235
    iput-object v0, p1, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 236
    .line 237
    :cond_9
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 238
    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    .line 243
    .line 244
    const-string/jumbo v0, "l_call_voip_extra_volume_enable="

    .line 245
    .line 246
    .line 247
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 248
    .line 249
    if-eqz p1, :cond_a

    .line 250
    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-boolean v3, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    .line 257
    .line 258
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_a
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    .line 269
    .line 270
    if-eqz p1, :cond_b

    .line 271
    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    .line 278
    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_b
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    .line 297
    .line 298
    invoke-direct {v2, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 299
    .line 300
    .line 301
    iput-object v2, v0, Lcom/samsung/android/server/audio/CoverHelper;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 302
    .line 303
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 304
    .line 305
    const-string v0, "alarm"

    .line 306
    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    move-object v2, v0

    .line 312
    check-cast v2, Landroid/app/AlarmManager;

    .line 313
    .line 314
    new-instance v0, Landroid/content/Intent;

    .line 315
    .line 316
    const-string/jumbo v3, "com.sec.media.action.AUDIOCORE_LOGGING"

    .line 317
    .line 318
    .line 319
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const/high16 v3, 0x4000000

    .line 323
    .line 324
    invoke-static {p1, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 329
    .line 330
    .line 331
    move-result-wide v3

    .line 332
    const-wide/32 v5, 0x5265c00

    .line 333
    .line 334
    .line 335
    add-long v4, v3, v5

    .line 336
    .line 337
    const-wide/32 v6, 0x5265c00

    .line 338
    .line 339
    .line 340
    const/4 v3, 0x3

    .line 341
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 345
    .line 346
    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    .line 347
    .line 348
    invoke-static {p1, v0}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    .line 349
    .line 350
    .line 351
    iget p1, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    .line 352
    .line 353
    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    .line 357
    .line 358
    .line 359
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 360
    .line 361
    if-eqz p1, :cond_c

    .line 362
    .line 363
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    .line 364
    .line 365
    if-eqz p1, :cond_c

    .line 366
    .line 367
    iget-object p1, p1, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

    .line 368
    .line 369
    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    .line 370
    .line 371
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/audio/MicModeType;->restoreMicMode(Landroid/content/ContentResolver;)V

    .line 372
    .line 373
    .line 374
    :cond_c
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 375
    .line 376
    if-eqz p1, :cond_d

    .line 377
    .line 378
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->restoreLiveTranslator()V

    .line 379
    .line 380
    .line 381
    :cond_d
    :goto_2
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "audio"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
