.class public final Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 4
    .line 5
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    .line 9
    .line 10
    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "AS.MultiSoundManager"

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    .line 27
    .line 28
    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 46
    .line 47
    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 48
    .line 49
    iget-object v3, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 50
    .line 51
    const/4 v4, -0x1

    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    const-string v0, "ActivityManager is null."

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    move v0, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const v5, 0x7fffffff

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 85
    .line 86
    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 87
    .line 88
    if-ne v6, v2, :cond_3

    .line 89
    .line 90
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 91
    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :try_start_0
    iget-object v6, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catch_0
    const-string/jumbo v6, "not installed "

    .line 109
    .line 110
    .line 111
    invoke-static {v6, v5, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :goto_1
    if-ne v0, v4, :cond_4

    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "No app found taskId:"

    .line 120
    .line 121
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 125
    .line 126
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 131
    .line 132
    iget-object v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    .line 133
    .line 134
    iget v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 135
    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 148
    .line 149
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 152
    .line 153
    iput v0, p0, Lcom/android/server/audio/AudioService;->mForegroundUid:I

    .line 154
    .line 155
    const-string/jumbo p0, "mForegroundUid = "

    .line 156
    .line 157
    .line 158
    invoke-static {v0, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_3
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    .line 165
    .line 166
    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 167
    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_1
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    .line 177
    .line 178
    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v1, "l_multi_sound_key"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string/jumbo v1, "uid"

    .line 188
    .line 189
    .line 190
    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 191
    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string/jumbo v1, "volume"

    .line 197
    .line 198
    .line 199
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 200
    .line 201
    iget v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 202
    .line 203
    iget-object v4, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 204
    .line 205
    monitor-enter v4

    .line 206
    :try_start_1
    iget-object v5, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 207
    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 217
    .line 218
    if-eqz v5, :cond_5

    .line 219
    .line 220
    iget-object v6, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    .line 221
    .line 222
    iget v7, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    .line 223
    .line 224
    aget v6, v6, v7

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :catchall_0
    move-exception p0

    .line 228
    goto :goto_7

    .line 229
    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    .line 230
    .line 231
    :goto_4
    iget-object v7, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 232
    .line 233
    iget-boolean v8, v7, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    .line 234
    .line 235
    if-eqz v8, :cond_a

    .line 236
    .line 237
    const v8, 0x186a0

    .line 238
    .line 239
    .line 240
    rem-int v9, v3, v8

    .line 241
    .line 242
    iget v7, v7, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    .line 243
    .line 244
    rem-int/2addr v7, v8

    .line 245
    if-ne v9, v7, :cond_a

    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getCurrentMediaDevice()I

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    const/4 v8, 0x2

    .line 252
    and-int/2addr v7, v8

    .line 253
    const/4 v9, 0x0

    .line 254
    const/4 v10, 0x1

    .line 255
    if-eqz v7, :cond_6

    .line 256
    .line 257
    move v7, v10

    .line 258
    goto :goto_5

    .line 259
    :cond_6
    move v7, v9

    .line 260
    :goto_5
    iget-boolean v11, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 261
    .line 262
    if-nez v11, :cond_7

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_7
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-nez v3, :cond_8

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_8
    if-ne v3, v8, :cond_9

    .line 273
    .line 274
    move v9, v10

    .line 275
    :cond_9
    move v7, v9

    .line 276
    :goto_6
    if-eqz v7, :cond_a

    .line 277
    .line 278
    iget-object v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 279
    .line 280
    iget v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    .line 281
    .line 282
    mul-float/2addr v6, v2

    .line 283
    :cond_a
    if-eqz v5, :cond_b

    .line 284
    .line 285
    iget-boolean v2, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    .line 286
    .line 287
    if-eqz v2, :cond_b

    .line 288
    .line 289
    const/4 v6, 0x0

    .line 290
    :cond_b
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 300
    .line 301
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :goto_7
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    throw p0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
