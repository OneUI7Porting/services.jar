.class public final Lcom/android/server/am/KillPolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/KillPolicyManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string/jumbo v2, "persvc"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "pers"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v4, "sys"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v5, "native"

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    const-string v7, "ActivityManager"

    .line 19
    .line 20
    const/4 v8, 0x2

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x1

    .line 23
    iget v11, v0, Lcom/android/server/am/KillPolicyManager$1;->$r8$classId:I

    .line 24
    .line 25
    packed-switch v11, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string/jumbo v3, "com.android.server.am.BROADCAST_SET_KPM_POLICY"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    const-string v0, "BROADCAST_SET_KPM_POLICY_RECEIVED"

    .line 42
    .line 43
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    sput-boolean v10, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_0
    const-string/jumbo v2, "com.android.server.am.BROADCAST_SET_KPM_DEBUG"

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    const-string v0, "BROADCAST_SET_KPM_DEBUG_RECEIVED"

    .line 64
    .line 65
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    sput-boolean v10, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_1
    const-string/jumbo v2, "com.android.server.am.BROADCAST_SET_KPM_ONOFF"

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    const-string v1, "BROADCAST_SET_KPM_ONOFF_RECEIVED"

    .line 86
    .line 87
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    .line 91
    .line 92
    const-string/jumbo v2, "persist.sys.kpm_onoff"

    .line 93
    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 98
    .line 99
    const-string v1, "Normal"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->forceChangeState(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sput-boolean v9, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    .line 105
    .line 106
    const-string/jumbo v0, "false"

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :cond_2
    sput-boolean v10, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    .line 115
    .line 116
    const-string/jumbo v0, "true"

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :cond_3
    const-string/jumbo v2, "com.android.server.am.BROADCAST_SET_KPM_STATE"

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    const-string v2, "BROADCAST_SET_KPM_STATE_RECEIVED"

    .line 138
    .line 139
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    const-string v2, "KpmState"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    const-string v2, "KPM CHANGE STATE: "

    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->forceChangeState(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    const-string/jumbo v0, "getExtras is null"

    .line 166
    .line 167
    .line 168
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    const-string/jumbo v0, "com.sec.server.am.BROADCAST_SET_PMM_DMABUF_LEAK_DETECTOR_SOURCE"

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_8

    .line 184
    .line 185
    const-string v0, "BROADCAST_PMM_DMABUF_LEAK_DETECTOR_SOURCE_RECEIVED"

    .line 186
    .line 187
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    const-string v0, "SOURCE"

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    sget-object v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    .line 197
    .line 198
    if-eqz v0, :cond_8

    .line 199
    .line 200
    iget-object v1, v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 201
    .line 202
    if-eqz v1, :cond_8

    .line 203
    .line 204
    sget-object v2, Lcom/android/server/am/pmm/DmaBufLeakDetector;->ISSUE_TRACKER_INTENT_LISTENERS_LIST:[Ljava/lang/String;

    .line 205
    .line 206
    :goto_0
    const-string v3, "DmaBufLeakDetector"

    .line 207
    .line 208
    if-ge v9, v8, :cond_7

    .line 209
    .line 210
    aget-object v4, v2, v9

    .line 211
    .line 212
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_6

    .line 217
    .line 218
    const-string v0, "Listener app message received : "

    .line 219
    .line 220
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iput-boolean v10, v1, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_6
    add-int/2addr v9, v10

    .line 231
    goto :goto_0

    .line 232
    :cond_7
    const-string v0, "Listener app message received but not found"

    .line 233
    .line 234
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :cond_8
    :goto_1
    return-void

    .line 238
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    const-string v11, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 246
    .line 247
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_9

    .line 252
    .line 253
    goto/16 :goto_12

    .line 254
    .line 255
    :cond_9
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 256
    .line 257
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    const-string/jumbo v11, "power"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    check-cast v1, Landroid/os/PowerManager;

    .line 267
    .line 268
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 273
    .line 274
    iget-object v11, v11, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 275
    .line 276
    invoke-static {v11}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v13, "ChimeraTriggerManager::onReceive() -  deviceInDoze: "

    .line 286
    .line 287
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v13, ", chimeraTriggerRequired: "

    .line 294
    .line 295
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-boolean v13, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    .line 299
    .line 300
    invoke-static {v7, v12, v13}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 301
    .line 302
    .line 303
    if-eqz v1, :cond_b

    .line 304
    .line 305
    iget-boolean v12, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    .line 306
    .line 307
    if-eqz v12, :cond_b

    .line 308
    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 310
    .line 311
    .line 312
    move-result-wide v12

    .line 313
    iget-wide v14, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J

    .line 314
    .line 315
    sub-long/2addr v12, v14

    .line 316
    new-instance v14, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v15, "ChimeraTriggerManager::onReceive() - need to trigger, elapsedTime: "

    .line 319
    .line 320
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v14

    .line 330
    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    sget-wide v14, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->TRIGGER_MIN_INTERVAL:J

    .line 334
    .line 335
    cmp-long v12, v12, v14

    .line 336
    .line 337
    if-gez v12, :cond_a

    .line 338
    .line 339
    const-string v11, "ChimeraTriggerManager::onReceive() - Not enough time has passed since the previous trigger."

    .line 340
    .line 341
    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_a
    const-string v12, "ChimeraTriggerManager::onReceive() - PMM_CRITICAL_TRIGGER_ACTION has been fired."

    .line 346
    .line 347
    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    new-instance v7, Landroid/content/Intent;

    .line 351
    .line 352
    const-string/jumbo v12, "com.samsung.PMM_CRITICAL_TRIGGER"

    .line 353
    .line 354
    .line 355
    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v12, "android"

    .line 359
    .line 360
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    .line 362
    .line 363
    iget-object v12, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mContext:Landroid/content/Context;

    .line 364
    .line 365
    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 366
    .line 367
    const-string/jumbo v14, "com.samsung.android.permission.BROADCAST_PMM_CRITICAL_TRIGGER"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v12, v7, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 374
    .line 375
    .line 376
    move-result-wide v12

    .line 377
    iput-wide v12, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J

    .line 378
    .line 379
    const/high16 v7, -0x40800000    # -1.0f

    .line 380
    .line 381
    iput v7, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F

    .line 382
    .line 383
    :goto_2
    sput-boolean v10, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    .line 384
    .line 385
    :cond_b
    const-string v7, "ActivityManager_kpm"

    .line 386
    .line 387
    if-eqz v1, :cond_c

    .line 388
    .line 389
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 390
    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 392
    .line 393
    .line 394
    move-result-wide v12

    .line 395
    iget-object v14, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 396
    .line 397
    iget-wide v8, v14, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    .line 398
    .line 399
    sub-long/2addr v12, v8

    .line 400
    iput-wide v12, v11, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    .line 401
    .line 402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 403
    .line 404
    .line 405
    move-result-wide v8

    .line 406
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 407
    .line 408
    iget-wide v12, v11, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    .line 409
    .line 410
    sub-long/2addr v8, v12

    .line 411
    iput-wide v8, v14, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    .line 412
    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 414
    .line 415
    .line 416
    move-result-wide v8

    .line 417
    iput-wide v8, v11, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    .line 418
    .line 419
    sget-boolean v8, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 420
    .line 421
    if-eqz v8, :cond_d

    .line 422
    .line 423
    new-instance v8, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string v9, "Awake realtime : "

    .line 426
    .line 427
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 431
    .line 432
    iget-wide v11, v9, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    .line 433
    .line 434
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v9, ", Awake uptime : "

    .line 438
    .line 439
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 443
    .line 444
    iget-wide v11, v9, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    .line 445
    .line 446
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    goto :goto_3

    .line 457
    :cond_c
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 458
    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 460
    .line 461
    .line 462
    move-result-wide v11

    .line 463
    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 464
    .line 465
    iget-wide v13, v9, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    .line 466
    .line 467
    sub-long/2addr v11, v13

    .line 468
    iput-wide v11, v8, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    .line 469
    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 471
    .line 472
    .line 473
    move-result-wide v11

    .line 474
    iput-wide v11, v9, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    .line 475
    .line 476
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 477
    .line 478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 479
    .line 480
    .line 481
    move-result-wide v11

    .line 482
    iput-wide v11, v8, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    .line 483
    .line 484
    sget-boolean v8, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 485
    .line 486
    if-eqz v8, :cond_d

    .line 487
    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    const-string v9, "Idle realtime : "

    .line 491
    .line 492
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 496
    .line 497
    iget-wide v11, v9, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    .line 498
    .line 499
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    :cond_d
    :goto_3
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 510
    .line 511
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 512
    .line 513
    if-eqz v1, :cond_2a

    .line 514
    .line 515
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 516
    .line 517
    check-cast v0, Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    sget-object v1, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    .line 524
    .line 525
    const-string v9, ","

    .line 526
    .line 527
    const-string/jumbo v11, "sys.pmm.nativemse"

    .line 528
    .line 529
    .line 530
    if-nez v0, :cond_f

    .line 531
    .line 532
    const-string v0, ""

    .line 533
    .line 534
    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 539
    .line 540
    .line 541
    move-result v12

    .line 542
    if-nez v12, :cond_f

    .line 543
    .line 544
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    array-length v12, v0

    .line 549
    if-lt v12, v6, :cond_f

    .line 550
    .line 551
    const/4 v12, 0x0

    .line 552
    aget-object v13, v0, v12

    .line 553
    .line 554
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 555
    .line 556
    .line 557
    move-result-wide v13

    .line 558
    aget-object v16, v0, v10

    .line 559
    .line 560
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 561
    .line 562
    .line 563
    move-result-wide v16

    .line 564
    const/4 v15, 0x2

    .line 565
    aget-object v18, v0, v15

    .line 566
    .line 567
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    move-result v12

    .line 571
    const/4 v15, 0x0

    .line 572
    :goto_4
    if-ge v15, v12, :cond_e

    .line 573
    .line 574
    iget-object v6, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 575
    .line 576
    new-instance v10, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 577
    .line 578
    move-object/from16 p2, v11

    .line 579
    .line 580
    move/from16 v19, v12

    .line 581
    .line 582
    int-to-double v11, v15

    .line 583
    mul-double v11, v11, v16

    .line 584
    .line 585
    add-double/2addr v11, v13

    .line 586
    double-to-long v11, v11

    .line 587
    :try_start_1
    invoke-direct {v10, v11, v12, v1}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    .line 588
    .line 589
    .line 590
    check-cast v6, Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    const/4 v6, 0x1

    .line 596
    add-int/2addr v15, v6

    .line 597
    move-object/from16 v11, p2

    .line 598
    .line 599
    move v10, v6

    .line 600
    move/from16 v12, v19

    .line 601
    .line 602
    const/4 v6, 0x3

    .line 603
    goto :goto_4

    .line 604
    :catch_0
    move-exception v0

    .line 605
    goto :goto_5

    .line 606
    :catch_1
    move-exception v0

    .line 607
    move-object/from16 p2, v11

    .line 608
    .line 609
    goto :goto_5

    .line 610
    :cond_e
    move-object/from16 p2, v11

    .line 611
    .line 612
    array-length v6, v0

    .line 613
    const/4 v10, 0x4

    .line 614
    if-lt v6, v10, :cond_10

    .line 615
    .line 616
    const/4 v6, 0x3

    .line 617
    aget-object v0, v0, v6

    .line 618
    .line 619
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    iput v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 624
    .line 625
    goto :goto_6

    .line 626
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    const-string/jumbo v10, "loadNativeDumpProperty exception ; "

    .line 629
    .line 630
    .line 631
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    goto :goto_6

    .line 649
    :cond_f
    move-object/from16 p2, v11

    .line 650
    .line 651
    :cond_10
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 652
    .line 653
    .line 654
    move-result-wide v10

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 656
    .line 657
    .line 658
    move-result-wide v12

    .line 659
    iget-wide v14, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    .line 660
    .line 661
    sub-long v14, v10, v14

    .line 662
    .line 663
    const-wide/16 v16, 0x2

    .line 664
    .line 665
    invoke-static/range {v16 .. v17}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 670
    .line 671
    .line 672
    move-result-wide v19

    .line 673
    cmp-long v0, v14, v19

    .line 674
    .line 675
    iget-object v6, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 676
    .line 677
    const-string v14, ") added. total size : "

    .line 678
    .line 679
    const-string v15, ", "

    .line 680
    .line 681
    move-object/from16 v19, v1

    .line 682
    .line 683
    if-gtz v0, :cond_12

    .line 684
    .line 685
    iget-wide v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    .line 686
    .line 687
    sub-long v0, v12, v0

    .line 688
    .line 689
    invoke-static/range {v16 .. v17}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 690
    .line 691
    .line 692
    move-result-object v16

    .line 693
    invoke-virtual/range {v16 .. v16}, Ljava/time/Duration;->toMillis()J

    .line 694
    .line 695
    .line 696
    move-result-wide v16

    .line 697
    cmp-long v0, v0, v16

    .line 698
    .line 699
    if-lez v0, :cond_11

    .line 700
    .line 701
    goto :goto_7

    .line 702
    :cond_11
    move-object/from16 v26, v6

    .line 703
    .line 704
    move-object v6, v7

    .line 705
    move-object/from16 v20, v9

    .line 706
    .line 707
    move-wide/from16 v23, v10

    .line 708
    .line 709
    move-wide/from16 v21, v12

    .line 710
    .line 711
    move-object v9, v14

    .line 712
    move-object v1, v15

    .line 713
    move-object/from16 v35, v3

    .line 714
    .line 715
    move-object v3, v2

    .line 716
    move-object/from16 v2, v35

    .line 717
    .line 718
    goto/16 :goto_b

    .line 719
    .line 720
    :cond_12
    :goto_7
    iget-object v0, v6, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 721
    .line 722
    array-length v1, v0

    .line 723
    const-wide v16, 0x7fffffffffffffffL

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    move-object/from16 v26, v6

    .line 729
    .line 730
    move-object/from16 v25, v7

    .line 731
    .line 732
    move-object/from16 v20, v9

    .line 733
    .line 734
    move-wide/from16 v23, v10

    .line 735
    .line 736
    move-wide/from16 v21, v12

    .line 737
    .line 738
    move-object/from16 v27, v14

    .line 739
    .line 740
    move-object/from16 v28, v15

    .line 741
    .line 742
    move-wide/from16 v6, v16

    .line 743
    .line 744
    move-wide v10, v6

    .line 745
    move-wide v12, v10

    .line 746
    move-wide v14, v12

    .line 747
    const/4 v9, 0x0

    .line 748
    :goto_8
    if-ge v9, v1, :cond_16

    .line 749
    .line 750
    move/from16 v29, v1

    .line 751
    .line 752
    aget-object v1, v0, v9

    .line 753
    .line 754
    move-object/from16 v30, v0

    .line 755
    .line 756
    if-eqz v1, :cond_13

    .line 757
    .line 758
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 759
    .line 760
    if-nez v0, :cond_14

    .line 761
    .line 762
    :cond_13
    move-object/from16 v35, v3

    .line 763
    .line 764
    move-object v3, v2

    .line 765
    move-object/from16 v2, v35

    .line 766
    .line 767
    goto :goto_9

    .line 768
    :cond_14
    move-wide/from16 v31, v14

    .line 769
    .line 770
    iget-wide v14, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    .line 771
    .line 772
    move-object/from16 v33, v2

    .line 773
    .line 774
    move-object/from16 v34, v3

    .line 775
    .line 776
    iget-wide v2, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    .line 777
    .line 778
    cmp-long v0, v14, v2

    .line 779
    .line 780
    if-lez v0, :cond_15

    .line 781
    .line 782
    invoke-static {v5, v1, v12, v13}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    .line 783
    .line 784
    .line 785
    move-result-wide v12

    .line 786
    invoke-static {v4, v1, v10, v11}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    .line 787
    .line 788
    .line 789
    move-result-wide v10

    .line 790
    move-object/from16 v2, v34

    .line 791
    .line 792
    invoke-static {v2, v1, v6, v7}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    .line 793
    .line 794
    .line 795
    move-result-wide v6

    .line 796
    move-wide/from16 v14, v31

    .line 797
    .line 798
    move-object/from16 v3, v33

    .line 799
    .line 800
    invoke-static {v3, v1, v14, v15}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    .line 801
    .line 802
    .line 803
    move-result-wide v14

    .line 804
    :goto_9
    const/4 v1, 0x1

    .line 805
    goto :goto_a

    .line 806
    :cond_15
    move-wide/from16 v14, v31

    .line 807
    .line 808
    move-object/from16 v3, v33

    .line 809
    .line 810
    move-object/from16 v2, v34

    .line 811
    .line 812
    goto :goto_9

    .line 813
    :goto_a
    add-int/2addr v9, v1

    .line 814
    move/from16 v1, v29

    .line 815
    .line 816
    move-object/from16 v0, v30

    .line 817
    .line 818
    move-object/from16 v35, v3

    .line 819
    .line 820
    move-object v3, v2

    .line 821
    move-object/from16 v2, v35

    .line 822
    .line 823
    goto :goto_8

    .line 824
    :cond_16
    move-object/from16 v35, v3

    .line 825
    .line 826
    move-object v3, v2

    .line 827
    move-object/from16 v2, v35

    .line 828
    .line 829
    cmp-long v0, v16, v12

    .line 830
    .line 831
    if-eqz v0, :cond_17

    .line 832
    .line 833
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 834
    .line 835
    new-instance v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 836
    .line 837
    sget-object v9, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->PmmDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    .line 838
    .line 839
    invoke-direct {v1, v12, v13, v9}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    .line 840
    .line 841
    .line 842
    check-cast v0, Ljava/util/ArrayList;

    .line 843
    .line 844
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 848
    .line 849
    new-instance v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 850
    .line 851
    invoke-direct {v1, v10, v11, v9}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    .line 852
    .line 853
    .line 854
    check-cast v0, Ljava/util/ArrayList;

    .line 855
    .line 856
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 860
    .line 861
    new-instance v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 862
    .line 863
    add-long/2addr v14, v6

    .line 864
    invoke-direct {v1, v14, v15, v9}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    .line 865
    .line 866
    .line 867
    check-cast v0, Ljava/util/ArrayList;

    .line 868
    .line 869
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    :cond_17
    const-string/jumbo v0, "recordPmmDump ("

    .line 873
    .line 874
    .line 875
    move-object/from16 v1, v28

    .line 876
    .line 877
    invoke-static {v0, v12, v13, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    move-object/from16 v9, v27

    .line 885
    .line 886
    invoke-static {v0, v1, v6, v7, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 887
    .line 888
    .line 889
    iget-object v6, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 890
    .line 891
    check-cast v6, Ljava/util/ArrayList;

    .line 892
    .line 893
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 894
    .line 895
    .line 896
    move-result v6

    .line 897
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    move-object/from16 v6, v25

    .line 905
    .line 906
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .line 908
    .line 909
    :goto_b
    iget-wide v10, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    .line 910
    .line 911
    sub-long v10, v23, v10

    .line 912
    .line 913
    sget v0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    .line 914
    .line 915
    int-to-long v12, v0

    .line 916
    invoke-static {v12, v13}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 921
    .line 922
    .line 923
    move-result-wide v12

    .line 924
    cmp-long v0, v10, v12

    .line 925
    .line 926
    if-gtz v0, :cond_18

    .line 927
    .line 928
    iget-wide v10, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    .line 929
    .line 930
    sub-long v12, v21, v10

    .line 931
    .line 932
    sget v0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    .line 933
    .line 934
    int-to-long v10, v0

    .line 935
    invoke-static {v10, v11}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 940
    .line 941
    .line 942
    move-result-wide v10

    .line 943
    cmp-long v0, v12, v10

    .line 944
    .line 945
    if-lez v0, :cond_2b

    .line 946
    .line 947
    :cond_18
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 948
    .line 949
    check-cast v0, Ljava/util/ArrayList;

    .line 950
    .line 951
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 952
    .line 953
    .line 954
    move-result v0

    .line 955
    sget v7, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    .line 956
    .line 957
    if-le v0, v7, :cond_19

    .line 958
    .line 959
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 960
    .line 961
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getCompactList(Ljava/util/List;)Ljava/util/List;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    iput-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 966
    .line 967
    :cond_19
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 968
    .line 969
    check-cast v0, Ljava/util/ArrayList;

    .line 970
    .line 971
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 972
    .line 973
    .line 974
    move-result v0

    .line 975
    sget v7, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    .line 976
    .line 977
    if-le v0, v7, :cond_1a

    .line 978
    .line 979
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 980
    .line 981
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getCompactList(Ljava/util/List;)Ljava/util/List;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    iput-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 986
    .line 987
    :cond_1a
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 988
    .line 989
    check-cast v0, Ljava/util/ArrayList;

    .line 990
    .line 991
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    sget v7, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    .line 996
    .line 997
    if-le v0, v7, :cond_1b

    .line 998
    .line 999
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 1000
    .line 1001
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getCompactList(Ljava/util/List;)Ljava/util/List;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    iput-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 1006
    .line 1007
    :cond_1b
    move-object/from16 v0, v26

    .line 1008
    .line 1009
    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1010
    .line 1011
    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo$1()Ljava/util/List;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v7

    .line 1015
    if-eqz v7, :cond_22

    .line 1016
    .line 1017
    check-cast v7, Ljava/util/ArrayList;

    .line 1018
    .line 1019
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1020
    .line 1021
    .line 1022
    move-result v12

    .line 1023
    if-lez v12, :cond_22

    .line 1024
    .line 1025
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v7

    .line 1029
    const-wide/16 v12, 0x0

    .line 1030
    .line 1031
    const-wide/16 v14, 0x0

    .line 1032
    .line 1033
    const-wide/16 v16, 0x0

    .line 1034
    .line 1035
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v21

    .line 1039
    if-eqz v21, :cond_21

    .line 1040
    .line 1041
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v21

    .line 1045
    move-object/from16 v10, v21

    .line 1046
    .line 1047
    check-cast v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 1048
    .line 1049
    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 1050
    .line 1051
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v11

    .line 1055
    if-nez v11, :cond_20

    .line 1056
    .line 1057
    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 1058
    .line 1059
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1060
    .line 1061
    .line 1062
    const/16 v21, -0x1

    .line 1063
    .line 1064
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 1065
    .line 1066
    .line 1067
    move-result v24

    .line 1068
    sparse-switch v24, :sswitch_data_0

    .line 1069
    .line 1070
    .line 1071
    goto :goto_d

    .line 1072
    :sswitch_0
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    move-result v11

    .line 1076
    if-nez v11, :cond_1c

    .line 1077
    .line 1078
    goto :goto_d

    .line 1079
    :cond_1c
    const/16 v21, 0x3

    .line 1080
    .line 1081
    goto :goto_d

    .line 1082
    :sswitch_1
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v11

    .line 1086
    if-nez v11, :cond_1d

    .line 1087
    .line 1088
    goto :goto_d

    .line 1089
    :cond_1d
    const/16 v21, 0x2

    .line 1090
    .line 1091
    goto :goto_d

    .line 1092
    :sswitch_2
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v11

    .line 1096
    if-nez v11, :cond_1e

    .line 1097
    .line 1098
    goto :goto_d

    .line 1099
    :cond_1e
    const/16 v21, 0x1

    .line 1100
    .line 1101
    goto :goto_d

    .line 1102
    :sswitch_3
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v11

    .line 1106
    if-nez v11, :cond_1f

    .line 1107
    .line 1108
    goto :goto_d

    .line 1109
    :cond_1f
    const/16 v21, 0x0

    .line 1110
    .line 1111
    :goto_d
    packed-switch v21, :pswitch_data_1

    .line 1112
    .line 1113
    .line 1114
    :cond_20
    move-object/from16 v34, v2

    .line 1115
    .line 1116
    move-object/from16 v33, v3

    .line 1117
    .line 1118
    goto :goto_e

    .line 1119
    :pswitch_1
    move-object/from16 v34, v2

    .line 1120
    .line 1121
    move-object/from16 v33, v3

    .line 1122
    .line 1123
    iget-wide v2, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 1124
    .line 1125
    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 1126
    .line 1127
    add-long/2addr v2, v10

    .line 1128
    add-long/2addr v14, v2

    .line 1129
    goto :goto_e

    .line 1130
    :pswitch_2
    move-object/from16 v34, v2

    .line 1131
    .line 1132
    move-object/from16 v33, v3

    .line 1133
    .line 1134
    iget-wide v2, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 1135
    .line 1136
    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 1137
    .line 1138
    add-long/2addr v2, v10

    .line 1139
    add-long v16, v2, v16

    .line 1140
    .line 1141
    goto :goto_e

    .line 1142
    :pswitch_3
    move-object/from16 v34, v2

    .line 1143
    .line 1144
    move-object/from16 v33, v3

    .line 1145
    .line 1146
    iget-wide v2, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 1147
    .line 1148
    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 1149
    .line 1150
    add-long/2addr v2, v10

    .line 1151
    add-long/2addr v12, v2

    .line 1152
    :goto_e
    move-object/from16 v3, v33

    .line 1153
    .line 1154
    move-object/from16 v2, v34

    .line 1155
    .line 1156
    goto :goto_c

    .line 1157
    :cond_21
    move-wide/from16 v2, v16

    .line 1158
    .line 1159
    const-wide/16 v4, 0x0

    .line 1160
    .line 1161
    goto :goto_f

    .line 1162
    :cond_22
    const-wide/16 v2, 0x0

    .line 1163
    .line 1164
    const-wide/16 v4, 0x0

    .line 1165
    .line 1166
    const-wide/16 v12, 0x0

    .line 1167
    .line 1168
    const-wide/16 v14, 0x0

    .line 1169
    .line 1170
    :goto_f
    cmp-long v7, v12, v4

    .line 1171
    .line 1172
    if-lez v7, :cond_23

    .line 1173
    .line 1174
    iget-object v7, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 1175
    .line 1176
    new-instance v10, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 1177
    .line 1178
    move-object/from16 v11, v19

    .line 1179
    .line 1180
    invoke-direct {v10, v12, v13, v11}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    .line 1181
    .line 1182
    .line 1183
    check-cast v7, Ljava/util/ArrayList;

    .line 1184
    .line 1185
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    .line 1187
    .line 1188
    goto :goto_10

    .line 1189
    :cond_23
    move-object/from16 v11, v19

    .line 1190
    .line 1191
    :goto_10
    cmp-long v7, v14, v4

    .line 1192
    .line 1193
    if-lez v7, :cond_24

    .line 1194
    .line 1195
    iget-object v7, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 1196
    .line 1197
    new-instance v10, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 1198
    .line 1199
    invoke-direct {v10, v14, v15, v11}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    .line 1200
    .line 1201
    .line 1202
    check-cast v7, Ljava/util/ArrayList;

    .line 1203
    .line 1204
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    .line 1206
    .line 1207
    :cond_24
    cmp-long v4, v2, v4

    .line 1208
    .line 1209
    if-lez v4, :cond_25

    .line 1210
    .line 1211
    iget-object v4, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 1212
    .line 1213
    new-instance v5, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 1214
    .line 1215
    invoke-direct {v5, v2, v3, v11}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    .line 1216
    .line 1217
    .line 1218
    check-cast v4, Ljava/util/ArrayList;

    .line 1219
    .line 1220
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    .line 1222
    .line 1223
    :cond_25
    const-string/jumbo v4, "recordIdleMemDump ("

    .line 1224
    .line 1225
    .line 1226
    invoke-static {v4, v12, v13, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v4

    .line 1230
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    .line 1233
    invoke-static {v4, v1, v2, v3, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 1237
    .line 1238
    check-cast v1, Ljava/util/ArrayList;

    .line 1239
    .line 1240
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1241
    .line 1242
    .line 1243
    move-result v1

    .line 1244
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .line 1253
    .line 1254
    const/4 v1, 0x0

    .line 1255
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    .line 1256
    .line 1257
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1258
    .line 1259
    .line 1260
    const-string v3, "TYPE"

    .line 1261
    .line 1262
    const/4 v4, 0x3

    .line 1263
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1264
    .line 1265
    .line 1266
    new-instance v3, Lorg/json/JSONArray;

    .line 1267
    .line 1268
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1269
    .line 1270
    .line 1271
    iget-wide v4, v0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    .line 1272
    .line 1273
    long-to-float v4, v4

    .line 1274
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 1275
    .line 1276
    div-float/2addr v4, v5

    .line 1277
    float-to-double v9, v4

    .line 1278
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 1279
    .line 1280
    add-double/2addr v9, v11

    .line 1281
    double-to-int v4, v9

    .line 1282
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v4

    .line 1286
    iget-wide v9, v0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    .line 1287
    .line 1288
    long-to-float v7, v9

    .line 1289
    div-float/2addr v7, v5

    .line 1290
    float-to-double v9, v7

    .line 1291
    add-double/2addr v9, v11

    .line 1292
    double-to-int v7, v9

    .line 1293
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v4

    .line 1297
    iget-wide v9, v0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    .line 1298
    .line 1299
    long-to-float v7, v9

    .line 1300
    div-float/2addr v7, v5

    .line 1301
    float-to-double v9, v7

    .line 1302
    add-double/2addr v9, v11

    .line 1303
    double-to-int v7, v9

    .line 1304
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v4

    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1309
    .line 1310
    .line 1311
    move-result-wide v9

    .line 1312
    iget-wide v13, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    .line 1313
    .line 1314
    sub-long/2addr v9, v13

    .line 1315
    long-to-float v7, v9

    .line 1316
    div-float/2addr v7, v5

    .line 1317
    float-to-double v9, v7

    .line 1318
    add-double/2addr v9, v11

    .line 1319
    double-to-int v7, v9

    .line 1320
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v4

    .line 1324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1325
    .line 1326
    .line 1327
    move-result-wide v9

    .line 1328
    iget-wide v13, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    .line 1329
    .line 1330
    sub-long/2addr v9, v13

    .line 1331
    long-to-float v7, v9

    .line 1332
    div-float/2addr v7, v5

    .line 1333
    float-to-double v9, v7

    .line 1334
    add-double/2addr v9, v11

    .line 1335
    double-to-int v5, v9

    .line 1336
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1337
    .line 1338
    .line 1339
    const-string v4, "DITI"

    .line 1340
    .line 1341
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1342
    .line 1343
    .line 1344
    iget-object v3, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 1345
    .line 1346
    check-cast v3, Ljava/util/ArrayList;

    .line 1347
    .line 1348
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1349
    .line 1350
    .line 1351
    move-result v3

    .line 1352
    if-lez v3, :cond_26

    .line 1353
    .line 1354
    const-string v3, "FNAI"

    .line 1355
    .line 1356
    iget-object v4, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 1357
    .line 1358
    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v4

    .line 1362
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1363
    .line 1364
    .line 1365
    :cond_26
    iget-object v3, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 1366
    .line 1367
    check-cast v3, Ljava/util/ArrayList;

    .line 1368
    .line 1369
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1370
    .line 1371
    .line 1372
    move-result v3

    .line 1373
    if-lez v3, :cond_27

    .line 1374
    .line 1375
    const-string v3, "FSAI"

    .line 1376
    .line 1377
    iget-object v4, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 1378
    .line 1379
    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v4

    .line 1383
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1384
    .line 1385
    .line 1386
    :cond_27
    iget-object v3, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 1387
    .line 1388
    check-cast v3, Ljava/util/ArrayList;

    .line 1389
    .line 1390
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1391
    .line 1392
    .line 1393
    move-result v3

    .line 1394
    if-lez v3, :cond_28

    .line 1395
    .line 1396
    const-string v3, "FPAI"

    .line 1397
    .line 1398
    iget-object v4, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 1399
    .line 1400
    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v4

    .line 1404
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1405
    .line 1406
    .line 1407
    :cond_28
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v1

    .line 1411
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1412
    .line 1413
    .line 1414
    move-result v2

    .line 1415
    const/4 v3, 0x1

    .line 1416
    sub-int/2addr v2, v3

    .line 1417
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1421
    goto :goto_11

    .line 1422
    :catch_2
    const-string/jumbo v2, "failed to create the KPUT"

    .line 1423
    .line 1424
    .line 1425
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    .line 1427
    .line 1428
    :goto_11
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 1429
    .line 1430
    if-eqz v2, :cond_29

    .line 1431
    .line 1432
    const-string v2, "Sending to HQM : "

    .line 1433
    .line 1434
    invoke-static {v2, v1, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    .line 1436
    .line 1437
    :cond_29
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    .line 1438
    .line 1439
    .line 1440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1441
    .line 1442
    .line 1443
    move-result-wide v1

    .line 1444
    iput-wide v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    .line 1445
    .line 1446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1447
    .line 1448
    .line 1449
    move-result-wide v1

    .line 1450
    iput-wide v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    .line 1451
    .line 1452
    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 1453
    .line 1454
    check-cast v1, Ljava/util/ArrayList;

    .line 1455
    .line 1456
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1457
    .line 1458
    .line 1459
    move-result v1

    .line 1460
    const/4 v2, 0x1

    .line 1461
    if-le v1, v2, :cond_2b

    .line 1462
    .line 1463
    :try_start_3
    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 1464
    .line 1465
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v1

    .line 1469
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1472
    .line 1473
    .line 1474
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1475
    .line 1476
    check-cast v3, Ljava/lang/Double;

    .line 1477
    .line 1478
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 1479
    .line 1480
    .line 1481
    move-result-wide v3

    .line 1482
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v3

    .line 1486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    .line 1488
    .line 1489
    move-object/from16 v3, v20

    .line 1490
    .line 1491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    .line 1494
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1495
    .line 1496
    check-cast v1, Ljava/lang/Double;

    .line 1497
    .line 1498
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 1499
    .line 1500
    .line 1501
    move-result-wide v4

    .line 1502
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v1

    .line 1506
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 1513
    .line 1514
    check-cast v1, Ljava/util/ArrayList;

    .line 1515
    .line 1516
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1517
    .line 1518
    .line 1519
    move-result v1

    .line 1520
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    iget v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    .line 1531
    .line 1532
    iget v0, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1533
    .line 1534
    add-int/2addr v1, v0

    .line 1535
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    move-object/from16 v1, p2

    .line 1543
    .line 1544
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1545
    .line 1546
    .line 1547
    goto :goto_12

    .line 1548
    :catch_3
    move-exception v0

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    const-string/jumbo v2, "saveNativeDumpProperty exception ; "

    .line 1552
    .line 1553
    .line 1554
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v0

    .line 1561
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v0

    .line 1568
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    .line 1570
    .line 1571
    goto :goto_12

    .line 1572
    :cond_2a
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1573
    .line 1574
    .line 1575
    :cond_2b
    :goto_12
    return-void

    .line 1576
    nop

    .line 1577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    :sswitch_data_0
    .sparse-switch
        -0x3ebdafe9 -> :sswitch_3
        -0x3b1c63dd -> :sswitch_2
        0x1becd -> :sswitch_1
        0x3472f6 -> :sswitch_0
    .end sparse-switch

    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
