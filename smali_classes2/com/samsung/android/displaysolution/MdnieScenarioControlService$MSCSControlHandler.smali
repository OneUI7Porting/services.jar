.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget v1, v0, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_LARGE_COVER_SCREEN"

    .line 6
    .line 7
    const/16 v7, 0xa

    .line 8
    .line 9
    const/16 v8, 0x9

    .line 10
    .line 11
    const-string v9, " mHighDynamicRangeEnabled : "

    .line 12
    .line 13
    const-string v10, "VIDEO"

    .line 14
    .line 15
    const-string v11, "1"

    .line 16
    .line 17
    const/16 v12, 0xf

    .line 18
    .line 19
    const/4 v14, 0x3

    .line 20
    const/4 v15, 0x6

    .line 21
    const-string v13, "mAclOffEnabled : "

    .line 22
    .line 23
    const-string v2, "MdnieScenarioControlService"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    move-object/from16 v5, p0

    .line 27
    .line 28
    iget-object v5, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    :pswitch_0
    goto/16 :goto_32

    .line 35
    .line 36
    :pswitch_1
    :try_start_0
    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mwriteVideoEnhancerListInDataBase2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_32

    .line 40
    .line 41
    :catch_0
    move-exception v0

    .line 42
    move-object v1, v0

    .line 43
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    move v0, v4

    .line 47
    :goto_0
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    if-ge v0, v2, :cond_0

    .line 51
    .line 52
    aget-object v1, v1, v0

    .line 53
    .line 54
    invoke-virtual {v5, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :goto_1
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 61
    .line 62
    array-length v1, v0

    .line 63
    if-ge v4, v1, :cond_4b

    .line 64
    .line 65
    aget-object v0, v0, v4

    .line 66
    .line 67
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_2
    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$manti_glare_state(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_32

    .line 77
    .line 78
    :pswitch_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/io/File;

    .line 82
    .line 83
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const-string v3, ","

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :try_start_2
    array-length v1, v0

    .line 111
    const/16 v6, 0xc

    .line 112
    .line 113
    if-ne v1, v6, :cond_2

    .line 114
    .line 115
    move v6, v4

    .line 116
    move v1, v14

    .line 117
    :goto_2
    if-ge v1, v15, :cond_1

    .line 118
    .line 119
    aget-object v7, v0, v1

    .line 120
    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    add-int/2addr v6, v7

    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catch_1
    move-exception v0

    .line 130
    goto :goto_5

    .line 131
    :catch_2
    move-exception v0

    .line 132
    goto :goto_3

    .line 133
    :cond_1
    if-lez v6, :cond_2

    .line 134
    .line 135
    div-int/lit8 v4, v6, 0x3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :goto_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v6, "NumberFormatException : "

    .line 144
    .line 145
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    .line 157
    .line 158
    :cond_2
    :goto_4
    move v13, v4

    .line 159
    goto :goto_6

    .line 160
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_3
    const/4 v13, -0x1

    .line 165
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v1, "currentOpr : "

    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, ", mQuickPanelState : "

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 201
    .line 202
    if-eqz v0, :cond_4b

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget v2, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    .line 220
    .line 221
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_32

    .line 236
    .line 237
    :pswitch_4
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_mode(Z)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_32

    .line 241
    .line 242
    :pswitch_5
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_mode(Z)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_32

    .line 246
    .line 247
    :pswitch_6
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    const-string v1, "activity"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Landroid/app/ActivityManager;

    .line 256
    .line 257
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v1, "mActivityManager : "

    .line 262
    .line 263
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    const-string v1, "mDNIe"

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 287
    .line 288
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 289
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string/jumbo v1, "mMdnieManager : "

    .line 293
    .line 294
    .line 295
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 311
    .line 312
    const-string v1, "input"

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 319
    .line 320
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 321
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string/jumbo v1, "mInputManager : "

    .line 325
    .line 326
    .line 327
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 343
    .line 344
    const-string v1, "DisplaySolution"

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 351
    .line 352
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 353
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string/jumbo v1, "mSemDisplaySolutionManager : "

    .line 357
    .line 358
    .line 359
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    const-string v1, "display"

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 383
    .line 384
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 385
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string/jumbo v1, "mDisplayManager : "

    .line 389
    .line 390
    .line 391
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 407
    .line 408
    const-string v1, "display_aiqe"

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 415
    .line 416
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 417
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    const-string/jumbo v1, "mDisplayAiqeManager : "

    .line 421
    .line 422
    .line 423
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 439
    .line 440
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 441
    .line 442
    if-eqz v0, :cond_8

    .line 443
    .line 444
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 445
    .line 446
    if-eqz v0, :cond_8

    .line 447
    .line 448
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 449
    .line 450
    if-eqz v0, :cond_8

    .line 451
    .line 452
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 453
    .line 454
    if-eqz v0, :cond_8

    .line 455
    .line 456
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 457
    .line 458
    if-eqz v0, :cond_8

    .line 459
    .line 460
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 461
    .line 462
    if-nez v0, :cond_4

    .line 463
    .line 464
    goto :goto_8

    .line 465
    :cond_4
    const-string v0, "mDesktopModeManager : "

    .line 466
    .line 467
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    iget-object v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    .line 472
    .line 473
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 474
    .line 475
    .line 476
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 477
    .line 478
    if-nez v3, :cond_5

    .line 479
    .line 480
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 481
    .line 482
    const-string v4, "desktopmode"

    .line 483
    .line 484
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 489
    .line 490
    iput-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 491
    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 498
    .line 499
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    :cond_5
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 510
    .line 511
    if-eqz v0, :cond_6

    .line 512
    .line 513
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->eventListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

    .line 514
    .line 515
    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 516
    .line 517
    .line 518
    :cond_6
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 519
    .line 520
    if-eqz v0, :cond_7

    .line 521
    .line 522
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;

    .line 523
    .line 524
    const-wide/16 v7, 0x8

    .line 525
    .line 526
    invoke-virtual {v0, v3, v1, v7, v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 527
    .line 528
    .line 529
    :cond_7
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 530
    .line 531
    .line 532
    goto :goto_7

    .line 533
    :catch_3
    const-string v0, "failed to registerProcessObserver"

    .line 534
    .line 535
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    :goto_7
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 539
    .line 540
    const-string v0, "Success to register all of the services system."

    .line 541
    .line 542
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    goto/16 :goto_32

    .line 546
    .line 547
    :cond_8
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 548
    .line 549
    .line 550
    move-result-wide v3

    .line 551
    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    .line 553
    .line 554
    iget v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 555
    .line 556
    int-to-long v5, v0

    .line 557
    add-long/2addr v3, v5

    .line 558
    invoke-virtual {v1, v12, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 559
    .line 560
    .line 561
    const-string v0, "Failure to register all of the services system."

    .line 562
    .line 563
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    goto/16 :goto_32

    .line 567
    .line 568
    :pswitch_7
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 576
    .line 577
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 578
    .line 579
    .line 580
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 581
    .line 582
    if-eqz v0, :cond_4b

    .line 583
    .line 584
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v0

    .line 588
    if-nez v0, :cond_4b

    .line 589
    .line 590
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-nez v0, :cond_4b

    .line 597
    .line 598
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 599
    .line 600
    if-nez v0, :cond_4b

    .line 601
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 608
    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 616
    .line 617
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 618
    .line 619
    .line 620
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 621
    .line 622
    if-eqz v0, :cond_9

    .line 623
    .line 624
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 625
    .line 626
    if-nez v0, :cond_9

    .line 627
    .line 628
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 629
    .line 630
    .line 631
    :cond_9
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 635
    .line 636
    .line 637
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 647
    .line 648
    .line 649
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 650
    .line 651
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 652
    .line 653
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 654
    .line 655
    const-string/jumbo v0, "setVideoMode from SVideoOption function"

    .line 656
    .line 657
    .line 658
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .line 660
    .line 661
    goto/16 :goto_32

    .line 662
    .line 663
    :pswitch_8
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 671
    .line 672
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 673
    .line 674
    .line 675
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 676
    .line 677
    if-eqz v0, :cond_4b

    .line 678
    .line 679
    const-string v1, "9"

    .line 680
    .line 681
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v0

    .line 685
    if-nez v0, :cond_4b

    .line 686
    .line 687
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 688
    .line 689
    const-string v1, "eBOOK"

    .line 690
    .line 691
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    if-nez v0, :cond_4b

    .line 696
    .line 697
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 698
    .line 699
    const-string v1, "EBOOK"

    .line 700
    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-nez v0, :cond_4b

    .line 706
    .line 707
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 708
    .line 709
    if-nez v0, :cond_4b

    .line 710
    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 717
    .line 718
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 719
    .line 720
    .line 721
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 722
    .line 723
    if-eqz v0, :cond_a

    .line 724
    .line 725
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 726
    .line 727
    .line 728
    :cond_a
    invoke-virtual {v5, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 732
    .line 733
    .line 734
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 744
    .line 745
    .line 746
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 747
    .line 748
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 749
    .line 750
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 751
    .line 752
    const-string/jumbo v0, "setEbookMode from Ebook function"

    .line 753
    .line 754
    .line 755
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .line 757
    .line 758
    goto/16 :goto_32

    .line 759
    .line 760
    :pswitch_9
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 768
    .line 769
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 770
    .line 771
    .line 772
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 773
    .line 774
    if-eqz v0, :cond_4b

    .line 775
    .line 776
    const-string v1, "10"

    .line 777
    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    if-nez v0, :cond_4b

    .line 783
    .line 784
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 785
    .line 786
    const-string v1, "EMAIL"

    .line 787
    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    if-nez v0, :cond_4b

    .line 793
    .line 794
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 795
    .line 796
    if-nez v0, :cond_4b

    .line 797
    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    .line 799
    .line 800
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 804
    .line 805
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 806
    .line 807
    .line 808
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 809
    .line 810
    if-eqz v0, :cond_b

    .line 811
    .line 812
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 813
    .line 814
    .line 815
    :cond_b
    invoke-virtual {v5, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 819
    .line 820
    .line 821
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 831
    .line 832
    .line 833
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 834
    .line 835
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 836
    .line 837
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 838
    .line 839
    const-string/jumbo v0, "setEmailMode from Email function"

    .line 840
    .line 841
    .line 842
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .line 844
    .line 845
    goto/16 :goto_32

    .line 846
    .line 847
    :pswitch_a
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 848
    .line 849
    invoke-static {v5, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetSVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    .line 850
    .line 851
    .line 852
    goto/16 :goto_32

    .line 853
    .line 854
    :pswitch_b
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 855
    .line 856
    invoke-static {v5, v6, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetSVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    .line 857
    .line 858
    .line 859
    goto/16 :goto_32

    .line 860
    .line 861
    :pswitch_c
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 862
    .line 863
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 864
    .line 865
    .line 866
    move v1, v4

    .line 867
    :goto_9
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 868
    .line 869
    array-length v7, v3

    .line 870
    if-ge v1, v7, :cond_d

    .line 871
    .line 872
    aget-object v3, v3, v1

    .line 873
    .line 874
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    if-eqz v3, :cond_c

    .line 879
    .line 880
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 881
    .line 882
    .line 883
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 884
    .line 885
    goto :goto_a

    .line 886
    :cond_c
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 887
    .line 888
    .line 889
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 890
    .line 891
    add-int/lit8 v1, v1, 0x1

    .line 892
    .line 893
    goto :goto_9

    .line 894
    :cond_d
    :goto_a
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    .line 895
    .line 896
    .line 897
    move-result v1

    .line 898
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    .line 899
    .line 900
    .line 901
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    iput-boolean v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 906
    .line 907
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 908
    .line 909
    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    const-string v7, "hdr_effect_enable : "

    .line 913
    .line 914
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    const-string v7, " , app_setting_value : "

    .line 921
    .line 922
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    .line 926
    .line 927
    .line 928
    move-result v7

    .line 929
    if-ne v7, v6, :cond_e

    .line 930
    .line 931
    move v7, v6

    .line 932
    goto :goto_b

    .line 933
    :cond_e
    move v7, v4

    .line 934
    :goto_b
    invoke-static {v2, v3, v7}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 935
    .line 936
    .line 937
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 938
    .line 939
    const-string/jumbo v7, "setVideoMode from Video function"

    .line 940
    .line 941
    .line 942
    if-eqz v1, :cond_15

    .line 943
    .line 944
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    .line 945
    .line 946
    .line 947
    move-result v0

    .line 948
    if-ne v0, v6, :cond_15

    .line 949
    .line 950
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 951
    .line 952
    if-nez v0, :cond_12

    .line 953
    .line 954
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 955
    .line 956
    if-eqz v0, :cond_4b

    .line 957
    .line 958
    const-string v1, "15"

    .line 959
    .line 960
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-result v0

    .line 964
    if-nez v0, :cond_4b

    .line 965
    .line 966
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 967
    .line 968
    const-string v1, "VIDEO_ENHANCER_THIRD"

    .line 969
    .line 970
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 971
    .line 972
    .line 973
    move-result v0

    .line 974
    if-nez v0, :cond_4b

    .line 975
    .line 976
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 977
    .line 978
    const-string v1, "VIDEO_BRIGHTNESS_THIRD"

    .line 979
    .line 980
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 981
    .line 982
    .line 983
    move-result v0

    .line 984
    if-nez v0, :cond_4b

    .line 985
    .line 986
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 987
    .line 988
    if-nez v0, :cond_4b

    .line 989
    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    .line 991
    .line 992
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 993
    .line 994
    .line 995
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 996
    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1004
    .line 1005
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1006
    .line 1007
    .line 1008
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1009
    .line 1010
    if-eqz v0, :cond_f

    .line 1011
    .line 1012
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1013
    .line 1014
    if-nez v0, :cond_f

    .line 1015
    .line 1016
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1017
    .line 1018
    .line 1019
    :cond_f
    invoke-virtual {v5, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1020
    .line 1021
    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    const-string v1, "mDexModeState : "

    .line 1025
    .line 1026
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 1030
    .line 1031
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1032
    .line 1033
    .line 1034
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 1035
    .line 1036
    if-eqz v0, :cond_11

    .line 1037
    .line 1038
    const/16 v0, 0xff

    .line 1039
    .line 1040
    if-eq v3, v0, :cond_10

    .line 1041
    .line 1042
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1043
    .line 1044
    if-eqz v0, :cond_10

    .line 1045
    .line 1046
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 1047
    .line 1048
    if-nez v0, :cond_10

    .line 1049
    .line 1050
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 1051
    .line 1052
    if-nez v0, :cond_10

    .line 1053
    .line 1054
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1055
    .line 1056
    .line 1057
    goto :goto_c

    .line 1058
    :cond_10
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_c

    .line 1062
    :cond_11
    const/4 v0, 0x2

    .line 1063
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1064
    .line 1065
    .line 1066
    :goto_c
    invoke-static {v6}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1073
    .line 1074
    .line 1075
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1076
    .line 1077
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1078
    .line 1079
    const-string/jumbo v0, "setVideoMode from Video function(VIDEO_ENHANCER_THIRD)"

    .line 1080
    .line 1081
    .line 1082
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    .line 1084
    .line 1085
    goto/16 :goto_32

    .line 1086
    .line 1087
    :cond_12
    if-eqz v0, :cond_4b

    .line 1088
    .line 1089
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1090
    .line 1091
    if-eqz v0, :cond_4b

    .line 1092
    .line 1093
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    if-nez v0, :cond_4b

    .line 1098
    .line 1099
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1100
    .line 1101
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1102
    .line 1103
    .line 1104
    move-result v0

    .line 1105
    if-nez v0, :cond_4b

    .line 1106
    .line 1107
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1108
    .line 1109
    if-nez v0, :cond_4b

    .line 1110
    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1117
    .line 1118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1125
    .line 1126
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1127
    .line 1128
    .line 1129
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1130
    .line 1131
    if-eqz v0, :cond_13

    .line 1132
    .line 1133
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1134
    .line 1135
    if-nez v0, :cond_13

    .line 1136
    .line 1137
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1138
    .line 1139
    .line 1140
    :cond_13
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1141
    .line 1142
    .line 1143
    const/16 v0, 0xff

    .line 1144
    .line 1145
    if-eq v3, v0, :cond_14

    .line 1146
    .line 1147
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1148
    .line 1149
    if-eqz v0, :cond_14

    .line 1150
    .line 1151
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 1152
    .line 1153
    if-nez v0, :cond_14

    .line 1154
    .line 1155
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 1156
    .line 1157
    if-nez v0, :cond_14

    .line 1158
    .line 1159
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1160
    .line 1161
    .line 1162
    goto :goto_d

    .line 1163
    :cond_14
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1164
    .line 1165
    .line 1166
    :goto_d
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1173
    .line 1174
    .line 1175
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1176
    .line 1177
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1178
    .line 1179
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    .line 1181
    .line 1182
    goto/16 :goto_32

    .line 1183
    .line 1184
    :cond_15
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1185
    .line 1186
    if-eqz v0, :cond_4b

    .line 1187
    .line 1188
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v0

    .line 1192
    if-nez v0, :cond_4b

    .line 1193
    .line 1194
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1195
    .line 1196
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v0

    .line 1200
    if-nez v0, :cond_4b

    .line 1201
    .line 1202
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1203
    .line 1204
    if-nez v0, :cond_4b

    .line 1205
    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1212
    .line 1213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1220
    .line 1221
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1222
    .line 1223
    .line 1224
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1225
    .line 1226
    if-eqz v0, :cond_16

    .line 1227
    .line 1228
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1229
    .line 1230
    if-nez v0, :cond_16

    .line 1231
    .line 1232
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1233
    .line 1234
    .line 1235
    :cond_16
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1236
    .line 1237
    .line 1238
    const/16 v0, 0xff

    .line 1239
    .line 1240
    if-eq v3, v0, :cond_17

    .line 1241
    .line 1242
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1243
    .line 1244
    if-eqz v0, :cond_17

    .line 1245
    .line 1246
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 1247
    .line 1248
    if-nez v0, :cond_17

    .line 1249
    .line 1250
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 1251
    .line 1252
    if-nez v0, :cond_17

    .line 1253
    .line 1254
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1255
    .line 1256
    .line 1257
    goto :goto_e

    .line 1258
    :cond_17
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1259
    .line 1260
    .line 1261
    :goto_e
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1268
    .line 1269
    .line 1270
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1271
    .line 1272
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1273
    .line 1274
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    .line 1276
    .line 1277
    goto/16 :goto_32

    .line 1278
    .line 1279
    :pswitch_d
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 1280
    .line 1281
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 1285
    .line 1286
    .line 1287
    move-result v0

    .line 1288
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1289
    .line 1290
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1291
    .line 1292
    .line 1293
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 1294
    .line 1295
    if-nez v0, :cond_1a

    .line 1296
    .line 1297
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1298
    .line 1299
    if-eqz v0, :cond_4b

    .line 1300
    .line 1301
    const-string v1, "4"

    .line 1302
    .line 1303
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result v0

    .line 1307
    if-nez v0, :cond_4b

    .line 1308
    .line 1309
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1310
    .line 1311
    const-string v1, "CAMERA"

    .line 1312
    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v0

    .line 1317
    if-nez v0, :cond_4b

    .line 1318
    .line 1319
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1320
    .line 1321
    if-nez v0, :cond_4b

    .line 1322
    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1326
    .line 1327
    .line 1328
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1329
    .line 1330
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1331
    .line 1332
    .line 1333
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1334
    .line 1335
    if-eqz v0, :cond_18

    .line 1336
    .line 1337
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1338
    .line 1339
    .line 1340
    :cond_18
    const/4 v0, 0x4

    .line 1341
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1342
    .line 1343
    .line 1344
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v1

    .line 1348
    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v1

    .line 1352
    if-eqz v1, :cond_19

    .line 1353
    .line 1354
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1355
    .line 1356
    .line 1357
    goto :goto_f

    .line 1358
    :cond_19
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1359
    .line 1360
    .line 1361
    :goto_f
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1371
    .line 1372
    .line 1373
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1374
    .line 1375
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1376
    .line 1377
    const-string/jumbo v0, "setCameraMode from Camera function"

    .line 1378
    .line 1379
    .line 1380
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    .line 1382
    .line 1383
    goto/16 :goto_32

    .line 1384
    .line 1385
    :cond_1a
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 1386
    .line 1387
    goto/16 :goto_32

    .line 1388
    .line 1389
    :pswitch_e
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 1390
    .line 1391
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 1392
    .line 1393
    .line 1394
    move v1, v4

    .line 1395
    move v7, v1

    .line 1396
    :goto_10
    iget-object v8, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    .line 1397
    .line 1398
    array-length v9, v8

    .line 1399
    if-ge v1, v9, :cond_1c

    .line 1400
    .line 1401
    aget-object v8, v8, v1

    .line 1402
    .line 1403
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v8

    .line 1407
    if-eqz v8, :cond_1b

    .line 1408
    .line 1409
    move v7, v6

    .line 1410
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 1411
    .line 1412
    goto :goto_10

    .line 1413
    :cond_1c
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1414
    .line 1415
    .line 1416
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1417
    .line 1418
    if-eqz v0, :cond_4b

    .line 1419
    .line 1420
    const-string v1, "6"

    .line 1421
    .line 1422
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1423
    .line 1424
    .line 1425
    move-result v0

    .line 1426
    if-nez v0, :cond_4b

    .line 1427
    .line 1428
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1429
    .line 1430
    const-string v1, "GALLERY"

    .line 1431
    .line 1432
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1433
    .line 1434
    .line 1435
    move-result v0

    .line 1436
    if-nez v0, :cond_4b

    .line 1437
    .line 1438
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1439
    .line 1440
    if-nez v0, :cond_4b

    .line 1441
    .line 1442
    if-eqz v7, :cond_1d

    .line 1443
    .line 1444
    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1445
    .line 1446
    .line 1447
    :cond_1d
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1448
    .line 1449
    .line 1450
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v0

    .line 1458
    if-eqz v0, :cond_1e

    .line 1459
    .line 1460
    invoke-virtual {v5, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1461
    .line 1462
    .line 1463
    goto :goto_11

    .line 1464
    :cond_1e
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1465
    .line 1466
    .line 1467
    :goto_11
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1477
    .line 1478
    .line 1479
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1480
    .line 1481
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1482
    .line 1483
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1484
    .line 1485
    const-string/jumbo v0, "setGalleryMode from Gallery function"

    .line 1486
    .line 1487
    .line 1488
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    .line 1490
    .line 1491
    goto/16 :goto_32

    .line 1492
    .line 1493
    :pswitch_f
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 1494
    .line 1495
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 1499
    .line 1500
    .line 1501
    move-result v1

    .line 1502
    iput-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1503
    .line 1504
    move v1, v4

    .line 1505
    :goto_12
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 1506
    .line 1507
    array-length v7, v3

    .line 1508
    if-ge v1, v7, :cond_20

    .line 1509
    .line 1510
    aget-object v3, v3, v1

    .line 1511
    .line 1512
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1513
    .line 1514
    .line 1515
    move-result v3

    .line 1516
    if-eqz v3, :cond_1f

    .line 1517
    .line 1518
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1519
    .line 1520
    .line 1521
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1522
    .line 1523
    goto :goto_13

    .line 1524
    :cond_1f
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1525
    .line 1526
    .line 1527
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1528
    .line 1529
    add-int/lit8 v1, v1, 0x1

    .line 1530
    .line 1531
    goto :goto_12

    .line 1532
    :cond_20
    :goto_13
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1533
    .line 1534
    .line 1535
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1536
    .line 1537
    if-eqz v0, :cond_4b

    .line 1538
    .line 1539
    const-string v1, "8"

    .line 1540
    .line 1541
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1542
    .line 1543
    .line 1544
    move-result v0

    .line 1545
    if-nez v0, :cond_4b

    .line 1546
    .line 1547
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1548
    .line 1549
    const-string v1, "BROWSER"

    .line 1550
    .line 1551
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1552
    .line 1553
    .line 1554
    move-result v0

    .line 1555
    if-nez v0, :cond_4b

    .line 1556
    .line 1557
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1558
    .line 1559
    if-nez v0, :cond_4b

    .line 1560
    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1564
    .line 1565
    .line 1566
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1567
    .line 1568
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1569
    .line 1570
    .line 1571
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1572
    .line 1573
    if-eqz v0, :cond_21

    .line 1574
    .line 1575
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1576
    .line 1577
    .line 1578
    :cond_21
    const/16 v0, 0x8

    .line 1579
    .line 1580
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1581
    .line 1582
    .line 1583
    iget v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 1584
    .line 1585
    const/16 v1, 0xff

    .line 1586
    .line 1587
    if-eq v0, v1, :cond_22

    .line 1588
    .line 1589
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1590
    .line 1591
    if-eqz v0, :cond_22

    .line 1592
    .line 1593
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 1594
    .line 1595
    if-nez v0, :cond_22

    .line 1596
    .line 1597
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 1598
    .line 1599
    if-nez v0, :cond_22

    .line 1600
    .line 1601
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1602
    .line 1603
    .line 1604
    goto :goto_14

    .line 1605
    :cond_22
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1606
    .line 1607
    .line 1608
    :goto_14
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1615
    .line 1616
    .line 1617
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1618
    .line 1619
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1620
    .line 1621
    const-string/jumbo v0, "setBrowserMode from Browser function"

    .line 1622
    .line 1623
    .line 1624
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    .line 1626
    .line 1627
    goto/16 :goto_32

    .line 1628
    .line 1629
    :pswitch_10
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 1630
    .line 1631
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode(Ljava/lang/String;)V

    .line 1632
    .line 1633
    .line 1634
    goto/16 :goto_32

    .line 1635
    .line 1636
    :pswitch_11
    :try_start_5
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    .line 1637
    .line 1638
    const/4 v1, -0x1

    .line 1639
    invoke-virtual {v0, v1, v4, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->onForegroundActivitiesChanged(IIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1640
    .line 1641
    .line 1642
    goto/16 :goto_32

    .line 1643
    .line 1644
    :pswitch_12
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1645
    .line 1646
    check-cast v0, Ljava/lang/String;

    .line 1647
    .line 1648
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1649
    .line 1650
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 1651
    .line 1652
    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    .line 1653
    .line 1654
    .line 1655
    move-result v1

    .line 1656
    if-nez v1, :cond_23

    .line 1657
    .line 1658
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 1659
    .line 1660
    goto :goto_15

    .line 1661
    :cond_23
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 1662
    .line 1663
    :goto_15
    move v1, v4

    .line 1664
    :goto_16
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 1665
    .line 1666
    array-length v9, v3

    .line 1667
    if-ge v1, v9, :cond_25

    .line 1668
    .line 1669
    aget-object v3, v3, v1

    .line 1670
    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v3

    .line 1675
    if-eqz v3, :cond_24

    .line 1676
    .line 1677
    move v1, v6

    .line 1678
    goto :goto_17

    .line 1679
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 1680
    .line 1681
    goto :goto_16

    .line 1682
    :cond_25
    move v1, v4

    .line 1683
    :goto_17
    move v3, v4

    .line 1684
    :goto_18
    iget-object v9, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 1685
    .line 1686
    array-length v10, v9

    .line 1687
    if-ge v3, v10, :cond_27

    .line 1688
    .line 1689
    aget-object v9, v9, v3

    .line 1690
    .line 1691
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1692
    .line 1693
    .line 1694
    move-result v9

    .line 1695
    if-eqz v9, :cond_26

    .line 1696
    .line 1697
    move v3, v6

    .line 1698
    goto :goto_19

    .line 1699
    :cond_26
    add-int/lit8 v3, v3, 0x1

    .line 1700
    .line 1701
    goto :goto_18

    .line 1702
    :cond_27
    move v3, v4

    .line 1703
    :goto_19
    move v9, v4

    .line 1704
    :goto_1a
    iget-object v10, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 1705
    .line 1706
    array-length v11, v10

    .line 1707
    if-ge v9, v11, :cond_29

    .line 1708
    .line 1709
    aget-object v10, v10, v9

    .line 1710
    .line 1711
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v10

    .line 1715
    if-eqz v10, :cond_28

    .line 1716
    .line 1717
    move v3, v6

    .line 1718
    goto :goto_1b

    .line 1719
    :cond_28
    add-int/lit8 v9, v9, 0x1

    .line 1720
    .line 1721
    goto :goto_1a

    .line 1722
    :cond_29
    :goto_1b
    move v9, v4

    .line 1723
    :goto_1c
    iget-object v10, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 1724
    .line 1725
    array-length v11, v10

    .line 1726
    if-ge v9, v11, :cond_2b

    .line 1727
    .line 1728
    aget-object v10, v10, v9

    .line 1729
    .line 1730
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1731
    .line 1732
    .line 1733
    move-result v10

    .line 1734
    if-eqz v10, :cond_2a

    .line 1735
    .line 1736
    move v9, v6

    .line 1737
    goto :goto_1d

    .line 1738
    :cond_2a
    add-int/lit8 v9, v9, 0x1

    .line 1739
    .line 1740
    goto :goto_1c

    .line 1741
    :cond_2b
    move v9, v4

    .line 1742
    :goto_1d
    move v10, v4

    .line 1743
    :goto_1e
    iget-object v11, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 1744
    .line 1745
    array-length v12, v11

    .line 1746
    if-ge v10, v12, :cond_2d

    .line 1747
    .line 1748
    aget-object v11, v11, v10

    .line 1749
    .line 1750
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1751
    .line 1752
    .line 1753
    move-result v11

    .line 1754
    if-eqz v11, :cond_2c

    .line 1755
    .line 1756
    move v10, v6

    .line 1757
    goto :goto_1f

    .line 1758
    :cond_2c
    add-int/lit8 v10, v10, 0x1

    .line 1759
    .line 1760
    goto :goto_1e

    .line 1761
    :cond_2d
    move v10, v4

    .line 1762
    :goto_1f
    move v11, v4

    .line 1763
    :goto_20
    iget-object v12, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 1764
    .line 1765
    array-length v13, v12

    .line 1766
    if-ge v11, v13, :cond_2f

    .line 1767
    .line 1768
    aget-object v12, v12, v11

    .line 1769
    .line 1770
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1771
    .line 1772
    .line 1773
    move-result v12

    .line 1774
    if-eqz v12, :cond_2e

    .line 1775
    .line 1776
    move v11, v6

    .line 1777
    goto :goto_21

    .line 1778
    :cond_2e
    add-int/lit8 v11, v11, 0x1

    .line 1779
    .line 1780
    goto :goto_20

    .line 1781
    :cond_2f
    move v11, v4

    .line 1782
    :goto_21
    move v12, v4

    .line 1783
    :goto_22
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 1784
    .line 1785
    array-length v4, v13

    .line 1786
    if-ge v12, v4, :cond_31

    .line 1787
    .line 1788
    aget-object v4, v13, v12

    .line 1789
    .line 1790
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1791
    .line 1792
    .line 1793
    move-result v4

    .line 1794
    if-eqz v4, :cond_30

    .line 1795
    .line 1796
    move v4, v6

    .line 1797
    goto :goto_23

    .line 1798
    :cond_30
    add-int/lit8 v12, v12, 0x1

    .line 1799
    .line 1800
    const/4 v4, 0x0

    .line 1801
    goto :goto_22

    .line 1802
    :cond_31
    const/4 v4, 0x0

    .line 1803
    :goto_23
    const/4 v12, 0x0

    .line 1804
    :goto_24
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 1805
    .line 1806
    array-length v7, v13

    .line 1807
    if-ge v12, v7, :cond_33

    .line 1808
    .line 1809
    aget-object v7, v13, v12

    .line 1810
    .line 1811
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1812
    .line 1813
    .line 1814
    move-result v7

    .line 1815
    if-eqz v7, :cond_32

    .line 1816
    .line 1817
    move v7, v6

    .line 1818
    goto :goto_25

    .line 1819
    :cond_32
    add-int/lit8 v12, v12, 0x1

    .line 1820
    .line 1821
    const/16 v7, 0xa

    .line 1822
    .line 1823
    goto :goto_24

    .line 1824
    :cond_33
    const/4 v7, 0x0

    .line 1825
    :goto_25
    const/4 v12, 0x0

    .line 1826
    :goto_26
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 1827
    .line 1828
    array-length v8, v13

    .line 1829
    if-ge v12, v8, :cond_35

    .line 1830
    .line 1831
    aget-object v8, v13, v12

    .line 1832
    .line 1833
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1834
    .line 1835
    .line 1836
    move-result v8

    .line 1837
    if-eqz v8, :cond_34

    .line 1838
    .line 1839
    move v8, v6

    .line 1840
    goto :goto_27

    .line 1841
    :cond_34
    add-int/lit8 v12, v12, 0x1

    .line 1842
    .line 1843
    const/16 v8, 0x9

    .line 1844
    .line 1845
    goto :goto_26

    .line 1846
    :cond_35
    const/4 v8, 0x0

    .line 1847
    :goto_27
    const/4 v12, 0x0

    .line 1848
    :goto_28
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 1849
    .line 1850
    array-length v15, v13

    .line 1851
    if-ge v12, v15, :cond_37

    .line 1852
    .line 1853
    aget-object v13, v13, v12

    .line 1854
    .line 1855
    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1856
    .line 1857
    .line 1858
    move-result v13

    .line 1859
    if-eqz v13, :cond_36

    .line 1860
    .line 1861
    move v12, v6

    .line 1862
    goto :goto_29

    .line 1863
    :cond_36
    add-int/lit8 v12, v12, 0x1

    .line 1864
    .line 1865
    const/4 v15, 0x6

    .line 1866
    goto :goto_28

    .line 1867
    :cond_37
    const/4 v12, 0x0

    .line 1868
    :goto_29
    const/4 v13, 0x0

    .line 1869
    :goto_2a
    iget-object v15, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    .line 1870
    .line 1871
    array-length v14, v15

    .line 1872
    iget-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 1873
    .line 1874
    if-ge v13, v14, :cond_39

    .line 1875
    .line 1876
    aget-object v14, v15, v13

    .line 1877
    .line 1878
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1879
    .line 1880
    .line 1881
    move-result v14

    .line 1882
    if-eqz v14, :cond_38

    .line 1883
    .line 1884
    if-eqz v6, :cond_39

    .line 1885
    .line 1886
    const/4 v13, 0x1

    .line 1887
    iput-boolean v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1888
    .line 1889
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1890
    .line 1891
    if-eqz v13, :cond_39

    .line 1892
    .line 1893
    const/high16 v14, 0x3f000000    # 0.5f

    .line 1894
    .line 1895
    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 1896
    .line 1897
    .line 1898
    goto :goto_2b

    .line 1899
    :cond_38
    add-int/lit8 v13, v13, 0x1

    .line 1900
    .line 1901
    const/4 v6, 0x1

    .line 1902
    const/4 v14, 0x3

    .line 1903
    goto :goto_2a

    .line 1904
    :cond_39
    :goto_2b
    const/4 v13, 0x0

    .line 1905
    :goto_2c
    iget-object v14, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    .line 1906
    .line 1907
    array-length v15, v14

    .line 1908
    if-ge v13, v15, :cond_3b

    .line 1909
    .line 1910
    aget-object v14, v14, v13

    .line 1911
    .line 1912
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1913
    .line 1914
    .line 1915
    move-result v14

    .line 1916
    if-eqz v14, :cond_3a

    .line 1917
    .line 1918
    if-eqz v6, :cond_3b

    .line 1919
    .line 1920
    const/4 v13, 0x1

    .line 1921
    iput-boolean v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1922
    .line 1923
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1924
    .line 1925
    if-eqz v13, :cond_3b

    .line 1926
    .line 1927
    const v14, 0x3f866666    # 1.05f

    .line 1928
    .line 1929
    .line 1930
    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 1931
    .line 1932
    .line 1933
    goto :goto_2d

    .line 1934
    :cond_3a
    add-int/lit8 v13, v13, 0x1

    .line 1935
    .line 1936
    goto :goto_2c

    .line 1937
    :cond_3b
    :goto_2d
    const/4 v13, 0x0

    .line 1938
    :goto_2e
    iget-object v14, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    .line 1939
    .line 1940
    array-length v15, v14

    .line 1941
    if-ge v13, v15, :cond_3d

    .line 1942
    .line 1943
    aget-object v14, v14, v13

    .line 1944
    .line 1945
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1946
    .line 1947
    .line 1948
    move-result v14

    .line 1949
    if-eqz v14, :cond_3c

    .line 1950
    .line 1951
    if-eqz v6, :cond_3d

    .line 1952
    .line 1953
    const/4 v13, 0x1

    .line 1954
    iput-boolean v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1955
    .line 1956
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1957
    .line 1958
    if-eqz v13, :cond_3d

    .line 1959
    .line 1960
    const v14, 0x3f8ccccd    # 1.1f

    .line 1961
    .line 1962
    .line 1963
    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 1964
    .line 1965
    .line 1966
    goto :goto_2f

    .line 1967
    :cond_3c
    add-int/lit8 v13, v13, 0x1

    .line 1968
    .line 1969
    goto :goto_2e

    .line 1970
    :cond_3d
    :goto_2f
    const/4 v13, 0x0

    .line 1971
    :goto_30
    iget-object v14, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    .line 1972
    .line 1973
    array-length v15, v14

    .line 1974
    if-ge v13, v15, :cond_3f

    .line 1975
    .line 1976
    aget-object v14, v14, v13

    .line 1977
    .line 1978
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1979
    .line 1980
    .line 1981
    move-result v14

    .line 1982
    if-eqz v14, :cond_3e

    .line 1983
    .line 1984
    if-eqz v6, :cond_3f

    .line 1985
    .line 1986
    const/4 v0, 0x1

    .line 1987
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1988
    .line 1989
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1990
    .line 1991
    if-eqz v0, :cond_3f

    .line 1992
    .line 1993
    const v13, 0x3f933333    # 1.15f

    .line 1994
    .line 1995
    .line 1996
    invoke-virtual {v0, v13}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 1997
    .line 1998
    .line 1999
    goto :goto_31

    .line 2000
    :cond_3e
    add-int/lit8 v13, v13, 0x1

    .line 2001
    .line 2002
    goto :goto_30

    .line 2003
    :cond_3f
    :goto_31
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 2004
    .line 2005
    if-nez v0, :cond_40

    .line 2006
    .line 2007
    if-eqz v6, :cond_40

    .line 2008
    .line 2009
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2010
    .line 2011
    if-eqz v0, :cond_40

    .line 2012
    .line 2013
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2014
    .line 2015
    invoke-virtual {v0, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 2016
    .line 2017
    .line 2018
    :cond_40
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 2019
    .line 2020
    iget-object v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 2021
    .line 2022
    if-nez v0, :cond_41

    .line 2023
    .line 2024
    if-eqz v3, :cond_41

    .line 2025
    .line 2026
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 2027
    .line 2028
    if-nez v0, :cond_4b

    .line 2029
    .line 2030
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2031
    .line 2032
    .line 2033
    const/4 v0, 0x1

    .line 2034
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 2035
    .line 2036
    const/4 v0, 0x3

    .line 2037
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2038
    .line 2039
    .line 2040
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2041
    .line 2042
    .line 2043
    goto/16 :goto_32

    .line 2044
    .line 2045
    :cond_41
    if-nez v0, :cond_42

    .line 2046
    .line 2047
    if-eqz v9, :cond_42

    .line 2048
    .line 2049
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 2050
    .line 2051
    if-nez v0, :cond_4b

    .line 2052
    .line 2053
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2054
    .line 2055
    .line 2056
    const/4 v0, 0x1

    .line 2057
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 2058
    .line 2059
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2060
    .line 2061
    .line 2062
    move-result-wide v0

    .line 2063
    const/4 v2, 0x4

    .line 2064
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2065
    .line 2066
    .line 2067
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 2068
    .line 2069
    int-to-long v3, v3

    .line 2070
    add-long/2addr v0, v3

    .line 2071
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2072
    .line 2073
    .line 2074
    goto/16 :goto_32

    .line 2075
    .line 2076
    :cond_42
    if-nez v0, :cond_43

    .line 2077
    .line 2078
    if-eqz v10, :cond_43

    .line 2079
    .line 2080
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 2081
    .line 2082
    if-nez v0, :cond_4b

    .line 2083
    .line 2084
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2085
    .line 2086
    .line 2087
    const/4 v0, 0x1

    .line 2088
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 2089
    .line 2090
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2091
    .line 2092
    .line 2093
    move-result-wide v0

    .line 2094
    const/4 v2, 0x5

    .line 2095
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2096
    .line 2097
    .line 2098
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 2099
    .line 2100
    int-to-long v3, v3

    .line 2101
    add-long/2addr v0, v3

    .line 2102
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2103
    .line 2104
    .line 2105
    goto/16 :goto_32

    .line 2106
    .line 2107
    :cond_43
    if-nez v0, :cond_45

    .line 2108
    .line 2109
    if-eqz v11, :cond_45

    .line 2110
    .line 2111
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 2112
    .line 2113
    if-nez v0, :cond_4b

    .line 2114
    .line 2115
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2116
    .line 2117
    .line 2118
    const/4 v0, 0x1

    .line 2119
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 2120
    .line 2121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2122
    .line 2123
    .line 2124
    move-result-wide v0

    .line 2125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2126
    .line 2127
    const-string v4, "in video Real Multi Window State : "

    .line 2128
    .line 2129
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2130
    .line 2131
    .line 2132
    iget-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 2133
    .line 2134
    invoke-static {v2, v3, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2135
    .line 2136
    .line 2137
    iget-boolean v2, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 2138
    .line 2139
    if-eqz v2, :cond_44

    .line 2140
    .line 2141
    const/16 v2, 0x8

    .line 2142
    .line 2143
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2144
    .line 2145
    .line 2146
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 2147
    .line 2148
    int-to-long v3, v3

    .line 2149
    add-long/2addr v0, v3

    .line 2150
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2151
    .line 2152
    .line 2153
    goto/16 :goto_32

    .line 2154
    .line 2155
    :cond_44
    const/4 v2, 0x7

    .line 2156
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2157
    .line 2158
    .line 2159
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 2160
    .line 2161
    int-to-long v3, v3

    .line 2162
    add-long/2addr v0, v3

    .line 2163
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2164
    .line 2165
    .line 2166
    goto/16 :goto_32

    .line 2167
    .line 2168
    :cond_45
    if-nez v0, :cond_46

    .line 2169
    .line 2170
    if-eqz v4, :cond_46

    .line 2171
    .line 2172
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 2173
    .line 2174
    if-nez v0, :cond_4b

    .line 2175
    .line 2176
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2177
    .line 2178
    .line 2179
    const/4 v0, 0x1

    .line 2180
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 2181
    .line 2182
    const/16 v0, 0xe

    .line 2183
    .line 2184
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2185
    .line 2186
    .line 2187
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2188
    .line 2189
    .line 2190
    goto/16 :goto_32

    .line 2191
    .line 2192
    :cond_46
    if-nez v0, :cond_47

    .line 2193
    .line 2194
    if-eqz v7, :cond_47

    .line 2195
    .line 2196
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 2197
    .line 2198
    if-nez v0, :cond_4b

    .line 2199
    .line 2200
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2201
    .line 2202
    .line 2203
    const/4 v0, 0x1

    .line 2204
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 2205
    .line 2206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2207
    .line 2208
    .line 2209
    move-result-wide v0

    .line 2210
    const/4 v2, 0x6

    .line 2211
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2212
    .line 2213
    .line 2214
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 2215
    .line 2216
    int-to-long v3, v3

    .line 2217
    add-long/2addr v0, v3

    .line 2218
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2219
    .line 2220
    .line 2221
    goto :goto_32

    .line 2222
    :cond_47
    if-nez v0, :cond_48

    .line 2223
    .line 2224
    if-eqz v8, :cond_48

    .line 2225
    .line 2226
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 2227
    .line 2228
    if-nez v0, :cond_4b

    .line 2229
    .line 2230
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2231
    .line 2232
    .line 2233
    const/4 v0, 0x1

    .line 2234
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 2235
    .line 2236
    const/16 v0, 0x9

    .line 2237
    .line 2238
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2239
    .line 2240
    .line 2241
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2242
    .line 2243
    .line 2244
    goto :goto_32

    .line 2245
    :cond_48
    if-nez v0, :cond_49

    .line 2246
    .line 2247
    if-eqz v12, :cond_49

    .line 2248
    .line 2249
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 2250
    .line 2251
    if-nez v0, :cond_4b

    .line 2252
    .line 2253
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2254
    .line 2255
    .line 2256
    const/4 v0, 0x1

    .line 2257
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 2258
    .line 2259
    const/16 v0, 0xa

    .line 2260
    .line 2261
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2262
    .line 2263
    .line 2264
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2265
    .line 2266
    .line 2267
    goto :goto_32

    .line 2268
    :cond_49
    if-nez v0, :cond_4a

    .line 2269
    .line 2270
    if-eqz v1, :cond_4a

    .line 2271
    .line 2272
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 2273
    .line 2274
    if-nez v0, :cond_4b

    .line 2275
    .line 2276
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2277
    .line 2278
    .line 2279
    const/4 v0, 0x1

    .line 2280
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 2281
    .line 2282
    const-string/jumbo v0, "setUIMode from UI function(2)"

    .line 2283
    .line 2284
    .line 2285
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    .line 2287
    .line 2288
    const/4 v0, 0x2

    .line 2289
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2290
    .line 2291
    .line 2292
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2293
    .line 2294
    .line 2295
    goto :goto_32

    .line 2296
    :cond_4a
    const/4 v0, 0x2

    .line 2297
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2298
    .line 2299
    .line 2300
    move-result-wide v3

    .line 2301
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2302
    .line 2303
    .line 2304
    const-string/jumbo v1, "setUIMode from UI function(3)"

    .line 2305
    .line 2306
    .line 2307
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    .line 2309
    .line 2310
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2311
    .line 2312
    .line 2313
    iget v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 2314
    .line 2315
    int-to-long v1, v1

    .line 2316
    add-long/2addr v3, v1

    .line 2317
    invoke-virtual {v6, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2318
    .line 2319
    .line 2320
    :catch_4
    :cond_4b
    :goto_32
    return-void

    .line 2321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
