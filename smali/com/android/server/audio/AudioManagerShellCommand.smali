.class public final Lcom/android/server/audio/AudioManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 16
    .line 17
    .line 18
    const-string v6, "Error: wrong format specified for surroundFormat"

    .line 19
    .line 20
    const-string v7, "Error: invalid value of surroundFormat"

    .line 21
    .line 22
    const-string v8, "Error: no surroundFormat specified"

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const/high16 v10, 0x10000000

    .line 26
    .line 27
    const/high16 v11, 0x4000000

    .line 28
    .line 29
    const-string/jumbo v12, "ro.product_ship"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v13, "calling AudioManager.adjustStreamVolume("

    .line 33
    .line 34
    .line 35
    const-string v14, ", 0)"

    .line 36
    .line 37
    const-string v15, ", "

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v16

    .line 43
    sparse-switch v16, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    :goto_0
    move v1, v3

    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_0
    const-string/jumbo v2, "set-volume"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/16 v1, 0x10

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :sswitch_1
    const-string/jumbo v2, "get-encoded-surround-mode"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/16 v1, 0xf

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_2
    const-string/jumbo v2, "get-sound-dose-value"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/16 v1, 0xe

    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :sswitch_3
    const-string/jumbo v2, "sendScpm"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const/16 v1, 0xd

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :sswitch_4
    const-string/jumbo v2, "get-is-surround-format-enabled"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    const/16 v1, 0xc

    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :sswitch_5
    const-string/jumbo v2, "set-sound-dose-value"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_6

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    const/16 v1, 0xb

    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :sswitch_6
    const-string/jumbo v2, "set-device-volume"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_7

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_7
    const/16 v1, 0xa

    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :sswitch_7
    const-string/jumbo v2, "reset-sound-dose-timeout"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_8

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_8
    const/16 v1, 0x9

    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :sswitch_8
    const-string v2, "adj-mute"

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_9

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_9
    const/16 v1, 0x8

    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :sswitch_9
    const-string/jumbo v2, "clearScpm"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_a

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_a
    const/4 v1, 0x7

    .line 186
    goto :goto_1

    .line 187
    :sswitch_a
    const-string/jumbo v2, "set-group-volume"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-nez v1, :cond_b

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_b
    const/4 v1, 0x6

    .line 199
    goto :goto_1

    .line 200
    :sswitch_b
    const-string/jumbo v2, "set-surround-format-enabled"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_c

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_c
    const/4 v1, 0x5

    .line 212
    goto :goto_1

    .line 213
    :sswitch_c
    const-string v2, "adj-group-volume"

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_d

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_d
    const/4 v1, 0x4

    .line 224
    goto :goto_1

    .line 225
    :sswitch_d
    const-string v2, "adj-volume"

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-nez v1, :cond_e

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_e
    const/4 v1, 0x3

    .line 236
    goto :goto_1

    .line 237
    :sswitch_e
    const-string v2, "adj-unmute"

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_f

    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_f
    const/4 v1, 0x2

    .line 248
    goto :goto_1

    .line 249
    :sswitch_f
    const-string/jumbo v2, "set-encoded-surround-mode"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_10

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_10
    move v1, v5

    .line 261
    goto :goto_1

    .line 262
    :sswitch_10
    const-string/jumbo v2, "set-ringer-mode"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_11

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_11
    move v1, v4

    .line 274
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 275
    .line 276
    .line 277
    return v4

    .line 278
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 279
    .line 280
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    const-class v2, Landroid/media/AudioManager;

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Landroid/media/AudioManager;

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const-string/jumbo v5, "calling AudioManager.setStreamVolume("

    .line 303
    .line 304
    .line 305
    invoke-static {v2, v3, v5, v15, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 313
    .line 314
    .line 315
    return v4

    .line 316
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 317
    .line 318
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 319
    .line 320
    const-class v2, Landroid/media/AudioManager;

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Landroid/media/AudioManager;

    .line 327
    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v3, "Encoded surround mode: "

    .line 335
    .line 336
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return v4

    .line 354
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 355
    .line 356
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    const-class v2, Landroid/media/AudioManager;

    .line 359
    .line 360
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Landroid/media/AudioManager;

    .line 365
    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v3, "Sound dose value: "

    .line 373
    .line 374
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Landroid/media/AudioManager;->getCsd()F

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return v4

    .line 392
    :pswitch_3
    invoke-static {v12, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-nez v1, :cond_12

    .line 397
    .line 398
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 399
    .line 400
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 401
    .line 402
    new-instance v1, Landroid/content/Intent;

    .line 403
    .line 404
    const-string/jumbo v2, "com.samsung.android.scpm.policy.UPDATE.Audio"

    .line 405
    .line 406
    .line 407
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    .line 415
    .line 416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 417
    .line 418
    .line 419
    move-result-wide v2

    .line 420
    :try_start_0
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 421
    .line 422
    invoke-virtual {v0, v1, v5, v9, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    .line 424
    .line 425
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 426
    .line 427
    .line 428
    goto :goto_2

    .line 429
    :catchall_0
    move-exception v0

    .line 430
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    .line 432
    .line 433
    throw v0

    .line 434
    :cond_12
    :goto_2
    return v4

    .line 435
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    if-nez v1, :cond_13

    .line 440
    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    :goto_3
    move v4, v5

    .line 449
    goto :goto_4

    .line 450
    :cond_13
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    if-gez v1, :cond_14

    .line 455
    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    goto :goto_3

    .line 464
    :cond_14
    iget-object v2, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 465
    .line 466
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 467
    .line 468
    const-class v3, Landroid/media/AudioManager;

    .line 469
    .line 470
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Landroid/media/AudioManager;

    .line 475
    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    const-string v3, "Value of enabled for "

    .line 481
    .line 482
    const-string v5, " is: "

    .line 483
    .line 484
    invoke-static {v1, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->isSurroundFormatEnabled(I)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    goto :goto_4

    .line 503
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    goto :goto_3

    .line 511
    :goto_4
    return v4

    .line 512
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    if-nez v1, :cond_15

    .line 517
    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    const-string v1, "Error: no sound dose value specified"

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    :goto_5
    move v4, v5

    .line 528
    goto :goto_6

    .line 529
    :cond_15
    :try_start_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 530
    .line 531
    .line 532
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 533
    const/4 v2, 0x0

    .line 534
    cmpg-float v2, v1, v2

    .line 535
    .line 536
    if-gez v2, :cond_16

    .line 537
    .line 538
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    const-string v1, "Error: invalid value of sound dose"

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    goto :goto_5

    .line 548
    :cond_16
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 549
    .line 550
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 551
    .line 552
    const-class v2, Landroid/media/AudioManager;

    .line 553
    .line 554
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    check-cast v0, Landroid/media/AudioManager;

    .line 559
    .line 560
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setCsd(F)V

    .line 561
    .line 562
    .line 563
    goto :goto_6

    .line 564
    :catch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    const-string v1, "Error: wrong format specified for sound dose"

    .line 569
    .line 570
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    goto :goto_5

    .line 574
    :goto_6
    return v4

    .line 575
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 576
    .line 577
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 578
    .line 579
    const-string/jumbo v2, "audio_device_volume"

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    check-cast v1, Landroid/media/AudioDeviceVolumeManager;

    .line 587
    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 597
    .line 598
    .line 599
    move-result v5

    .line 600
    new-instance v6, Landroid/media/VolumeInfo$Builder;

    .line 601
    .line 602
    invoke-direct {v6, v2}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v6, v3}, Landroid/media/VolumeInfo$Builder;->setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v2}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    .line 614
    .line 615
    const-string/jumbo v6, "foo"

    .line 616
    .line 617
    .line 618
    invoke-direct {v3, v5, v6}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    const-string/jumbo v6, "calling AudioDeviceVolumeManager.setDeviceVolume("

    .line 628
    .line 629
    .line 630
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string v6, ")"

    .line 643
    .line 644
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1, v2, v3}, Landroid/media/AudioDeviceVolumeManager;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;)V

    .line 655
    .line 656
    .line 657
    return v4

    .line 658
    :pswitch_7
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 659
    .line 660
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 661
    .line 662
    const-class v2, Landroid/media/AudioManager;

    .line 663
    .line 664
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    check-cast v1, Landroid/media/AudioManager;

    .line 669
    .line 670
    const/high16 v2, -0x40800000    # -1.0f

    .line 671
    .line 672
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setCsd(F)V

    .line 673
    .line 674
    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    const-string v1, "Reset sound dose momentary exposure timeout"

    .line 680
    .line 681
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    return v4

    .line 685
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 686
    .line 687
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 688
    .line 689
    const-class v2, Landroid/media/AudioManager;

    .line 690
    .line 691
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    check-cast v1, Landroid/media/AudioManager;

    .line 696
    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    const-string v3, ", AudioManager.ADJUST_MUTE, 0)"

    .line 706
    .line 707
    invoke-static {v2, v0, v13, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    const/16 v0, -0x64

    .line 711
    .line 712
    invoke-virtual {v1, v2, v0, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 713
    .line 714
    .line 715
    return v4

    .line 716
    :pswitch_9
    invoke-static {v12, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-nez v1, :cond_17

    .line 721
    .line 722
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 723
    .line 724
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 725
    .line 726
    new-instance v1, Landroid/content/Intent;

    .line 727
    .line 728
    const-string/jumbo v2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 729
    .line 730
    .line 731
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 738
    .line 739
    .line 740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 741
    .line 742
    .line 743
    move-result-wide v2

    .line 744
    :try_start_3
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 745
    .line 746
    invoke-virtual {v0, v1, v5, v9, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 747
    .line 748
    .line 749
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    .line 751
    .line 752
    goto :goto_7

    .line 753
    :catchall_1
    move-exception v0

    .line 754
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    .line 756
    .line 757
    throw v0

    .line 758
    :cond_17
    :goto_7
    return v4

    .line 759
    :pswitch_a
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 760
    .line 761
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 762
    .line 763
    const-class v2, Landroid/media/AudioManager;

    .line 764
    .line 765
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    check-cast v1, Landroid/media/AudioManager;

    .line 770
    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 772
    .line 773
    .line 774
    move-result v2

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 776
    .line 777
    .line 778
    move-result v3

    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    const-string/jumbo v5, "calling AudioManager.setVolumeGroupVolumeIndex("

    .line 784
    .line 785
    .line 786
    invoke-static {v2, v3, v5, v15, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v5

    .line 790
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setVolumeGroupVolumeIndex(III)V

    .line 794
    .line 795
    .line 796
    return v4

    .line 797
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    if-nez v1, :cond_18

    .line 806
    .line 807
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    :goto_8
    move v4, v5

    .line 815
    goto :goto_9

    .line 816
    :cond_18
    if-nez v2, :cond_19

    .line 817
    .line 818
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    const-string v1, "Error: no enabled value for surroundFormat specified"

    .line 823
    .line 824
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    goto :goto_8

    .line 828
    :cond_19
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 833
    .line 834
    .line 835
    move-result v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 836
    if-gez v1, :cond_1a

    .line 837
    .line 838
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    goto :goto_8

    .line 846
    :cond_1a
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 847
    .line 848
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 849
    .line 850
    const-class v3, Landroid/media/AudioManager;

    .line 851
    .line 852
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    check-cast v0, Landroid/media/AudioManager;

    .line 857
    .line 858
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setSurroundFormatEnabled(IZ)Z

    .line 859
    .line 860
    .line 861
    goto :goto_9

    .line 862
    :catch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    goto :goto_8

    .line 870
    :goto_9
    return v4

    .line 871
    :pswitch_c
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 872
    .line 873
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 874
    .line 875
    const-class v2, Landroid/media/AudioManager;

    .line 876
    .line 877
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    check-cast v1, Landroid/media/AudioManager;

    .line 882
    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 884
    .line 885
    .line 886
    move-result v2

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readDirectionArg()I

    .line 888
    .line 889
    .line 890
    move-result v3

    .line 891
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    const-string/jumbo v5, "calling AudioManager.adjustVolumeGroupVolume("

    .line 896
    .line 897
    .line 898
    invoke-static {v2, v3, v5, v15, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v5

    .line 902
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustVolumeGroupVolume(III)V

    .line 906
    .line 907
    .line 908
    return v4

    .line 909
    :pswitch_d
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 910
    .line 911
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 912
    .line 913
    const-class v2, Landroid/media/AudioManager;

    .line 914
    .line 915
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    check-cast v1, Landroid/media/AudioManager;

    .line 920
    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 922
    .line 923
    .line 924
    move-result v2

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readDirectionArg()I

    .line 926
    .line 927
    .line 928
    move-result v3

    .line 929
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-static {v2, v3, v13, v15, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v5

    .line 937
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 941
    .line 942
    .line 943
    return v4

    .line 944
    :pswitch_e
    iget-object v1, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 945
    .line 946
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 947
    .line 948
    const-class v2, Landroid/media/AudioManager;

    .line 949
    .line 950
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    check-cast v1, Landroid/media/AudioManager;

    .line 955
    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    .line 957
    .line 958
    .line 959
    move-result v2

    .line 960
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    const-string v3, ", AudioManager.ADJUST_UNMUTE, 0)"

    .line 965
    .line 966
    invoke-static {v2, v0, v13, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    const/16 v0, 0x64

    .line 970
    .line 971
    invoke-virtual {v1, v2, v0, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 972
    .line 973
    .line 974
    return v4

    .line 975
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    if-nez v1, :cond_1b

    .line 980
    .line 981
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    const-string v1, "Error: no encodedSurroundMode specified"

    .line 986
    .line 987
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    :goto_a
    move v4, v5

    .line 991
    goto :goto_b

    .line 992
    :cond_1b
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 993
    .line 994
    .line 995
    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    .line 996
    if-gez v1, :cond_1c

    .line 997
    .line 998
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    const-string v1, "Error: invalid value of encodedSurroundMode"

    .line 1003
    .line 1004
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    goto :goto_a

    .line 1008
    :cond_1c
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 1009
    .line 1010
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1011
    .line 1012
    const-class v2, Landroid/media/AudioManager;

    .line 1013
    .line 1014
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    check-cast v0, Landroid/media/AudioManager;

    .line 1019
    .line 1020
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setEncodedSurroundMode(I)Z

    .line 1021
    .line 1022
    .line 1023
    goto :goto_b

    .line 1024
    :catch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    const-string v1, "Error: wrong format specified for encoded surround mode"

    .line 1029
    .line 1030
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    goto :goto_a

    .line 1034
    :goto_b
    return v4

    .line 1035
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v1

    .line 1039
    if-nez v1, :cond_1d

    .line 1040
    .line 1041
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    const-string v1, "Error: no ringer mode specified"

    .line 1046
    .line 1047
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    :goto_c
    move v4, v5

    .line 1051
    goto :goto_10

    .line 1052
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1053
    .line 1054
    .line 1055
    move-result v2

    .line 1056
    sparse-switch v2, :sswitch_data_1

    .line 1057
    .line 1058
    .line 1059
    :goto_d
    move v1, v3

    .line 1060
    goto :goto_e

    .line 1061
    :sswitch_11
    const-string v2, "VIBRATE"

    .line 1062
    .line 1063
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v1

    .line 1067
    if-nez v1, :cond_1e

    .line 1068
    .line 1069
    goto :goto_d

    .line 1070
    :cond_1e
    const/4 v1, 0x2

    .line 1071
    goto :goto_e

    .line 1072
    :sswitch_12
    const-string v2, "SILENT"

    .line 1073
    .line 1074
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v1

    .line 1078
    if-nez v1, :cond_1f

    .line 1079
    .line 1080
    goto :goto_d

    .line 1081
    :cond_1f
    move v1, v5

    .line 1082
    goto :goto_e

    .line 1083
    :sswitch_13
    const-string v2, "NORMAL"

    .line 1084
    .line 1085
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v1

    .line 1089
    if-nez v1, :cond_20

    .line 1090
    .line 1091
    goto :goto_d

    .line 1092
    :cond_20
    move v1, v4

    .line 1093
    :goto_e
    packed-switch v1, :pswitch_data_1

    .line 1094
    .line 1095
    .line 1096
    move v2, v3

    .line 1097
    goto :goto_f

    .line 1098
    :pswitch_11
    move v2, v5

    .line 1099
    goto :goto_f

    .line 1100
    :pswitch_12
    move v2, v4

    .line 1101
    goto :goto_f

    .line 1102
    :pswitch_13
    const/4 v2, 0x2

    .line 1103
    :goto_f
    invoke-static {v2}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v1

    .line 1107
    if-nez v1, :cond_21

    .line 1108
    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    const-string v1, "Error: invalid value of ringerMode, should be one of NORMAL|SILENT|VIBRATE"

    .line 1114
    .line 1115
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    goto :goto_c

    .line 1119
    :cond_21
    iget-object v0, v0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 1120
    .line 1121
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1122
    .line 1123
    const-class v1, Landroid/media/AudioManager;

    .line 1124
    .line 1125
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    check-cast v0, Landroid/media/AudioManager;

    .line 1130
    .line 1131
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1132
    .line 1133
    .line 1134
    :goto_10
    return v4

    .line 1135
    :sswitch_data_0
    .sparse-switch
        -0x7352c258 -> :sswitch_10
        -0x6fa638d8 -> :sswitch_f
        -0x67d35be8 -> :sswitch_e
        -0x6610e100 -> :sswitch_d
        -0x5710ee72 -> :sswitch_c
        -0x4fdec891 -> :sswitch_b
        -0x4e4a0a4d -> :sswitch_a
        -0x4bc0fbc6 -> :sswitch_9
        -0x422fb481 -> :sswitch_8
        -0x1b6c3313 -> :sswitch_7
        0x1c836046 -> :sswitch_6
        0x339d8d4a -> :sswitch_5
        0x37e12d0e -> :sswitch_4
        0x4a5a07f5 -> :sswitch_3
        0x580780d6 -> :sswitch_2
        0x5e162b1c -> :sswitch_1
        0x6a2942e5 -> :sswitch_0
    .end sparse-switch

    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    :sswitch_data_1
    .sparse-switch
        -0x76664f19 -> :sswitch_13
        -0x6e3577ab -> :sswitch_12
        0x45b2014f -> :sswitch_11
    .end sparse-switch

    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Audio manager commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    const-string v0, "  set-surround-format-enabled SURROUND_FORMAT IS_ENABLED"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "    Enables/disabled the SURROUND_FORMAT based on IS_ENABLED"

    .line 29
    .line 30
    const-string v1, "  get-is-surround-format-enabled SURROUND_FORMAT"

    .line 31
    .line 32
    const-string v2, "    Returns if the SURROUND_FORMAT is enabled"

    .line 33
    .line 34
    const-string v3, "  set-encoded-surround-mode SURROUND_SOUND_MODE"

    .line 35
    .line 36
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "    Sets the encoded surround sound mode to SURROUND_SOUND_MODE"

    .line 40
    .line 41
    const-string v1, "  get-encoded-surround-mode"

    .line 42
    .line 43
    const-string v2, "    Returns the encoded surround sound mode"

    .line 44
    .line 45
    const-string v3, "  set-sound-dose-value"

    .line 46
    .line 47
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "    Sets the current sound dose value"

    .line 51
    .line 52
    const-string v1, "  get-sound-dose-value"

    .line 53
    .line 54
    const-string v2, "    Returns the current sound dose value"

    .line 55
    .line 56
    const-string v3, "  reset-sound-dose-timeout"

    .line 57
    .line 58
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "    Resets the sound dose timeout used for momentary exposure"

    .line 62
    .line 63
    const-string v1, "  set-ringer-mode NORMAL|SILENT|VIBRATE"

    .line 64
    .line 65
    const-string v2, "    Sets the Ringer mode to one of NORMAL|SILENT|VIBRATE"

    .line 66
    .line 67
    const-string v3, "  set-volume STREAM_TYPE VOLUME_INDEX"

    .line 68
    .line 69
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v0, "    Sets the volume for STREAM_TYPE to VOLUME_INDEX"

    .line 73
    .line 74
    const-string v1, "  set-device-volume STREAM_TYPE VOLUME_INDEX NATIVE_DEVICE_TYPE"

    .line 75
    .line 76
    const-string v2, "    Sets for NATIVE_DEVICE_TYPE the STREAM_TYPE volume to VOLUME_INDEX"

    .line 77
    .line 78
    const-string v3, "  adj-mute STREAM_TYPE"

    .line 79
    .line 80
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "    mutes the STREAM_TYPE"

    .line 84
    .line 85
    const-string v1, "  adj-unmute STREAM_TYPE"

    .line 86
    .line 87
    const-string v2, "    unmutes the STREAM_TYPE"

    .line 88
    .line 89
    const-string v3, "  adj-volume STREAM_TYPE <RAISE|LOWER|MUTE|UNMUTE>"

    .line 90
    .line 91
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v0, "    Adjusts the STREAM_TYPE volume given the specified direction"

    .line 95
    .line 96
    const-string v1, "  set-group-volume GROUP_ID VOLUME_INDEX"

    .line 97
    .line 98
    const-string v2, "    Sets the volume for GROUP_ID to VOLUME_INDEX"

    .line 99
    .line 100
    const-string v3, "  adj-group-volume GROUP_ID <RAISE|LOWER|MUTE|UNMUTE>"

    .line 101
    .line 102
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "    Adjusts the group volume for GROUP_ID given the specified direction"

    .line 106
    .line 107
    const-string v1, "  sendScpm"

    .line 108
    .line 109
    const-string v2, "  clearScpm"

    .line 110
    .line 111
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final readDirectionArg()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sparse-switch p0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    :goto_0
    move p0, v1

    .line 17
    goto :goto_1

    .line 18
    :sswitch_0
    const-string p0, "RAISE"

    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x3

    .line 28
    goto :goto_1

    .line 29
    :sswitch_1
    const-string p0, "LOWER"

    .line 30
    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x2

    .line 39
    goto :goto_1

    .line 40
    :sswitch_2
    const-string p0, "MUTE"

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move p0, v0

    .line 50
    goto :goto_1

    .line 51
    :sswitch_3
    const-string p0, "UNMUTE"

    .line 52
    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 p0, 0x0

    .line 61
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string v0, "Wrong direction argument: "

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :pswitch_0
    move v0, v1

    .line 77
    goto :goto_2

    .line 78
    :pswitch_1
    const/16 v0, -0x64

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :pswitch_2
    const/16 v0, 0x64

    .line 82
    .line 83
    :goto_2
    :pswitch_3
    return v0

    .line 84
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v0, "Error: no argument provided"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string v0, "No argument provided"

    .line 96
    .line 97
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :sswitch_data_0
    .sparse-switch
        -0x6a849fce -> :sswitch_3
        0x244a19 -> :sswitch_2
        0x45432e1 -> :sswitch_1
        0x4a22fcc -> :sswitch_0
    .end sparse-switch

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final readIntArg()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v1, "Error: wrong format for argument "

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Wrong format for argument "

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "Error: no argument provided"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string v0, "No argument provided"

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method
