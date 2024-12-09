.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 15
    .line 16
    const/16 v2, 0x12

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/io/PrintWriter;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 36
    .line 37
    .line 38
    const-string v2, "Display Power Controller Thread State:"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, "  mPowerRequest="

    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v3, "  mBrightnessReason="

    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v2, "  mAppliedDimming=false"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v2, "  mAppliedThrottling=false"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v3, "  mDozing="

    .line 94
    .line 95
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v2, "  mSkipRampState=RAMP_STATE_SKIP_NONE"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v3, "  mScreenOnBlockStartRealTime="

    .line 118
    .line 119
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 123
    .line 124
    const-string v5, "  mScreenOffBlockStartRealTime="

    .line 125
    .line 126
    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 131
    .line 132
    const-string v5, "  mPendingScreenOnUnblocker="

    .line 133
    .line 134
    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v3, "  mPendingScreenOffUnblocker="

    .line 153
    .line 154
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v3, "  mPendingScreenOff="

    .line 172
    .line 173
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 177
    .line 178
    const-string v4, "  mReportedToPolicy="

    .line 179
    .line 180
    invoke-static {v2, v3, v0, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 185
    .line 186
    const/4 v4, 0x1

    .line 187
    const/4 v5, 0x2

    .line 188
    if-eqz v3, :cond_2

    .line 189
    .line 190
    if-eq v3, v4, :cond_1

    .line 191
    .line 192
    if-eq v3, v5, :cond_0

    .line 193
    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    goto :goto_0

    .line 199
    :cond_0
    const-string v3, "REPORTED_TO_POLICY_SCREEN_ON"

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_1
    const-string v3, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_2
    const-string v3, "REPORTED_TO_POLICY_SCREEN_OFF"

    .line 206
    .line 207
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string v2, "  mIsRbcActive=false"

    .line 218
    .line 219
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v2, Landroid/util/IndentingPrintWriter;

    .line 223
    .line 224
    const-string v3, "    "

    .line 225
    .line 226
    invoke-direct {v2, v0, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 230
    .line 231
    invoke-virtual {v3, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->dump(Ljava/io/PrintWriter;)V

    .line 232
    .line 233
    .line 234
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 235
    .line 236
    if-eqz v3, :cond_3

    .line 237
    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v6, "  mScreenBrightnessRampAnimator.isAnimating()="

    .line 241
    .line 242
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 246
    .line 247
    invoke-virtual {v6}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_3
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 262
    .line 263
    if-eqz v3, :cond_4

    .line 264
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v6, "  mColorFadeOnAnimator.isStarted()="

    .line 268
    .line 269
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 273
    .line 274
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_4
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 289
    .line 290
    if-eqz v3, :cond_5

    .line 291
    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v6, "  mColorFadeOffAnimator.isStarted()="

    .line 295
    .line 296
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 300
    .line 301
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_5
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 316
    .line 317
    if-eqz v3, :cond_6

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 320
    .line 321
    .line 322
    const-string v6, "Display Power State:"

    .line 323
    .line 324
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v7, "  mStopped="

    .line 330
    .line 331
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mStopped:Z

    .line 335
    .line 336
    const-string v8, "  mScreenState="

    .line 337
    .line 338
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    iget v7, v3, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 343
    .line 344
    invoke-static {v7}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v7, "  mScreenBrightness="

    .line 361
    .line 362
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget v7, v3, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 366
    .line 367
    const-string v8, "  mSdrScreenBrightness="

    .line 368
    .line 369
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    iget v7, v3, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 374
    .line 375
    const-string v8, "  mScreenReady="

    .line 376
    .line 377
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 382
    .line 383
    const-string v8, "  mScreenUpdatePending="

    .line 384
    .line 385
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 390
    .line 391
    const-string v8, "  mColorFadePrepared="

    .line 392
    .line 393
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 398
    .line 399
    const-string v8, "  mColorFadeLevel="

    .line 400
    .line 401
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    iget v7, v3, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 406
    .line 407
    const-string v8, "  mColorFadeReady="

    .line 408
    .line 409
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 414
    .line 415
    const-string v8, "  mColorFadeDrawPending="

    .line 416
    .line 417
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    iget-boolean v7, v3, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 422
    .line 423
    invoke-static {v6, v7, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 424
    .line 425
    .line 426
    iget-object v6, v3, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 427
    .line 428
    const-string v7, "  mBacklightChangeInProgress="

    .line 429
    .line 430
    const-string v8, "  mStateChangeInProgress="

    .line 431
    .line 432
    const-string v9, "  mActualSdrBacklight="

    .line 433
    .line 434
    const-string v10, "  mActualBacklight="

    .line 435
    .line 436
    const-string v11, "  mActualState="

    .line 437
    .line 438
    const-string v12, "  mPendingSdrBacklight="

    .line 439
    .line 440
    const-string v13, "  mPendingBacklight="

    .line 441
    .line 442
    const-string v14, "  mPendingState="

    .line 443
    .line 444
    iget-object v15, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 445
    .line 446
    monitor-enter v15

    .line 447
    :try_start_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 448
    .line 449
    .line 450
    const-string v5, "Photonic Modulator State:"

    .line 451
    .line 452
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iget v14, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 461
    .line 462
    invoke-static {v14}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v14

    .line 466
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget v13, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    .line 482
    .line 483
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iget v12, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    .line 499
    .line 500
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    new-instance v5, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    iget v11, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 516
    .line 517
    invoke-static {v11}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v11

    .line 521
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v5

    .line 528
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    new-instance v5, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    iget v10, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    .line 537
    .line 538
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    new-instance v5, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    iget v9, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    .line 554
    .line 555
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    iget-boolean v8, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 571
    .line 572
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v5

    .line 579
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    iget-boolean v6, v6, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 588
    .line 589
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    iget-object v3, v3, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 601
    .line 602
    if-eqz v3, :cond_6

    .line 603
    .line 604
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 605
    .line 606
    .line 607
    const-string v5, "Color Fade State:"

    .line 608
    .line 609
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    new-instance v5, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    const-string v6, "  mPrepared="

    .line 615
    .line 616
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    iget-boolean v6, v3, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 620
    .line 621
    const-string v7, "  mMode="

    .line 622
    .line 623
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    iget v6, v3, Lcom/android/server/display/ColorFade;->mMode:I

    .line 628
    .line 629
    const-string v7, "  mDisplayLayerStack="

    .line 630
    .line 631
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    iget v6, v3, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 636
    .line 637
    const-string v7, "  mDisplayWidth="

    .line 638
    .line 639
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    iget v6, v3, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 644
    .line 645
    const-string v7, "  mDisplayHeight="

    .line 646
    .line 647
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    iget v6, v3, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 652
    .line 653
    const-string v7, "  mSurfaceVisible="

    .line 654
    .line 655
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    iget-boolean v6, v3, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 660
    .line 661
    const-string v7, "  mSurfaceAlpha="

    .line 662
    .line 663
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    iget v3, v3, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 668
    .line 669
    invoke-static {v5, v3, v0}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 670
    .line 671
    .line 672
    goto :goto_1

    .line 673
    :catchall_0
    move-exception v0

    .line 674
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    throw v0

    .line 676
    :cond_6
    :goto_1
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 677
    .line 678
    const/4 v5, 0x0

    .line 679
    if-eqz v3, :cond_f

    .line 680
    .line 681
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 682
    .line 683
    .line 684
    const-string v6, "Automatic Brightness Controller Configuration:"

    .line 685
    .line 686
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    .line 690
    .line 691
    invoke-static {v6}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v7

    .line 695
    const-string v8, "  mScreenBrightnessRangeMinimum="

    .line 696
    .line 697
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v7

    .line 701
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    .line 705
    .line 706
    invoke-static {v7}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v9

    .line 710
    const-string v10, "  mScreenBrightnessRangeMaximum="

    .line 711
    .line 712
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v9

    .line 716
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    new-instance v9, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    const-string v11, "  mState="

    .line 722
    .line 723
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    iget v11, v3, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    .line 727
    .line 728
    if-eq v11, v4, :cond_9

    .line 729
    .line 730
    const/4 v12, 0x2

    .line 731
    if-eq v11, v12, :cond_8

    .line 732
    .line 733
    const/4 v12, 0x3

    .line 734
    if-eq v11, v12, :cond_7

    .line 735
    .line 736
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v11

    .line 740
    goto :goto_2

    .line 741
    :cond_7
    const-string v11, "AUTO_BRIGHTNESS_OFF_DUE_TO_DISPLAY_STATE"

    .line 742
    .line 743
    goto :goto_2

    .line 744
    :cond_8
    const-string v11, "AUTO_BRIGHTNESS_DISABLED"

    .line 745
    .line 746
    goto :goto_2

    .line 747
    :cond_9
    const-string v11, "AUTO_BRIGHTNESS_ENABLED"

    .line 748
    .line 749
    :goto_2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v9

    .line 756
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    new-instance v9, Ljava/lang/StringBuilder;

    .line 760
    .line 761
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v6

    .line 771
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    new-instance v6, Ljava/lang/StringBuilder;

    .line 775
    .line 776
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v6

    .line 786
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    new-instance v6, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    const-string v7, "  mDozeScaleFactor="

    .line 792
    .line 793
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 797
    .line 798
    const-string v8, "  mInitialLightSensorRate="

    .line 799
    .line 800
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    move-result-object v6

    .line 804
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 805
    .line 806
    const-string v8, "  mNormalLightSensorRate="

    .line 807
    .line 808
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    move-result-object v6

    .line 812
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 813
    .line 814
    const-string v8, "  mLightSensorWarmUpTimeConfig="

    .line 815
    .line 816
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    move-result-object v6

    .line 820
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 821
    .line 822
    const-string v8, "  mBrighteningLightDebounceConfig="

    .line 823
    .line 824
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    move-result-object v6

    .line 828
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 829
    .line 830
    const-string v9, "  mDarkeningLightDebounceConfig="

    .line 831
    .line 832
    invoke-static {v6, v7, v8, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    move-result-object v6

    .line 836
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 837
    .line 838
    const-string v9, "  mBrighteningLightDebounceConfigIdle="

    .line 839
    .line 840
    invoke-static {v6, v7, v8, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    move-result-object v6

    .line 844
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfigIdle:J

    .line 845
    .line 846
    const-string v9, "  mDarkeningLightDebounceConfigIdle="

    .line 847
    .line 848
    invoke-static {v6, v7, v8, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    move-result-object v6

    .line 852
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfigIdle:J

    .line 853
    .line 854
    const-string v9, "  mResetAmbientLuxAfterWarmUpConfig="

    .line 855
    .line 856
    invoke-static {v6, v7, v8, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    move-result-object v6

    .line 860
    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 861
    .line 862
    const-string v8, "  mAmbientLightHorizonLong="

    .line 863
    .line 864
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    move-result-object v6

    .line 868
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    .line 869
    .line 870
    const-string v8, "  mAmbientLightHorizonShort="

    .line 871
    .line 872
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    move-result-object v6

    .line 876
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    .line 877
    .line 878
    const-string v8, "  mWeightingIntercept="

    .line 879
    .line 880
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    move-result-object v6

    .line 884
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 885
    .line 886
    const-string v8, "  SEC_FEATURE_SUPPORT_HBM="

    .line 887
    .line 888
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    move-result-object v6

    .line 892
    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 893
    .line 894
    const-string v8, "  HBM_LUX="

    .line 895
    .line 896
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    move-result-object v6

    .line 900
    sget v7, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 901
    .line 902
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v6

    .line 909
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 913
    .line 914
    .line 915
    const-string v6, "Automatic Brightness Controller State:"

    .line 916
    .line 917
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    new-instance v6, Ljava/lang/StringBuilder;

    .line 921
    .line 922
    const-string v7, "  mLightSensor="

    .line 923
    .line 924
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 928
    .line 929
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v6

    .line 936
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    new-instance v6, Ljava/lang/StringBuilder;

    .line 940
    .line 941
    const-string v7, "  mLightSensorCct="

    .line 942
    .line 943
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorCct:Landroid/hardware/Sensor;

    .line 947
    .line 948
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v6

    .line 955
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    new-instance v6, Ljava/lang/StringBuilder;

    .line 959
    .line 960
    const-string v7, "  mLightSensorEnabled="

    .line 961
    .line 962
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 966
    .line 967
    const-string v8, "  mLightSensorEnableTime="

    .line 968
    .line 969
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    move-result-object v6

    .line 973
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 974
    .line 975
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v7

    .line 979
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v6

    .line 986
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    new-instance v6, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    const-string v7, "  mCurrentLightSensorRate="

    .line 992
    .line 993
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 997
    .line 998
    const-string v8, "  mAmbientLux="

    .line 999
    .line 1000
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v6

    .line 1004
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1005
    .line 1006
    const-string v8, "  mAmbientLuxValid="

    .line 1007
    .line 1008
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v6

    .line 1012
    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1013
    .line 1014
    const-string v8, "  mInjectedLuxEvent="

    .line 1015
    .line 1016
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v6

    .line 1020
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    .line 1021
    .line 1022
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v6

    .line 1029
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    const-string v7, "  mPreThesholdLux="

    .line 1035
    .line 1036
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    .line 1040
    .line 1041
    const-string v8, "  mPreThesholdBrightness="

    .line 1042
    .line 1043
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v6

    .line 1047
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdBrightness:F

    .line 1048
    .line 1049
    const-string v8, "  mAmbientBrighteningThreshold="

    .line 1050
    .line 1051
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v6

    .line 1055
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 1056
    .line 1057
    const-string v8, "  mAmbientDarkeningThreshold="

    .line 1058
    .line 1059
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v6

    .line 1063
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 1064
    .line 1065
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v6

    .line 1072
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    const-string v6, "  mScreenBrighteningThreshold=0.0"

    .line 1076
    .line 1077
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    const-string v6, "  mScreenDarkeningThreshold=0.0"

    .line 1081
    .line 1082
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    const-string v7, "  mLastObservedLux="

    .line 1088
    .line 1089
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 1093
    .line 1094
    const-string v8, "  mLastObservedLuxTime="

    .line 1095
    .line 1096
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v6

    .line 1100
    iget-wide v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 1101
    .line 1102
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v7

    .line 1106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v6

    .line 1113
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    const-string v7, "  mRecentLightSamples="

    .line 1119
    .line 1120
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 1124
    .line 1125
    const-string v8, "  mAmbientLightRingBuffer="

    .line 1126
    .line 1127
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v6

    .line 1131
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 1132
    .line 1133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v6

    .line 1140
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    const-string v7, "  mScreenAutoBrightness="

    .line 1146
    .line 1147
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 1151
    .line 1152
    const-string v8, "  mDisplayPolicy="

    .line 1153
    .line 1154
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v6

    .line 1158
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 1159
    .line 1160
    invoke-static {v7}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v7

    .line 1164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v6

    .line 1171
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    const-string v6, "  mShortTermModel="

    .line 1175
    .line 1176
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    iget-object v6, v3, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    .line 1180
    .line 1181
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1185
    .line 1186
    .line 1187
    const-string v6, "  mPausedShortTermModel="

    .line 1188
    .line 1189
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    .line 1191
    .line 1192
    iget-object v6, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPausedShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    .line 1193
    .line 1194
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1201
    .line 1202
    .line 1203
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    const-string v7, "  mBrightnessAdjustmentSamplePending="

    .line 1206
    .line 1207
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1211
    .line 1212
    const-string v8, "  mBrightnessAdjustmentSampleOldLux="

    .line 1213
    .line 1214
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v6

    .line 1218
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1219
    .line 1220
    const-string v8, "  mBrightnessAdjustmentSampleOldBrightness="

    .line 1221
    .line 1222
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v6

    .line 1226
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    .line 1227
    .line 1228
    const-string v8, "  mForegroundAppPackageName="

    .line 1229
    .line 1230
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v6

    .line 1234
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 1235
    .line 1236
    const-string v8, "  mPendingForegroundAppPackageName="

    .line 1237
    .line 1238
    invoke-static {v0, v7, v8, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v6

    .line 1242
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 1243
    .line 1244
    const-string v8, "  mForegroundAppCategory="

    .line 1245
    .line 1246
    invoke-static {v0, v7, v8, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v6

    .line 1250
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 1251
    .line 1252
    const-string v8, "  mPendingForegroundAppCategory="

    .line 1253
    .line 1254
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v6

    .line 1258
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    .line 1259
    .line 1260
    const-string v8, "  Current mode="

    .line 1261
    .line 1262
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v6

    .line 1266
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1267
    .line 1268
    invoke-virtual {v7}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 1269
    .line 1270
    .line 1271
    move-result v7

    .line 1272
    invoke-static {v7}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v7

    .line 1276
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v6

    .line 1283
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    .line 1285
    .line 1286
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    const-string v7, "  mUseLightSensorBlockingPrevention="

    .line 1289
    .line 1290
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1291
    .line 1292
    .line 1293
    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    .line 1294
    .line 1295
    const-string v8, "  mProximity="

    .line 1296
    .line 1297
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v6

    .line 1301
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    .line 1302
    .line 1303
    invoke-static {v6, v7, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 1304
    .line 1305
    .line 1306
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    .line 1307
    .line 1308
    if-eqz v6, :cond_a

    .line 1309
    .line 1310
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    const-string v7, "  mIsRearLightSensor="

    .line 1313
    .line 1314
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    iget-boolean v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 1318
    .line 1319
    const-string v8, "  mLastAmbientLuxOfFrontLightSensor="

    .line 1320
    .line 1321
    invoke-static {v6, v7, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v6

    .line 1325
    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    .line 1326
    .line 1327
    invoke-static {v6, v7, v0}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 1328
    .line 1329
    .line 1330
    :cond_a
    move v6, v5

    .line 1331
    :goto_3
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 1332
    .line 1333
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 1334
    .line 1335
    .line 1336
    move-result v7

    .line 1337
    if-ge v6, v7, :cond_c

    .line 1338
    .line 1339
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1340
    .line 1341
    .line 1342
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1343
    .line 1344
    const-string v8, "  Mapper for mode "

    .line 1345
    .line 1346
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    iget-object v8, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 1350
    .line 1351
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1352
    .line 1353
    .line 1354
    move-result v8

    .line 1355
    invoke-static {v8}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v8

    .line 1359
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    .line 1362
    const-string v8, ":"

    .line 1363
    .line 1364
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v7

    .line 1371
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 1375
    .line 1376
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v7

    .line 1380
    check-cast v7, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1381
    .line 1382
    iget-object v8, v3, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1383
    .line 1384
    iget-object v8, v8, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1385
    .line 1386
    invoke-virtual {v8}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 1387
    .line 1388
    .line 1389
    move-result v9

    .line 1390
    if-eqz v9, :cond_b

    .line 1391
    .line 1392
    iget-object v8, v8, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 1393
    .line 1394
    iget v8, v8, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 1395
    .line 1396
    :cond_b
    invoke-virtual {v7, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 1397
    .line 1398
    .line 1399
    add-int/lit8 v6, v6, 0x1

    .line 1400
    .line 1401
    goto :goto_3

    .line 1402
    :cond_c
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1403
    .line 1404
    .line 1405
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    const-string v7, "  mAmbientBrightnessThresholds="

    .line 1408
    .line 1409
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1410
    .line 1411
    .line 1412
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    .line 1413
    .line 1414
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v6

    .line 1421
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    .line 1423
    .line 1424
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1425
    .line 1426
    const-string v7, "  mAmbientBrightnessThresholdsIdle="

    .line 1427
    .line 1428
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsIdle:Lcom/android/server/display/config/HysteresisLevels;

    .line 1432
    .line 1433
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v6

    .line 1440
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    .line 1444
    .line 1445
    if-eqz v6, :cond_d

    .line 1446
    .line 1447
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    const-string/jumbo v7, "mAmbientBrightnessThresholdsTouchHigh:"

    .line 1450
    .line 1451
    .line 1452
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    iget-object v7, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/HysteresisLevels;

    .line 1456
    .line 1457
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v6

    .line 1464
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    const-string/jumbo v7, "mAmbientBrightnessThresholdsTouchLow:"

    .line 1470
    .line 1471
    .line 1472
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/HysteresisLevels;

    .line 1476
    .line 1477
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v3

    .line 1484
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    :cond_d
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1488
    .line 1489
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1490
    .line 1491
    .line 1492
    move-result v3

    .line 1493
    if-ge v3, v4, :cond_e

    .line 1494
    .line 1495
    const-string v3, "No Automatic Brightness Adjustments"

    .line 1496
    .line 1497
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    .line 1499
    .line 1500
    goto :goto_5

    .line 1501
    :cond_e
    const-string v6, "Automatic Brightness Adjustments Last "

    .line 1502
    .line 1503
    const-string v7, " Events: "

    .line 1504
    .line 1505
    invoke-static {v3, v0, v6, v7}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    .line 1507
    .line 1508
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1509
    .line 1510
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v3

    .line 1514
    check-cast v3, [Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1515
    .line 1516
    move v6, v5

    .line 1517
    :goto_4
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1518
    .line 1519
    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1520
    .line 1521
    .line 1522
    move-result v7

    .line 1523
    if-ge v6, v7, :cond_f

    .line 1524
    .line 1525
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1526
    .line 1527
    const-string v8, "  "

    .line 1528
    .line 1529
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1530
    .line 1531
    .line 1532
    aget-object v8, v3, v6

    .line 1533
    .line 1534
    invoke-virtual {v8, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v8

    .line 1538
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v7

    .line 1545
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    .line 1547
    .line 1548
    add-int/lit8 v6, v6, 0x1

    .line 1549
    .line 1550
    goto :goto_4

    .line 1551
    :cond_f
    :goto_5
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1552
    .line 1553
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1554
    .line 1555
    .line 1556
    move-result v3

    .line 1557
    if-ge v3, v4, :cond_10

    .line 1558
    .line 1559
    const-string v3, "No Reduce Bright Colors Adjustments"

    .line 1560
    .line 1561
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    .line 1563
    .line 1564
    goto :goto_7

    .line 1565
    :cond_10
    const-string v6, "Reduce Bright Colors Adjustments Last "

    .line 1566
    .line 1567
    const-string v7, " Events: "

    .line 1568
    .line 1569
    invoke-static {v3, v0, v6, v7}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    .line 1571
    .line 1572
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1573
    .line 1574
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v3

    .line 1578
    check-cast v3, [Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1579
    .line 1580
    move v6, v5

    .line 1581
    :goto_6
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1582
    .line 1583
    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1584
    .line 1585
    .line 1586
    move-result v7

    .line 1587
    if-ge v6, v7, :cond_11

    .line 1588
    .line 1589
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    const-string v8, "  "

    .line 1592
    .line 1593
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    aget-object v8, v3, v6

    .line 1597
    .line 1598
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    .line 1601
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v7

    .line 1605
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1606
    .line 1607
    .line 1608
    add-int/lit8 v6, v6, 0x1

    .line 1609
    .line 1610
    goto :goto_6

    .line 1611
    :cond_11
    :goto_7
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 1612
    .line 1613
    if-eqz v3, :cond_12

    .line 1614
    .line 1615
    invoke-virtual {v3, v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 1616
    .line 1617
    .line 1618
    :cond_12
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1619
    .line 1620
    const-wide/16 v6, 0x3e8

    .line 1621
    .line 1622
    if-eqz v3, :cond_15

    .line 1623
    .line 1624
    const-string v8, "BrightnessRangeController:"

    .line 1625
    .line 1626
    const-string v9, "  mUseNormalBrightnessController="

    .line 1627
    .line 1628
    invoke-static {v0, v8, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v8

    .line 1632
    iget-boolean v9, v3, Lcom/android/server/display/BrightnessRangeController;->mUseNbmController:Z

    .line 1633
    .line 1634
    const-string v10, "  mUseHdrClamper="

    .line 1635
    .line 1636
    invoke-static {v8, v9, v0, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v8

    .line 1640
    iget-boolean v9, v3, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    .line 1641
    .line 1642
    invoke-static {v8, v9, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1643
    .line 1644
    .line 1645
    iget-object v8, v3, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1646
    .line 1647
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1648
    .line 1649
    .line 1650
    new-instance v9, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;

    .line 1651
    .line 1652
    const/4 v10, 0x1

    .line 1653
    invoke-direct {v9, v8, v0, v10}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Object;I)V

    .line 1654
    .line 1655
    .line 1656
    iget-object v8, v8, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 1657
    .line 1658
    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1659
    .line 1660
    .line 1661
    iget-object v8, v3, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 1662
    .line 1663
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1664
    .line 1665
    .line 1666
    const-string v9, "NormalBrightnessModeController:"

    .line 1667
    .line 1668
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    const-string v10, "  mAutoBrightnessEnabled="

    .line 1674
    .line 1675
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1676
    .line 1677
    .line 1678
    iget-boolean v11, v8, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    .line 1679
    .line 1680
    const-string v12, "  mAmbientLux="

    .line 1681
    .line 1682
    invoke-static {v9, v11, v0, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v9

    .line 1686
    iget v11, v8, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    .line 1687
    .line 1688
    const-string v13, "  mMaxBrightness="

    .line 1689
    .line 1690
    invoke-static {v9, v11, v0, v13}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v9

    .line 1694
    iget v11, v8, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    .line 1695
    .line 1696
    const-string v14, "  mMaxBrightnessLimits="

    .line 1697
    .line 1698
    invoke-static {v9, v11, v0, v14}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v9

    .line 1702
    iget-object v8, v8, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 1703
    .line 1704
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v8

    .line 1711
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    .line 1713
    .line 1714
    iget-object v3, v3, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 1715
    .line 1716
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1717
    .line 1718
    .line 1719
    const-string v8, "HdrClamper:"

    .line 1720
    .line 1721
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    .line 1723
    .line 1724
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1725
    .line 1726
    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1727
    .line 1728
    .line 1729
    iget v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 1730
    .line 1731
    const-string v11, "  mDesiredMaxBrightness="

    .line 1732
    .line 1733
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v8

    .line 1737
    iget v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 1738
    .line 1739
    const-string v11, "  mTransitionRate="

    .line 1740
    .line 1741
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v8

    .line 1745
    iget v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 1746
    .line 1747
    const-string v11, "  mDesiredTransitionRate="

    .line 1748
    .line 1749
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v8

    .line 1753
    iget v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 1754
    .line 1755
    const-string v11, "  mHdrVisible="

    .line 1756
    .line 1757
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v8

    .line 1761
    iget-boolean v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    .line 1762
    .line 1763
    const-string v11, "  mHdrListener.mHdrMinPixels="

    .line 1764
    .line 1765
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v8

    .line 1769
    iget-object v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    .line 1770
    .line 1771
    iget v9, v9, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    .line 1772
    .line 1773
    const-string v11, "  mHdrBrightnessData="

    .line 1774
    .line 1775
    invoke-static {v8, v9, v0, v11}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v8

    .line 1779
    iget-object v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 1780
    .line 1781
    if-nez v9, :cond_13

    .line 1782
    .line 1783
    const-string/jumbo v9, "null"

    .line 1784
    .line 1785
    .line 1786
    goto :goto_8

    .line 1787
    :cond_13
    invoke-virtual {v9}, Lcom/android/server/display/config/HdrBrightnessData;->toString()Ljava/lang/String;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v9

    .line 1791
    :goto_8
    const-string v11, "  mHdrListener registered="

    .line 1792
    .line 1793
    invoke-static {v0, v9, v11, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v8

    .line 1797
    iget-object v9, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 1798
    .line 1799
    if-eqz v9, :cond_14

    .line 1800
    .line 1801
    goto :goto_9

    .line 1802
    :cond_14
    move v4, v5

    .line 1803
    :goto_9
    invoke-static {v8, v4, v0, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v4

    .line 1807
    iget v5, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    .line 1808
    .line 1809
    invoke-static {v4, v5, v0, v10}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v4

    .line 1813
    iget-boolean v3, v3, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    .line 1814
    .line 1815
    invoke-static {v4, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1816
    .line 1817
    .line 1818
    :cond_15
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 1819
    .line 1820
    if-eqz v3, :cond_16

    .line 1821
    .line 1822
    new-instance v4, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;

    .line 1823
    .line 1824
    const/4 v5, 0x0

    .line 1825
    invoke-direct {v4, v5, v3, v0}, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1826
    .line 1827
    .line 1828
    iget-object v3, v3, Lcom/android/server/display/BrightnessThrottler;->mHandler:Landroid/os/Handler;

    .line 1829
    .line 1830
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1831
    .line 1832
    .line 1833
    :cond_16
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1834
    .line 1835
    .line 1836
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1837
    .line 1838
    .line 1839
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 1840
    .line 1841
    if-eqz v3, :cond_17

    .line 1842
    .line 1843
    const-string v4, "WakelockController State:"

    .line 1844
    .line 1845
    const-string v5, "  mDisplayId="

    .line 1846
    .line 1847
    invoke-static {v0, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v4

    .line 1851
    iget v5, v3, Lcom/android/server/display/WakelockController;->mDisplayId:I

    .line 1852
    .line 1853
    const-string v6, "  mUnfinishedBusiness="

    .line 1854
    .line 1855
    invoke-static {v4, v5, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v4

    .line 1859
    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->hasUnfinishedBusiness()Z

    .line 1860
    .line 1861
    .line 1862
    move-result v5

    .line 1863
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1864
    .line 1865
    .line 1866
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v4

    .line 1870
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1871
    .line 1872
    .line 1873
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1874
    .line 1875
    const-string v5, "  mOnStateChangePending="

    .line 1876
    .line 1877
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isOnStateChangedPending()Z

    .line 1881
    .line 1882
    .line 1883
    move-result v5

    .line 1884
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v4

    .line 1891
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    .line 1893
    .line 1894
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1895
    .line 1896
    const-string v5, "  mOnProximityPositiveMessages="

    .line 1897
    .line 1898
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1899
    .line 1900
    .line 1901
    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isProximityPositiveAcquired()Z

    .line 1902
    .line 1903
    .line 1904
    move-result v5

    .line 1905
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v4

    .line 1912
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    .line 1914
    .line 1915
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1916
    .line 1917
    const-string v5, "  mOnProximityNegativeMessages="

    .line 1918
    .line 1919
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isProximityNegativeAcquired()Z

    .line 1923
    .line 1924
    .line 1925
    move-result v5

    .line 1926
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1927
    .line 1928
    .line 1929
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v4

    .line 1933
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    .line 1935
    .line 1936
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1937
    .line 1938
    const-string v5, "  mIsRefreshRateRequested="

    .line 1939
    .line 1940
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1941
    .line 1942
    .line 1943
    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isRefreshRateRequested()Z

    .line 1944
    .line 1945
    .line 1946
    move-result v5

    .line 1947
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1948
    .line 1949
    .line 1950
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1951
    .line 1952
    .line 1953
    move-result-object v4

    .line 1954
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    .line 1956
    .line 1957
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1958
    .line 1959
    const-string v5, "  mIsEarlyWakeUpRequested="

    .line 1960
    .line 1961
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1962
    .line 1963
    .line 1964
    invoke-virtual {v3}, Lcom/android/server/display/WakelockController;->isEarlyWakeupRequested()Z

    .line 1965
    .line 1966
    .line 1967
    move-result v3

    .line 1968
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v3

    .line 1975
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    .line 1977
    .line 1978
    :cond_17
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1979
    .line 1980
    .line 1981
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1982
    .line 1983
    if-eqz v3, :cond_19

    .line 1984
    .line 1985
    const-string v4, "  Last selected DisplayBrightnessStrategy= "

    .line 1986
    .line 1987
    const-string v5, "  mLastUserSetScreenBrightness="

    .line 1988
    .line 1989
    const-string v6, "  mCurrentScreenBrightness="

    .line 1990
    .line 1991
    const-string v7, "  mPendingScreenBrightness="

    .line 1992
    .line 1993
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1994
    .line 1995
    .line 1996
    const-string v8, "DisplayBrightnessController:"

    .line 1997
    .line 1998
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1999
    .line 2000
    .line 2001
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2002
    .line 2003
    const-string v9, "  mDisplayId=: "

    .line 2004
    .line 2005
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2006
    .line 2007
    .line 2008
    iget v9, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    .line 2009
    .line 2010
    const-string v10, "  mScreenBrightnessDefault="

    .line 2011
    .line 2012
    invoke-static {v8, v9, v0, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v8

    .line 2016
    iget v9, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    .line 2017
    .line 2018
    const-string v10, "  mPersistBrightnessNitsForDefaultDisplay="

    .line 2019
    .line 2020
    invoke-static {v8, v9, v0, v10}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v8

    .line 2024
    iget-boolean v9, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    .line 2025
    .line 2026
    invoke-static {v8, v9, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 2027
    .line 2028
    .line 2029
    iget-object v8, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 2030
    .line 2031
    monitor-enter v8

    .line 2032
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2033
    .line 2034
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2035
    .line 2036
    .line 2037
    iget v7, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 2038
    .line 2039
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2040
    .line 2041
    .line 2042
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v7

    .line 2046
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    .line 2048
    .line 2049
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2050
    .line 2051
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2052
    .line 2053
    .line 2054
    iget v6, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 2055
    .line 2056
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2057
    .line 2058
    .line 2059
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v6

    .line 2063
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    .line 2065
    .line 2066
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2067
    .line 2068
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2069
    .line 2070
    .line 2071
    iget v5, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 2072
    .line 2073
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2074
    .line 2075
    .line 2076
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2077
    .line 2078
    .line 2079
    move-result-object v5

    .line 2080
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    .line 2082
    .line 2083
    iget-object v5, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 2084
    .line 2085
    if-eqz v5, :cond_18

    .line 2086
    .line 2087
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2088
    .line 2089
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2090
    .line 2091
    .line 2092
    iget-object v4, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 2093
    .line 2094
    invoke-interface {v4}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v4

    .line 2098
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    .line 2100
    .line 2101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v4

    .line 2105
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    .line 2107
    .line 2108
    goto :goto_a

    .line 2109
    :catchall_1
    move-exception v0

    .line 2110
    goto :goto_b

    .line 2111
    :cond_18
    :goto_a
    new-instance v4, Landroid/util/IndentingPrintWriter;

    .line 2112
    .line 2113
    const-string v5, " "

    .line 2114
    .line 2115
    invoke-direct {v4, v0, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2116
    .line 2117
    .line 2118
    iget-object v3, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 2119
    .line 2120
    invoke-virtual {v3, v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->dump(Ljava/io/PrintWriter;)V

    .line 2121
    .line 2122
    .line 2123
    monitor-exit v8

    .line 2124
    goto :goto_c

    .line 2125
    :goto_b
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2126
    throw v0

    .line 2127
    :cond_19
    :goto_c
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2128
    .line 2129
    .line 2130
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 2131
    .line 2132
    if-eqz v3, :cond_20

    .line 2133
    .line 2134
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2135
    .line 2136
    .line 2137
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2138
    .line 2139
    .line 2140
    const-string v4, "DisplayStateController:"

    .line 2141
    .line 2142
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2143
    .line 2144
    .line 2145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2146
    .line 2147
    const-string v5, "  mPerformScreenOffTransition:"

    .line 2148
    .line 2149
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2150
    .line 2151
    .line 2152
    iget-boolean v5, v3, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 2153
    .line 2154
    const-string v6, "  mDozeStateOverride="

    .line 2155
    .line 2156
    invoke-static {v4, v5, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v4

    .line 2160
    iget v5, v3, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 2161
    .line 2162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2163
    .line 2164
    .line 2165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v4

    .line 2169
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    .line 2171
    .line 2172
    new-instance v4, Landroid/util/IndentingPrintWriter;

    .line 2173
    .line 2174
    const-string v5, " "

    .line 2175
    .line 2176
    invoke-direct {v4, v0, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2177
    .line 2178
    .line 2179
    iget-object v3, v3, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 2180
    .line 2181
    if-eqz v3, :cond_20

    .line 2182
    .line 2183
    const-string v5, "  mPendingWaitForNegativeProximityLocked="

    .line 2184
    .line 2185
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 2186
    .line 2187
    .line 2188
    const-string v6, "DisplayPowerProximityStateController:"

    .line 2189
    .line 2190
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    .line 2192
    .line 2193
    iget-object v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    .line 2194
    .line 2195
    monitor-enter v6

    .line 2196
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2197
    .line 2198
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2199
    .line 2200
    .line 2201
    iget-boolean v5, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 2202
    .line 2203
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2204
    .line 2205
    .line 2206
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v5

    .line 2210
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    .line 2212
    .line 2213
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2214
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2215
    .line 2216
    const-string v6, "  mDisplayId="

    .line 2217
    .line 2218
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2219
    .line 2220
    .line 2221
    iget v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    .line 2222
    .line 2223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2224
    .line 2225
    .line 2226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v5

    .line 2230
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    .line 2232
    .line 2233
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2234
    .line 2235
    const-string v6, "  mWaitingForNegativeProximity="

    .line 2236
    .line 2237
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2238
    .line 2239
    .line 2240
    iget-boolean v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 2241
    .line 2242
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2243
    .line 2244
    .line 2245
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v5

    .line 2249
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2250
    .line 2251
    .line 2252
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2253
    .line 2254
    const-string v6, "  mIgnoreProximityUntilChanged="

    .line 2255
    .line 2256
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2257
    .line 2258
    .line 2259
    iget-boolean v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 2260
    .line 2261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2262
    .line 2263
    .line 2264
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v5

    .line 2268
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2269
    .line 2270
    .line 2271
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2272
    .line 2273
    const-string v6, "  mProximitySensor="

    .line 2274
    .line 2275
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2276
    .line 2277
    .line 2278
    iget-object v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 2279
    .line 2280
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2281
    .line 2282
    .line 2283
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2284
    .line 2285
    .line 2286
    move-result-object v5

    .line 2287
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    .line 2289
    .line 2290
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2291
    .line 2292
    const-string v6, "  mProximitySensorEnabled="

    .line 2293
    .line 2294
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2295
    .line 2296
    .line 2297
    iget-boolean v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 2298
    .line 2299
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2300
    .line 2301
    .line 2302
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2303
    .line 2304
    .line 2305
    move-result-object v5

    .line 2306
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    .line 2308
    .line 2309
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2310
    .line 2311
    const-string v6, "  mProximityThreshold="

    .line 2312
    .line 2313
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2314
    .line 2315
    .line 2316
    iget v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    .line 2317
    .line 2318
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2319
    .line 2320
    .line 2321
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2322
    .line 2323
    .line 2324
    move-result-object v5

    .line 2325
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2326
    .line 2327
    .line 2328
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2329
    .line 2330
    const-string v6, "  mProximity="

    .line 2331
    .line 2332
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2333
    .line 2334
    .line 2335
    iget v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 2336
    .line 2337
    const/4 v7, 0x1

    .line 2338
    const/4 v8, -0x1

    .line 2339
    if-eq v6, v8, :cond_1c

    .line 2340
    .line 2341
    if-eqz v6, :cond_1b

    .line 2342
    .line 2343
    if-eq v6, v7, :cond_1a

    .line 2344
    .line 2345
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v6

    .line 2349
    goto :goto_d

    .line 2350
    :cond_1a
    const-string v6, "Positive"

    .line 2351
    .line 2352
    goto :goto_d

    .line 2353
    :cond_1b
    const-string v6, "Negative"

    .line 2354
    .line 2355
    goto :goto_d

    .line 2356
    :cond_1c
    const-string v6, "Unknown"

    .line 2357
    .line 2358
    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2359
    .line 2360
    .line 2361
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2362
    .line 2363
    .line 2364
    move-result-object v5

    .line 2365
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    .line 2367
    .line 2368
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2369
    .line 2370
    const-string v6, "  mPendingProximity="

    .line 2371
    .line 2372
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2373
    .line 2374
    .line 2375
    iget v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 2376
    .line 2377
    if-eq v6, v8, :cond_1f

    .line 2378
    .line 2379
    if-eqz v6, :cond_1e

    .line 2380
    .line 2381
    if-eq v6, v7, :cond_1d

    .line 2382
    .line 2383
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2384
    .line 2385
    .line 2386
    move-result-object v6

    .line 2387
    goto :goto_e

    .line 2388
    :cond_1d
    const-string v6, "Positive"

    .line 2389
    .line 2390
    goto :goto_e

    .line 2391
    :cond_1e
    const-string v6, "Negative"

    .line 2392
    .line 2393
    goto :goto_e

    .line 2394
    :cond_1f
    const-string v6, "Unknown"

    .line 2395
    .line 2396
    :goto_e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
    .line 2398
    .line 2399
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v5

    .line 2403
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2404
    .line 2405
    .line 2406
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2407
    .line 2408
    const-string v6, "  mPendingProximityDebounceTime="

    .line 2409
    .line 2410
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2411
    .line 2412
    .line 2413
    iget-wide v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 2414
    .line 2415
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v6

    .line 2419
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    .line 2421
    .line 2422
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2423
    .line 2424
    .line 2425
    move-result-object v5

    .line 2426
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2427
    .line 2428
    .line 2429
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2430
    .line 2431
    const-string v6, "  mScreenOffBecauseOfProximity="

    .line 2432
    .line 2433
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2434
    .line 2435
    .line 2436
    iget-boolean v6, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 2437
    .line 2438
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2439
    .line 2440
    .line 2441
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2442
    .line 2443
    .line 2444
    move-result-object v5

    .line 2445
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2446
    .line 2447
    .line 2448
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2449
    .line 2450
    const-string v6, "  mSkipRampBecauseOfProximityChangeToNegative="

    .line 2451
    .line 2452
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2453
    .line 2454
    .line 2455
    iget-boolean v3, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 2456
    .line 2457
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2458
    .line 2459
    .line 2460
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2461
    .line 2462
    .line 2463
    move-result-object v3

    .line 2464
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2465
    .line 2466
    .line 2467
    goto :goto_f

    .line 2468
    :catchall_2
    move-exception v0

    .line 2469
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2470
    throw v0

    .line 2471
    :cond_20
    :goto_f
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 2472
    .line 2473
    if-eqz v3, :cond_21

    .line 2474
    .line 2475
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 2476
    .line 2477
    if-eqz v3, :cond_21

    .line 2478
    .line 2479
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2480
    .line 2481
    .line 2482
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 2483
    .line 2484
    invoke-virtual {v3, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->dump(Ljava/io/PrintWriter;)V

    .line 2485
    .line 2486
    .line 2487
    :cond_21
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 2488
    .line 2489
    if-eqz v3, :cond_22

    .line 2490
    .line 2491
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2492
    .line 2493
    const-string v4, "  mDualScreenPolicy="

    .line 2494
    .line 2495
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2496
    .line 2497
    .line 2498
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 2499
    .line 2500
    invoke-static {v3, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 2501
    .line 2502
    .line 2503
    :cond_22
    const-string v3, "  SEC_FEATURE_EARLY_WAKEUP=true"

    .line 2504
    .line 2505
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2506
    .line 2507
    .line 2508
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    .line 2509
    .line 2510
    if-eqz v3, :cond_23

    .line 2511
    .line 2512
    const-string v4, "    mEarlyDisplayReadyLocked="

    .line 2513
    .line 2514
    const-string v5, "    mEarlyLightSensorReadyLocked="

    .line 2515
    .line 2516
    const-string v6, "  mHoldingSuspendBlocker="

    .line 2517
    .line 2518
    const-string v7, "  now="

    .line 2519
    .line 2520
    const-string v8, "  mLastEnableRequestedTime="

    .line 2521
    .line 2522
    const-string v9, "  mEarlyDisplayEnabled="

    .line 2523
    .line 2524
    const-string v10, "  mEarlyLightSensorEnabled="

    .line 2525
    .line 2526
    const-string v11, "  mAppliedLocked="

    .line 2527
    .line 2528
    iget-object v12, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    .line 2529
    .line 2530
    monitor-enter v12

    .line 2531
    :try_start_5
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2532
    .line 2533
    .line 2534
    const-string v13, "[ew] EarlyWakeUpManager:"

    .line 2535
    .line 2536
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2537
    .line 2538
    .line 2539
    new-instance v13, Ljava/lang/StringBuilder;

    .line 2540
    .line 2541
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2542
    .line 2543
    .line 2544
    iget-boolean v11, v3, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    .line 2545
    .line 2546
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2547
    .line 2548
    .line 2549
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2550
    .line 2551
    .line 2552
    move-result-object v11

    .line 2553
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    .line 2555
    .line 2556
    new-instance v11, Ljava/lang/StringBuilder;

    .line 2557
    .line 2558
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2559
    .line 2560
    .line 2561
    iget-boolean v10, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    .line 2562
    .line 2563
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2564
    .line 2565
    .line 2566
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2567
    .line 2568
    .line 2569
    move-result-object v10

    .line 2570
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    .line 2572
    .line 2573
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2574
    .line 2575
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2576
    .line 2577
    .line 2578
    iget-boolean v9, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    .line 2579
    .line 2580
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2581
    .line 2582
    .line 2583
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2584
    .line 2585
    .line 2586
    move-result-object v9

    .line 2587
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2588
    .line 2589
    .line 2590
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2591
    .line 2592
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2593
    .line 2594
    .line 2595
    iget-wide v10, v3, Lcom/android/server/display/EarlyWakeUpManager;->mLastEnableRequestedTime:J

    .line 2596
    .line 2597
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2598
    .line 2599
    .line 2600
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2601
    .line 2602
    .line 2603
    move-result-object v8

    .line 2604
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    .line 2606
    .line 2607
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2608
    .line 2609
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2610
    .line 2611
    .line 2612
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2613
    .line 2614
    .line 2615
    move-result-wide v9

    .line 2616
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2617
    .line 2618
    .line 2619
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2620
    .line 2621
    .line 2622
    move-result-object v7

    .line 2623
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    .line 2625
    .line 2626
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2627
    .line 2628
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2629
    .line 2630
    .line 2631
    iget-boolean v6, v3, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    .line 2632
    .line 2633
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2634
    .line 2635
    .line 2636
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2637
    .line 2638
    .line 2639
    move-result-object v6

    .line 2640
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2641
    .line 2642
    .line 2643
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2644
    .line 2645
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2646
    .line 2647
    .line 2648
    iget-boolean v5, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 2649
    .line 2650
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2651
    .line 2652
    .line 2653
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2654
    .line 2655
    .line 2656
    move-result-object v5

    .line 2657
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2658
    .line 2659
    .line 2660
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2661
    .line 2662
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2663
    .line 2664
    .line 2665
    iget-boolean v3, v3, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 2666
    .line 2667
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2668
    .line 2669
    .line 2670
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2671
    .line 2672
    .line 2673
    move-result-object v3

    .line 2674
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2675
    .line 2676
    .line 2677
    monitor-exit v12

    .line 2678
    goto :goto_10

    .line 2679
    :catchall_3
    move-exception v0

    .line 2680
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2681
    throw v0

    .line 2682
    :cond_23
    :goto_10
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2683
    .line 2684
    .line 2685
    const-string v3, "  USE_LONG_RAMP_RATE_FOR_NON_HBM=true"

    .line 2686
    .line 2687
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2688
    .line 2689
    .line 2690
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2691
    .line 2692
    .line 2693
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 2694
    .line 2695
    if-eqz v1, :cond_24

    .line 2696
    .line 2697
    const-string v3, "BrightnessClamperController:"

    .line 2698
    .line 2699
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2700
    .line 2701
    .line 2702
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2703
    .line 2704
    const-string v4, "  mBrightnessCap: "

    .line 2705
    .line 2706
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2707
    .line 2708
    .line 2709
    iget v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mBrightnessCap:F

    .line 2710
    .line 2711
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2712
    .line 2713
    .line 2714
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2715
    .line 2716
    .line 2717
    move-result-object v3

    .line 2718
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2719
    .line 2720
    .line 2721
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2722
    .line 2723
    const-string v4, "  mClamperType: "

    .line 2724
    .line 2725
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2726
    .line 2727
    .line 2728
    iget-object v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperType:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 2729
    .line 2730
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2731
    .line 2732
    .line 2733
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v3

    .line 2737
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2738
    .line 2739
    .line 2740
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2741
    .line 2742
    const-string v4, "  mClamperApplied: "

    .line 2743
    .line 2744
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2745
    .line 2746
    .line 2747
    iget-boolean v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperApplied:Z

    .line 2748
    .line 2749
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2750
    .line 2751
    .line 2752
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v3

    .line 2756
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2757
    .line 2758
    .line 2759
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2760
    .line 2761
    const-string v4, "  mLightSensor="

    .line 2762
    .line 2763
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2764
    .line 2765
    .line 2766
    iget-object v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensor:Landroid/hardware/Sensor;

    .line 2767
    .line 2768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2769
    .line 2770
    .line 2771
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2772
    .line 2773
    .line 2774
    move-result-object v3

    .line 2775
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2776
    .line 2777
    .line 2778
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2779
    .line 2780
    const-string v4, "  mRegisteredLightSensor="

    .line 2781
    .line 2782
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2783
    .line 2784
    .line 2785
    iget-object v4, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 2786
    .line 2787
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2788
    .line 2789
    .line 2790
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v3

    .line 2794
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2795
    .line 2796
    .line 2797
    new-instance v3, Landroid/util/IndentingPrintWriter;

    .line 2798
    .line 2799
    const-string v4, "    "

    .line 2800
    .line 2801
    invoke-direct {v3, v2, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2802
    .line 2803
    .line 2804
    iget-object v2, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClampers:Ljava/util/List;

    .line 2805
    .line 2806
    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    .line 2807
    .line 2808
    const/4 v5, 0x0

    .line 2809
    invoke-direct {v4, v5, v3}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 2810
    .line 2811
    .line 2812
    check-cast v2, Ljava/util/ArrayList;

    .line 2813
    .line 2814
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2815
    .line 2816
    .line 2817
    iget-object v1, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 2818
    .line 2819
    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    .line 2820
    .line 2821
    const/4 v4, 0x1

    .line 2822
    invoke-direct {v2, v4, v3}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 2823
    .line 2824
    .line 2825
    check-cast v1, Ljava/util/ArrayList;

    .line 2826
    .line 2827
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2828
    .line 2829
    .line 2830
    :cond_24
    const-string v1, "  SEC_FEATURE_BRIGHTNESS_CONTROL_BY_EXTRA_DIM=false"

    .line 2831
    .line 2832
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    .line 2834
    .line 2835
    return-void

    .line 2836
    nop

    .line 2837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
