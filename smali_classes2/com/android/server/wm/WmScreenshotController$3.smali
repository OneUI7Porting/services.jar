.class public final Lcom/android/server/wm/WmScreenshotController$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

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
    .locals 10

    .line 1
    iget p1, p0, Lcom/android/server/wm/WmScreenshotController$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "com.samsung.android.capture.ScreenshotExecutor"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_f

    .line 17
    .line 18
    const-string v0, "capturedOrigin"

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x3

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eq v6, v1, :cond_d

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    const/4 v5, 0x2

    .line 37
    if-eq v6, v1, :cond_a

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    if-eq v6, v1, :cond_5

    .line 41
    .line 42
    const/4 v1, 0x6

    .line 43
    if-eq v6, v1, :cond_6

    .line 44
    .line 45
    const/16 v1, 0x64

    .line 46
    .line 47
    if-eq v6, v1, :cond_0

    .line 48
    .line 49
    const-string p0, "WindowManager"

    .line 50
    .line 51
    const-string p1, "Error. capturedOrigin("

    .line 52
    .line 53
    const-string p2, ") is not supported."

    .line 54
    .line 55
    invoke-static {v6, p1, p2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_0
    const-string v1, "callingPackageName"

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    const-string p0, "WindowManager"

    .line 73
    .line 74
    const-string p1, "Can not take a screenshot, callingPackageName is empty."

    .line 75
    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_1
    const-string/jumbo v2, "type"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v7, "Fullscreen"

    .line 89
    .line 90
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const-string v7, "Region"

    .line 98
    .line 99
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_3

    .line 104
    .line 105
    move v3, v5

    .line 106
    :cond_3
    :goto_0
    const-string v5, "displayId"

    .line 107
    .line 108
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_4

    .line 117
    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    :cond_4
    const-string v5, "WindowManager"

    .line 123
    .line 124
    const-string v7, "Custom info, callingPackageName="

    .line 125
    .line 126
    const-string v8, " type="

    .line 127
    .line 128
    const-string v9, " displayId="

    .line 129
    .line 130
    invoke-static {v7, v1, v8, v2, v9}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1, p2, v5}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_1
    move-object v7, v0

    .line 138
    :goto_2
    move v5, v4

    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :cond_6
    if-nez v0, :cond_7

    .line 142
    .line 143
    const-string p0, "WindowManager"

    .line 144
    .line 145
    const-string p1, "Error. bundle is null"

    .line 146
    .line 147
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto/16 :goto_7

    .line 151
    .line 152
    :cond_7
    const-string/jumbo p2, "rect"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/graphics/Rect;

    .line 160
    .line 161
    if-eqz p2, :cond_9

    .line 162
    .line 163
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_8

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    const/16 p2, 0x65

    .line 171
    .line 172
    move v3, p2

    .line 173
    goto :goto_1

    .line 174
    :cond_9
    :goto_3
    const-string p0, "WindowManager"

    .line 175
    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v0, "Error. rect is "

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto/16 :goto_7

    .line 194
    .line 195
    :cond_a
    const-string/jumbo v0, "type"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    const-string v0, "Fullscreen"

    .line 203
    .line 204
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_b

    .line 209
    .line 210
    move p2, v3

    .line 211
    goto :goto_4

    .line 212
    :cond_b
    const-string v0, "Region"

    .line 213
    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_e

    .line 219
    .line 220
    move p2, v5

    .line 221
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 222
    .line 223
    iget-object v1, v0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 224
    .line 225
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 226
    .line 227
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 228
    .line 229
    .line 230
    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 232
    .line 233
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 234
    .line 235
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 243
    .line 244
    .line 245
    if-eq v0, v3, :cond_c

    .line 246
    .line 247
    move v4, v5

    .line 248
    :cond_c
    move v3, p2

    .line 249
    :cond_d
    move-object v7, v2

    .line 250
    goto :goto_2

    .line 251
    :catchall_0
    move-exception p0

    .line 252
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 254
    .line 255
    .line 256
    throw p0

    .line 257
    :cond_e
    const-string p0, "WindowManager"

    .line 258
    .line 259
    const-string p1, "Error. extra type was wrong. type="

    .line 260
    .line 261
    invoke-static {p1, p2, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :goto_5
    const-string p2, "WindowManager"

    .line 266
    .line 267
    const-string v0, "Receive "

    .line 268
    .line 269
    const-string v1, " screenType="

    .line 270
    .line 271
    const-string v2, " direction=1 display="

    .line 272
    .line 273
    invoke-static {v3, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v0, " from="

    .line 281
    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    packed-switch v6, :pswitch_data_1

    .line 291
    .line 292
    .line 293
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    goto :goto_6

    .line 298
    :pswitch_0
    const-string v0, "FLEX_PANEL"

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :pswitch_1
    const-string v0, "BIXBY"

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :pswitch_2
    const-string v0, "DEX"

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :pswitch_3
    const-string v0, "QUICK_PANEL"

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :pswitch_4
    const-string v0, "PALM"

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :pswitch_5
    const-string v0, "KEY"

    .line 314
    .line 315
    :goto_6
    invoke-static {p1, v0, p2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 319
    .line 320
    const/4 v4, 0x1

    .line 321
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    .line 322
    .line 323
    .line 324
    :cond_f
    :goto_7
    return-void

    .line 325
    :pswitch_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 330
    .line 331
    iget-object p2, p2, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 332
    .line 333
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 334
    .line 335
    check-cast p2, Lcom/android/server/policy/PhoneWindowManager;

    .line 336
    .line 337
    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v1, "Receive "

    .line 344
    .line 345
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v1, ", isKeyguardLocked="

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    const-string v1, "WindowManager"

    .line 364
    .line 365
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    if-eqz p2, :cond_10

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_10
    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 372
    .line 373
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    const-string p2, "com.samsung.android.motion.SWEEP_LEFT"

    .line 377
    .line 378
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p2

    .line 382
    if-eqz p2, :cond_11

    .line 383
    .line 384
    const/4 p1, 0x2

    .line 385
    :goto_8
    move v2, p1

    .line 386
    goto :goto_9

    .line 387
    :cond_11
    const-string p2, "com.samsung.android.motion.SWEEP_RIGHT"

    .line 388
    .line 389
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result p2

    .line 393
    if-eqz p2, :cond_12

    .line 394
    .line 395
    const/4 p1, 0x3

    .line 396
    goto :goto_8

    .line 397
    :cond_12
    const-string p2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    .line 398
    .line 399
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    if-eqz p1, :cond_13

    .line 404
    .line 405
    const/4 p1, 0x1

    .line 406
    goto :goto_8

    .line 407
    :cond_13
    const/4 p1, -0x1

    .line 408
    goto :goto_8

    .line 409
    :goto_9
    if-lez v2, :cond_14

    .line 410
    .line 411
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 412
    .line 413
    const/4 v1, 0x1

    .line 414
    const/4 v3, 0x0

    .line 415
    const/4 v4, 0x2

    .line 416
    const/4 v5, 0x0

    .line 417
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    .line 418
    .line 419
    .line 420
    :cond_14
    :goto_a
    return-void

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
