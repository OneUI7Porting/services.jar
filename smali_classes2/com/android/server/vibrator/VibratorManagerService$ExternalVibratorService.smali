.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onExternalVibrationStart(Landroid/os/ExternalVibration;)Landroid/os/ExternalVibrationScale;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string v0, "VibratorManagerService"

    .line 11
    .line 12
    const-string/jumbo v1, "onExternalVibrationStart() -  SCALE_MUTE"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/os/ExternalVibrationScale;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/ExternalVibrationScale;-><init>()V

    .line 21
    .line 22
    .line 23
    iput v3, v0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 27
    .line 28
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 29
    .line 30
    invoke-direct {v2, v4, v1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 34
    .line 35
    const/16 v5, -0x64

    .line 36
    .line 37
    iput v5, v4, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 38
    .line 39
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v4

    .line 44
    move v6, v3

    .line 45
    :goto_0
    :try_start_0
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 46
    .line 47
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/4 v8, 0x0

    .line 54
    if-ge v6, v7, :cond_19

    .line 55
    .line 56
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 57
    .line 58
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Lcom/android/server/vibrator/VibratorController;

    .line 65
    .line 66
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 67
    .line 68
    const-wide/16 v9, 0x8

    .line 69
    .line 70
    invoke-virtual {v7, v9, v10}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_18

    .line 75
    .line 76
    const-string v6, "android.permission.VIBRATE"

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getUid()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    const/4 v9, -0x1

    .line 83
    const/4 v10, 0x1

    .line 84
    invoke-static {v6, v7, v9, v10}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_1

    .line 89
    .line 90
    const-string v3, "VibratorManagerService"

    .line 91
    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v6, "pkg="

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v6, ", uid="

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getUid()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    .line 123
    .line 124
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 135
    .line 136
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 137
    .line 138
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/Vibration$Status;

    .line 139
    .line 140
    invoke-direct {v1, v3, v8}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationAndWriteStatsLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 147
    .line 148
    monitor-exit v4

    .line 149
    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto/16 :goto_6

    .line 152
    .line 153
    :cond_1
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 154
    .line 155
    iget-object v7, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration$CallerInfo;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    if-nez v6, :cond_2

    .line 162
    .line 163
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 164
    .line 165
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 166
    .line 167
    if-eqz v7, :cond_2

    .line 168
    .line 169
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 170
    .line 171
    invoke-virtual {v7, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_2

    .line 176
    .line 177
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 182
    .line 183
    monitor-exit v4

    .line 184
    return-object v0

    .line 185
    :cond_2
    if-nez v6, :cond_3

    .line 186
    .line 187
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 188
    .line 189
    invoke-virtual {v6, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForOngoingLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    :cond_3
    if-eqz v6, :cond_4

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 196
    .line 197
    invoke-virtual {v0, v2, v6}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationAndWriteStatsLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 201
    .line 202
    monitor-exit v4

    .line 203
    return-object v0

    .line 204
    :cond_4
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 205
    .line 206
    iget-object v7, v6, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 207
    .line 208
    if-nez v7, :cond_7

    .line 209
    .line 210
    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 211
    .line 212
    if-eqz v6, :cond_6

    .line 213
    .line 214
    iget-object v7, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 215
    .line 216
    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 217
    .line 218
    iget-object v6, v6, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 219
    .line 220
    invoke-virtual {v7, v6}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 221
    .line 222
    .line 223
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 224
    .line 225
    new-instance v7, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 226
    .line 227
    sget-object v9, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    .line 228
    .line 229
    iget-object v11, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 230
    .line 231
    invoke-direct {v7, v9, v11}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 235
    .line 236
    .line 237
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 238
    .line 239
    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 240
    .line 241
    new-instance v7, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 242
    .line 243
    sget-object v9, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    .line 244
    .line 245
    iget-object v11, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 246
    .line 247
    invoke-direct {v7, v9, v11}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v7, v10}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 251
    .line 252
    .line 253
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 254
    .line 255
    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    .line 256
    .line 257
    if-eqz v6, :cond_5

    .line 258
    .line 259
    const-string v7, "cancel"

    .line 260
    .line 261
    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_5
    move v7, v3

    .line 265
    move v6, v10

    .line 266
    goto :goto_1

    .line 267
    :cond_6
    move v6, v3

    .line 268
    move v7, v6

    .line 269
    goto :goto_1

    .line 270
    :cond_7
    iget-object v6, v7, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 271
    .line 272
    invoke-virtual {v6}, Landroid/os/ExternalVibration;->mute()Z

    .line 273
    .line 274
    .line 275
    iget-object v6, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 276
    .line 277
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 278
    .line 279
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 280
    .line 281
    iget-object v7, v7, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 282
    .line 283
    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 284
    .line 285
    .line 286
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 287
    .line 288
    new-instance v7, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 289
    .line 290
    sget-object v9, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    .line 291
    .line 292
    iget-object v11, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 293
    .line 294
    invoke-direct {v7, v9, v11}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6, v7, v10}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 298
    .line 299
    .line 300
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 301
    .line 302
    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    .line 303
    .line 304
    if-eqz v6, :cond_8

    .line 305
    .line 306
    const-string/jumbo v7, "mute"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    :cond_8
    move v6, v3

    .line 313
    move v7, v10

    .line 314
    :goto_1
    iget-object v9, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 315
    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    invoke-virtual {v9, v11, v8}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    const/4 v11, 0x4

    .line 325
    invoke-virtual {v9, v11}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    if-eqz v11, :cond_9

    .line 330
    .line 331
    iget-object v11, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 332
    .line 333
    iget-object v11, v11, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 334
    .line 335
    invoke-virtual {v11}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 336
    .line 337
    .line 338
    :cond_9
    iget-object v11, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 339
    .line 340
    iput-object v2, v11, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 341
    .line 342
    iget-object v11, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 343
    .line 344
    invoke-virtual {v11, v2}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 345
    .line 346
    .line 347
    iget-object v11, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 348
    .line 349
    iget-object v11, v11, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 350
    .line 351
    invoke-virtual {v9}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    iget-object v12, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 356
    .line 357
    invoke-virtual {v11, v9}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    .line 358
    .line 359
    .line 360
    move-result v13

    .line 361
    iput v13, v12, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 362
    .line 363
    iget-object v12, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 364
    .line 365
    invoke-virtual {v11, v9}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    iput v9, v12, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    .line 370
    .line 371
    iget-object v9, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 372
    .line 373
    iget v9, v9, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    .line 374
    .line 375
    iget-object v11, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 376
    .line 377
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    const/high16 v12, 0x3f800000    # 1.0f

    .line 381
    .line 382
    invoke-static {v9, v12}, Ljava/lang/Float;->compare(FF)I

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    if-eqz v12, :cond_a

    .line 387
    .line 388
    iput v9, v11, Lcom/android/server/vibrator/VibrationStats;->mAdaptiveScale:F

    .line 389
    .line 390
    :cond_a
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-eqz v6, :cond_b

    .line 392
    .line 393
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 394
    .line 395
    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 396
    .line 397
    const-wide/16 v11, 0x1388

    .line 398
    .line 399
    invoke-virtual {v4, v11, v12}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-nez v4, :cond_b

    .line 404
    .line 405
    const-string v1, "VibratorManagerService"

    .line 406
    .line 407
    const-string v4, "Timed out waiting for vibration to cancel"

    .line 408
    .line 409
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 413
    .line 414
    iget-object v4, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 415
    .line 416
    monitor-enter v4

    .line 417
    :try_start_1
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 418
    .line 419
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 420
    .line 421
    sget-object v6, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

    .line 422
    .line 423
    invoke-direct {v1, v6, v8}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v1, v3}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 427
    .line 428
    .line 429
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 430
    .line 431
    iput v5, v0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 432
    .line 433
    monitor-exit v4

    .line 434
    return-object v0

    .line 435
    :catchall_1
    move-exception v0

    .line 436
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 437
    throw v0

    .line 438
    :cond_b
    if-nez v7, :cond_c

    .line 439
    .line 440
    const-string v4, "VibratorManagerService"

    .line 441
    .line 442
    const-string v6, "Vibrator going under external control."

    .line 443
    .line 444
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 448
    .line 449
    iget-object v6, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 450
    .line 451
    invoke-virtual {v4, v10, v6}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V

    .line 452
    .line 453
    .line 454
    :cond_c
    sget-boolean v4, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    .line 455
    .line 456
    if-eqz v4, :cond_13

    .line 457
    .line 458
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 459
    .line 460
    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 461
    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-virtual {v6}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    invoke-virtual {v4, v6}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    new-instance v6, Landroid/os/ExternalVibrationScale;

    .line 475
    .line 476
    invoke-direct {v6}, Landroid/os/ExternalVibrationScale;-><init>()V

    .line 477
    .line 478
    .line 479
    iput v3, v6, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 480
    .line 481
    iget-object v7, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 482
    .line 483
    invoke-virtual {v7}, Landroid/os/ExternalVibration;->getVibrationAttributesWithTags()Landroid/os/VibrationAttributes;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    invoke-virtual {v7}, Landroid/os/VibrationAttributes;->getTags()Ljava/util/Set;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    :cond_d
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    .line 497
    .line 498
    move-result v8

    .line 499
    if-eqz v8, :cond_e

    .line 500
    .line 501
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    check-cast v8, Ljava/lang/String;

    .line 506
    .line 507
    const-string v9, "HAPTIC_INTENSITY"

    .line 508
    .line 509
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 510
    .line 511
    .line 512
    move-result v9

    .line 513
    if-eqz v9, :cond_d

    .line 514
    .line 515
    const-string v9, "="

    .line 516
    .line 517
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    aget-object v9, v8, v10

    .line 522
    .line 523
    if-eqz v9, :cond_d

    .line 524
    .line 525
    const-string v4, "VibratorManagerService"

    .line 526
    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    const-string v11, "ach intensity : "

    .line 530
    .line 531
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    aget-object v11, v8, v10

    .line 535
    .line 536
    invoke-static {v9, v11, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    aget-object v4, v8, v10

    .line 540
    .line 541
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    goto :goto_2

    .line 546
    :cond_e
    const-string v7, "VibratorManagerService"

    .line 547
    .line 548
    const-string v8, "getCurrentMagnitude : "

    .line 549
    .line 550
    invoke-static {v4, v8, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    if-nez v4, :cond_f

    .line 554
    .line 555
    iput-object v6, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 556
    .line 557
    goto :goto_3

    .line 558
    :cond_f
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 559
    .line 560
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 561
    .line 562
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    check-cast v7, Lcom/android/server/vibrator/VibratorController;

    .line 567
    .line 568
    if-eqz v7, :cond_10

    .line 569
    .line 570
    int-to-long v8, v4

    .line 571
    iget-object v4, v7, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 572
    .line 573
    invoke-virtual {v4, v8, v9}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(J)V

    .line 574
    .line 575
    .line 576
    :cond_10
    iput-object v6, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 577
    .line 578
    :goto_3
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 579
    .line 580
    iget-object v6, v4, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 581
    .line 582
    if-eqz v6, :cond_13

    .line 583
    .line 584
    const-string v7, "VibratorService"

    .line 585
    .line 586
    iget-object v8, v6, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    .line 587
    .line 588
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 589
    .line 590
    .line 591
    move-result v7

    .line 592
    if-eqz v7, :cond_11

    .line 593
    .line 594
    iget-boolean v3, v6, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    .line 595
    .line 596
    :cond_11
    if-eqz v3, :cond_13

    .line 597
    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-nez v3, :cond_13

    .line 607
    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    const-string v6, "android"

    .line 613
    .line 614
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v6

    .line 618
    if-eqz v6, :cond_12

    .line 619
    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    .line 621
    .line 622
    .line 623
    move-result v6

    .line 624
    if-eqz v6, :cond_12

    .line 625
    .line 626
    const-string v3, "com.android.server.telecom"

    .line 627
    .line 628
    :cond_12
    move-object v13, v3

    .line 629
    iget-object v3, v4, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 630
    .line 631
    iget-object v11, v3, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 632
    .line 633
    const-string v15, ""

    .line 634
    .line 635
    const-string v16, ""

    .line 636
    .line 637
    const-string/jumbo v12, "vibration"

    .line 638
    .line 639
    .line 640
    const/4 v14, 0x0

    .line 641
    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    :cond_13
    const-string v3, "VibratorManagerService"

    .line 645
    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    const-string v6, "Playing external vibration: "

    .line 649
    .line 650
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    iget-object v3, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 664
    .line 665
    iget-wide v6, v3, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    .line 666
    .line 667
    const-wide/16 v8, 0x0

    .line 668
    .line 669
    cmp-long v4, v6, v8

    .line 670
    .line 671
    if-lez v4, :cond_14

    .line 672
    .line 673
    goto :goto_4

    .line 674
    :cond_14
    iget-wide v6, v3, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    .line 675
    .line 676
    cmp-long v4, v6, v8

    .line 677
    .line 678
    if-eqz v4, :cond_15

    .line 679
    .line 680
    goto :goto_4

    .line 681
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 682
    .line 683
    .line 684
    move-result-wide v6

    .line 685
    iput-wide v6, v3, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    .line 686
    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 688
    .line 689
    .line 690
    move-result-wide v6

    .line 691
    iput-wide v6, v3, Lcom/android/server/vibrator/VibrationStats;->mStartTimeDebug:J

    .line 692
    .line 693
    :goto_4
    sget-boolean v3, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    .line 694
    .line 695
    if-eqz v3, :cond_16

    .line 696
    .line 697
    iget-object v3, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 698
    .line 699
    iget v3, v3, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 700
    .line 701
    if-eq v3, v5, :cond_16

    .line 702
    .line 703
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 704
    .line 705
    iget-object v3, v3, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    .line 706
    .line 707
    if-eqz v3, :cond_16

    .line 708
    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getVibrationAttributesWithTags()Landroid/os/VibrationAttributes;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->playVirtualSoundIfNeeded(Ljava/lang/String;Landroid/os/VibrationAttributes;Z)V

    .line 722
    .line 723
    .line 724
    :cond_16
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 725
    .line 726
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    if-eqz v1, :cond_17

    .line 731
    .line 732
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 737
    .line 738
    monitor-enter v1

    .line 739
    :try_start_2
    invoke-virtual {v0, v10}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 740
    .line 741
    .line 742
    monitor-exit v1

    .line 743
    goto :goto_5

    .line 744
    :catchall_2
    move-exception v0

    .line 745
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 746
    throw v0

    .line 747
    :cond_17
    :goto_5
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 748
    .line 749
    return-object v0

    .line 750
    :cond_18
    add-int/lit8 v6, v6, 0x1

    .line 751
    .line 752
    goto/16 :goto_0

    .line 753
    .line 754
    :cond_19
    :try_start_3
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 755
    .line 756
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 757
    .line 758
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    .line 759
    .line 760
    invoke-direct {v1, v3, v8}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v0, v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationAndWriteStatsLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 764
    .line 765
    .line 766
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 767
    .line 768
    monitor-exit v4

    .line 769
    return-object v0

    .line 770
    :goto_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 771
    throw v0
.end method

.method public final onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .locals 4

    .line 1
    const-string v0, "Stopping external vibration: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string v2, "VibratorManagerService"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const-string p1, "VibratorManagerService"

    .line 46
    .line 47
    const-string v0, "Ach repeat vibration ended"

    .line 48
    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    const-string/jumbo v0, "stop"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 68
    .line 69
    new-instance v0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 70
    .line 71
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-direct {v0, v2, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1, v0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 97
    .line 98
    .line 99
    monitor-exit p1

    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    throw p0

    .line 104
    :cond_1
    :goto_1
    monitor-exit v1

    .line 105
    return-void

    .line 106
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw p0
.end method

.method public final shouldIgnoreExternalVibrationLocked(IIII)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
