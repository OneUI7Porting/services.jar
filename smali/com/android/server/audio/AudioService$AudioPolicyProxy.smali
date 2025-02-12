.class public final Lcom/android/server/audio/AudioService$AudioPolicyProxy;
.super Landroid/media/audiopolicy/AudioPolicyConfig;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public mFocusDuckBehavior:I

.field public final mHasFocusListener:Z

.field public final mIsFocusPolicy:Z

.field public final mIsTestFocusPolicy:Z

.field public final mIsVolumeController:Z

.field public final mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field public final mProjection:Landroid/media/projection/IMediaProjection;

.field public final mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

.field public final mUidDeviceAffinities:Ljava/util/HashMap;

.field public final mUserIdDeviceAffinities:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;Landroid/content/AttributionSource;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 26
    .line 27
    new-instance v0, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicyConfig;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, ":ap:"

    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget p2, p1, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 47
    .line 48
    add-int/lit8 v2, p2, 0x1

    .line 49
    .line 50
    iput v2, p1, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioPolicyConfig;->setRegistration(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object p3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 66
    .line 67
    iput-object p9, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mAttributionSource:Landroid/content/AttributionSource;

    .line 68
    .line 69
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    .line 70
    .line 71
    iput-boolean p7, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    .line 72
    .line 73
    iput-object p8, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 74
    .line 75
    if-eqz p4, :cond_5

    .line 76
    .line 77
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    if-nez p3, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    sget-object p4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter p4

    .line 88
    :try_start_0
    iget-object p7, p2, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p7

    .line 94
    :cond_1
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result p9

    .line 98
    if-eqz p9, :cond_2

    .line 99
    .line 100
    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p9

    .line 104
    check-cast p9, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 105
    .line 106
    invoke-interface {p9}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 107
    .line 108
    .line 109
    move-result-object p9

    .line 110
    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p9, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p9

    .line 118
    if-eqz p9, :cond_1

    .line 119
    .line 120
    monitor-exit p4

    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_3

    .line 124
    :cond_2
    iget-object p7, p2, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {p7, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    new-instance p7, Lcom/android/server/audio/MediaFocusControl$1;

    .line 130
    .line 131
    invoke-direct {p7, p2, p3}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p7}, Ljava/lang/Thread;->start()V

    .line 135
    .line 136
    .line 137
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    if-eqz p5, :cond_5

    .line 139
    .line 140
    const/4 p2, 0x1

    .line 141
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 142
    .line 143
    iput-boolean p6, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 144
    .line 145
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 146
    .line 147
    iget-object p3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    if-nez p3, :cond_3

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_3
    sget-object p4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 156
    .line 157
    monitor-enter p4

    .line 158
    if-eqz p6, :cond_4

    .line 159
    .line 160
    :try_start_1
    iget-object p5, p2, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 161
    .line 162
    iput-object p5, p2, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    goto :goto_2

    .line 167
    :cond_4
    :goto_1
    iput-object p3, p2, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 168
    .line 169
    monitor-exit p4

    .line 170
    goto :goto_4

    .line 171
    :goto_2
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    throw p0

    .line 173
    :goto_3
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    throw p0

    .line 175
    :cond_5
    :goto_4
    iget-boolean p2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    .line 176
    .line 177
    if-eqz p2, :cond_8

    .line 178
    .line 179
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 180
    .line 181
    iget-object p3, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    const p4, 0x11101ad

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    if-nez p3, :cond_6

    .line 195
    .line 196
    const-string p1, "AS.AudioService"

    .line 197
    .line 198
    const-string p2, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager"

    .line 199
    .line 200
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_6
    iget-object p3, p1, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    .line 205
    .line 206
    monitor-enter p3

    .line 207
    :try_start_3
    iget-object p4, p1, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 208
    .line 209
    if-eqz p4, :cond_7

    .line 210
    .line 211
    invoke-interface {p4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 212
    .line 213
    .line 214
    move-result-object p4

    .line 215
    invoke-interface {p4}, Landroid/os/IBinder;->pingBinder()Z

    .line 216
    .line 217
    .line 218
    move-result p4

    .line 219
    if-nez p4, :cond_7

    .line 220
    .line 221
    const-string p4, "AS.AudioService"

    .line 222
    .line 223
    const-string p5, "Cannot set external volume controller: existing controller"

    .line 224
    .line 225
    invoke-static {p4, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :catchall_2
    move-exception p0

    .line 230
    goto :goto_6

    .line 231
    :cond_7
    :goto_5
    iput-object p2, p1, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 232
    .line 233
    monitor-exit p3

    .line 234
    goto :goto_7

    .line 235
    :goto_6
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 236
    throw p0

    .line 237
    :cond_8
    :goto_7
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 238
    .line 239
    if-eqz p1, :cond_9

    .line 240
    .line 241
    new-instance p1, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    .line 242
    .line 243
    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;-><init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;)V

    .line 244
    .line 245
    .line 246
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    .line 247
    .line 248
    :try_start_4
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 249
    .line 250
    invoke-interface {p2, p1}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 256
    .line 257
    .line 258
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 259
    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string p3, "MediaProjection callback registration failed, could not link to "

    .line 263
    .line 264
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string p3, " binder death"

    .line 271
    .line 272
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-direct {p0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    throw p0

    .line 283
    :cond_9
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-nez p1, :cond_a

    .line 288
    .line 289
    return-void

    .line 290
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 291
    .line 292
    .line 293
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    const-string p2, "Could not connect mix, error: "

    .line 296
    .line 297
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p0
.end method

.method public static logFriendlyAttributeDeviceArrayMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    const-string v2, "     "

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ": "

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "\n"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    :goto_0
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    .line 61
    .line 62
    array-length v4, v4

    .line 63
    if-ge v3, v4, :cond_0

    .line 64
    .line 65
    const-string v4, "        Type: 0x"

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    .line 71
    .line 72
    aget v4, v4, v3

    .line 73
    .line 74
    const-string v5, " Address: "

    .line 75
    .line 76
    invoke-static {v4, v0, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceAddresses:[Ljava/lang/String;

    .line 80
    .line 81
    aget-object v4, v4, v3

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method


# virtual methods
.method public final addMixes(Ljava/util/ArrayList;)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/media/audiopolicy/Flags;->audioMixOwnership()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Landroid/media/audiopolicy/AudioPolicyConfig;->setMixRegistration(Landroid/media/audiopolicy/AudioMix;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mAttributionSource:Landroid/content/AttributionSource;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getDeviceId()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v3, v4}, Landroid/media/audiopolicy/AudioMix;->setVirtualDeviceId(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->add(Ljava/util/ArrayList;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    monitor-exit v0

    .line 59
    return v1

    .line 60
    :cond_2
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->add(Ljava/util/ArrayList;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    monitor-exit v0

    .line 75
    return p0

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final binderDied()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/utils/EventLogger;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "AudioPolicy "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 15
    .line 16
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, " died"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "AudioPolicyProxy"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/media/audiopolicy/AudioMix;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 97
    .line 98
    iget-object v4, v3, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 99
    .line 100
    monitor-enter v4

    .line 101
    :try_start_0
    iget-object v3, v3, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Landroid/media/AudioPlaybackConfiguration;

    .line 122
    .line 123
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getUsage()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    const/4 v8, 0x1

    .line 136
    if-ne v7, v8, :cond_1

    .line 137
    .line 138
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_1

    .line 143
    .line 144
    if-eqz v6, :cond_1

    .line 145
    .line 146
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    const v7, 0x8000

    .line 151
    .line 152
    .line 153
    if-ne v5, v7, :cond_1

    .line 154
    .line 155
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_1

    .line 164
    .line 165
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 167
    .line 168
    const/4 v9, 0x0

    .line 169
    const/4 v10, 0x0

    .line 170
    const/16 v7, 0xc

    .line 171
    .line 172
    const/4 v8, 0x0

    .line 173
    const/4 v11, 0x0

    .line 174
    const/4 v12, 0x0

    .line 175
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catchall_0
    move-exception p0

    .line 180
    goto :goto_2

    .line 181
    :cond_2
    :try_start_1
    monitor-exit v4

    .line 182
    goto :goto_1

    .line 183
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    throw p0

    .line 185
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final connectMixes()I
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mAttributionSource:Landroid/content/AttributionSource;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getDeviceId()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v3, v4}, Landroid/media/audiopolicy/AudioMix;->setVirtualDeviceId(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 38
    .line 39
    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-static {p0, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    return p0

    .line 53
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final getRegistrationId()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicyConfig;->getRegistration()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final hasMixAffectingUsage()Z
    .locals 3

    .line 1
    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/media/audiopolicy/AudioMix;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix;->isAffectingUsage(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x3

    .line 31
    and-int/2addr v0, v2

    .line 32
    if-eq v0, v2, :cond_0

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final hasMixRoutedToDevices([I[Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 23
    .line 24
    aget v4, p1, v1

    .line 25
    .line 26
    aget-object v5, p2, v1

    .line 27
    .line 28
    invoke-virtual {v3, v4, v5}, Landroid/media/audiopolicy/AudioMix;->isRoutedToDevice(ILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return v0

    .line 38
    :cond_2
    const/4 p0, 0x1

    .line 39
    return p0
.end method

.method public final release()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v4

    .line 23
    :try_start_0
    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 24
    .line 25
    if-ne v5, v2, :cond_2

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 37
    .line 38
    :cond_2
    :goto_0
    monitor-exit v4

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    if-ne v0, v2, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 50
    .line 51
    iput-boolean v2, v0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 52
    .line 53
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 64
    .line 65
    .line 66
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 71
    .line 72
    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catch_0
    const-string v0, "AudioPolicyProxy"

    .line 77
    .line 78
    const-string v2, "Fail to unregister Audiopolicy callback from MediaProjection"

    .line 79
    .line 80
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    .line 90
    .line 91
    monitor-enter v0

    .line 92
    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 93
    .line 94
    iput-object v1, v2, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 95
    .line 96
    monitor-exit v0

    .line 97
    goto :goto_4

    .line 98
    :catchall_1
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    throw p0

    .line 101
    :cond_7
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    :try_start_3
    invoke-static {}, Landroid/media/audiopolicy/Flags;->audioMixOwnership()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_8

    .line 110
    .line 111
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 112
    .line 113
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 114
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    .line 116
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeMixes(Ljava/util/ArrayList;)I

    .line 122
    .line 123
    .line 124
    monitor-exit v2

    .line 125
    goto :goto_5

    .line 126
    :catchall_2
    move-exception p0

    .line 127
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 128
    :try_start_5
    throw p0

    .line 129
    :catchall_3
    move-exception p0

    .line 130
    goto :goto_6

    .line 131
    :cond_8
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 132
    .line 133
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 134
    .line 135
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 138
    .line 139
    .line 140
    const/4 v2, 0x0

    .line 141
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 142
    .line 143
    .line 144
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 148
    .line 149
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 150
    .line 151
    monitor-enter v2

    .line 152
    :try_start_6
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 155
    .line 156
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 157
    .line 158
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 166
    :try_start_7
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 167
    .line 168
    invoke-interface {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyUnregistration()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 169
    .line 170
    .line 171
    :catch_1
    return-void

    .line 172
    :catchall_4
    move-exception p0

    .line 173
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 174
    throw p0

    .line 175
    :goto_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    .line 177
    .line 178
    throw p0
.end method

.method public final removeMixes(Ljava/util/ArrayList;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->remove(Ljava/util/ArrayList;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-static {p1, p0}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final removeUidDeviceAffinitiesFromSystem(I)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final removeUserIdDeviceAffinitiesFromSystem(I)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUserIdDeviceAffinities(I)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final setUidDeviceAffinities(I[I[Ljava/lang/String;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, -0x1

    .line 13
    const-string v3, "AudioPolicyProxy"

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinitiesFromSystem(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string p0, "AudioSystem. removeUidDeviceAffinities("

    .line 24
    .line 25
    const-string p2, ") failed,  cannot call AudioSystem.setUidDeviceAffinities"

    .line 26
    .line 27
    invoke-static {p1, p0, p2, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    new-instance v1, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    .line 32
    .line 33
    invoke-direct {v1, p2, p3}, Lcom/android/server/audio/AudioService$AudioDeviceArray;-><init>([I[Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUidDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_1
    const-string p0, "AudioSystem. setUidDeviceAffinities("

    .line 50
    .line 51
    const-string p2, ") failed"

    .line 52
    .line 53
    invoke-static {p1, p0, p2, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v2
.end method

.method public final setUidDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 8
    .line 9
    iget-object v2, p2, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    .line 10
    .line 11
    iget-object p2, p2, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceAddresses:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v2, p2}, Landroid/media/AudioSystem;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, -0x1

    .line 13
    const-string v3, "AudioPolicyProxy"

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUserIdDeviceAffinitiesFromSystem(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p1, "AudioSystem. removeUserIdDeviceAffinities("

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ") failed,  cannot call AudioSystem.setUserIdDeviceAffinities"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_0
    new-instance v1, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    .line 47
    .line 48
    invoke-direct {v1, p2, p3}, Lcom/android/server/audio/AudioService$AudioDeviceArray;-><init>([I[Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUserIdDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_1
    const-string p0, "AudioSystem.setUserIdDeviceAffinities("

    .line 65
    .line 66
    const-string p2, ") failed"

    .line 67
    .line 68
    invoke-static {p1, p0, p2, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v2
.end method

.method public final setUserIdDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 8
    .line 9
    iget-object v2, p2, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    .line 10
    .line 11
    iget-object p2, p2, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceAddresses:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v2, p2}, Landroid/media/AudioSystem;->setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final setupDeviceAffinities()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "AudioPolicyProxy"

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinitiesFromSystem(I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v0, "setupDeviceAffinities failed to remove device affinity for uid "

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return v3

    .line 64
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    .line 79
    .line 80
    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUidDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_0

    .line 85
    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string/jumbo v0, "setupDeviceAffinities failed to set device affinity for uid "

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return v3

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/Integer;

    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUserIdDeviceAffinitiesFromSystem(I)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_4

    .line 146
    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string/jumbo v0, "setupDeviceAffinities failed to remove device affinity for userId "

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    return v3

    .line 170
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    .line 185
    .line 186
    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUserIdDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_3

    .line 191
    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string/jumbo v0, "setupDeviceAffinities failed to set device affinity for userId "

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    return v3

    .line 215
    :cond_5
    const/4 p0, 0x0

    .line 216
    return p0
.end method

.method public final toLogFriendlyString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/media/audiopolicy/AudioPolicyConfig;->toLogFriendlyString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " Uid Device Affinities:\n"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    .line 16
    .line 17
    const-string v2, "Uid"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->logFriendlyAttributeDeviceArrayMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, " UserId Device Affinities:\n"

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    .line 41
    .line 42
    const-string v2, "UserId"

    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->logFriendlyAttributeDeviceArrayMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, " Proxy:\n"

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "   is focus policy= "

    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 68
    .line 69
    const-string v2, "\n"

    .line 70
    .line 71
    invoke-static {v2, v0, v1}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 76
    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    const-string v1, "     focus duck behaviour= "

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 86
    .line 87
    invoke-static {v1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "     is test focus policy= "

    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 98
    .line 99
    invoke-static {v2, v0, v1}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "     has focus listener= "

    .line 104
    .line 105
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    .line 110
    .line 111
    invoke-static {v2, v0, v1}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :cond_0
    const-string v1, "   media projection= "

    .line 116
    .line 117
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method

.method public final updateMixingRules([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;)I
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    aget-object v3, p1, v2

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mAttributionSource:Landroid/content/AttributionSource;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getDeviceId()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {v3, v4}, Landroid/media/audiopolicy/AudioMix;->setVirtualDeviceId(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    array-length v0, p1

    .line 27
    array-length v2, p2

    .line 28
    if-eq v0, v2, :cond_1

    .line 29
    .line 30
    const-string p0, "AudioPolicyProxy"

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Provided list of audio mixes to update and corresponding mixing rules have mismatching length (mixesToUpdate.length = "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    array-length p1, p1

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ", updatedMixingRules.length = "

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    array-length p1, p2

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ")."

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/4 p0, -0x2

    .line 65
    return p0

    .line 66
    :cond_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 67
    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 70
    .line 71
    .line 72
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 74
    .line 75
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->updatePolicyMixes([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    :goto_1
    array-length v4, p1

    .line 87
    if-ge v1, v4, :cond_2

    .line 88
    .line 89
    aget-object v4, p1, v1

    .line 90
    .line 91
    aget-object v5, p2, v1

    .line 92
    .line 93
    iget-object v6, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    new-instance v7, Lcom/android/server/audio/AudioService$AudioPolicyProxy$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {v7, v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy$$ExternalSyntheticLambda0;-><init>(Landroid/media/audiopolicy/AudioMix;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-interface {v4}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    new-instance v6, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;

    .line 116
    .line 117
    const/4 v7, 0x4

    .line 118
    invoke-direct {v6, v7, v5}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    goto :goto_3

    .line 129
    :cond_2
    if-eqz v2, :cond_3

    .line 130
    .line 131
    :try_start_2
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    goto :goto_5

    .line 137
    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    return v3

    .line 139
    :goto_3
    if-eqz v2, :cond_4

    .line 140
    .line 141
    :try_start_3
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :catchall_2
    move-exception p1

    .line 146
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    :goto_4
    throw p0

    .line 150
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    throw p0
.end method
