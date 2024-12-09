.class public final Lcom/android/server/BootReceiver$3;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BootReceiver;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$isLockedBootCompleted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;ZLandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/server/BootReceiver$3;->val$isLockedBootCompleted:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "MP"

    .line 4
    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v6, 0x1

    .line 7
    iget-boolean v0, v1, Lcom/android/server/BootReceiver$3;->val$isLockedBootCompleted:Z

    .line 8
    .line 9
    const-string v7, "BootReceiver"

    .line 10
    .line 11
    if-eqz v0, :cond_32

    .line 12
    .line 13
    iget-object v0, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 14
    .line 15
    sget v8, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    const-string v8, "/cache/log"

    .line 23
    .line 24
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v8, Lcom/android/server/BootReceiver$2;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    array-length v8, v0

    .line 39
    if-nez v8, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    array-length v8, v0

    .line 43
    const/4 v9, 0x0

    .line 44
    :goto_0
    if-ge v9, v8, :cond_3

    .line 45
    .line 46
    aget-object v10, v0, v9

    .line 47
    .line 48
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    if-eqz v11, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v12, "/data/log/"

    .line 61
    .line 62
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    new-instance v12, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v13, "Move from /cache/log/ to "

    .line 82
    .line 83
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-static {v10, v11}, Lcom/android/server/BootReceiver;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    add-int/2addr v9, v6

    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    :goto_2
    const-string v0, "No dumpstate files found in /cache/log"

    .line 108
    .line 109
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v9, "Can\'t move "

    .line 116
    .line 117
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_4
    iget-object v8, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const-string/jumbo v9, "sys.boot.errp"

    .line 141
    .line 142
    .line 143
    const-string v10, "0"

    .line 144
    .line 145
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "/cache/log/eRR.p"

    .line 149
    .line 150
    const-string v11, "/data/system/users/service/data/eRR.p"

    .line 151
    .line 152
    invoke-static {v0, v11}, Lcom/android/server/BootReceiver;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string/jumbo v0, "sys.fs.checkpoint"

    .line 156
    .line 157
    .line 158
    const-string v11, ""

    .line 159
    .line 160
    invoke-static {v0, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    const-string v13, "1"

    .line 165
    .line 166
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    const/4 v14, 0x0

    .line 171
    if-eqz v12, :cond_4

    .line 172
    .line 173
    invoke-static {v0, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_4
    const-string/jumbo v0, "ro.boottime.resetreason"

    .line 177
    .line 178
    .line 179
    const-wide/16 v14, 0x0

    .line 180
    .line 181
    invoke-static {v0, v14, v15}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 182
    .line 183
    .line 184
    move-result-wide v16

    .line 185
    cmp-long v0, v16, v14

    .line 186
    .line 187
    const-string v12, "\n"

    .line 188
    .line 189
    const-string/jumbo v14, "ctl.restart"

    .line 190
    .line 191
    .line 192
    const-string/jumbo v15, "resetreason"

    .line 193
    .line 194
    .line 195
    const-string/jumbo v3, "sys.reset_reason"

    .line 196
    .line 197
    .line 198
    if-nez v0, :cond_15

    .line 199
    .line 200
    new-instance v0, Ljava/io/File;

    .line 201
    .line 202
    const-string v6, "/proc/reset_reason"

    .line 203
    .line 204
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    new-instance v6, Ljava/io/File;

    .line 208
    .line 209
    const-string v5, "/proc/store_lastkmsg"

    .line 210
    .line 211
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-nez v5, :cond_5

    .line 219
    .line 220
    const-string v0, "Can\'t find PROC_RESET_REASON"

    .line 221
    .line 222
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    goto/16 :goto_e

    .line 226
    .line 227
    :cond_5
    const/16 v5, 0x400

    .line 228
    .line 229
    :try_start_1
    invoke-static {v0, v5, v12}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    goto :goto_5

    .line 234
    :catch_1
    move-exception v0

    .line 235
    move-object v5, v0

    .line 236
    const-string/jumbo v0, "readTextFile error"

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v5, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const/4 v0, 0x0

    .line 243
    :goto_5
    if-nez v0, :cond_6

    .line 244
    .line 245
    const-string/jumbo v0, "resetString is null"

    .line 246
    .line 247
    .line 248
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    const-string v0, "NA"

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_6
    const-string/jumbo v5, "resetString = "

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-lt v5, v4, :cond_7

    .line 269
    .line 270
    const/4 v5, 0x0

    .line 271
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    const-string v6, "K|"

    .line 280
    .line 281
    const-string v4, "N|"

    .line 282
    .line 283
    if-nez v5, :cond_b

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    sparse-switch v5, :sswitch_data_0

    .line 293
    .line 294
    .line 295
    :goto_7
    const/4 v5, -0x1

    .line 296
    goto :goto_8

    .line 297
    :sswitch_0
    const-string v5, "RP"

    .line 298
    .line 299
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-nez v5, :cond_8

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_8
    const/4 v5, 0x2

    .line 307
    goto :goto_8

    .line 308
    :sswitch_1
    const-string v5, "NP"

    .line 309
    .line 310
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-nez v5, :cond_9

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_9
    const/4 v5, 0x1

    .line 318
    goto :goto_8

    .line 319
    :sswitch_2
    const-string v5, "BP"

    .line 320
    .line 321
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    if-nez v5, :cond_a

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_a
    const/4 v5, 0x0

    .line 329
    :goto_8
    packed-switch v5, :pswitch_data_0

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const/4 v4, 0x1

    .line 340
    sput v4, Lcom/android/server/BootReceiver;->reset:I

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :pswitch_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    const/4 v4, 0x0

    .line 351
    sput v4, Lcom/android/server/BootReceiver;->reset:I

    .line 352
    .line 353
    :goto_9
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_e

    .line 357
    .line 358
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    sparse-switch v5, :sswitch_data_1

    .line 366
    .line 367
    .line 368
    :goto_a
    const/4 v5, -0x1

    .line 369
    goto :goto_b

    .line 370
    :sswitch_3
    const-string v5, "WP"

    .line 371
    .line 372
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-nez v5, :cond_c

    .line 377
    .line 378
    goto :goto_a

    .line 379
    :cond_c
    const/4 v5, 0x6

    .line 380
    goto :goto_b

    .line 381
    :sswitch_4
    const-string v5, "TP"

    .line 382
    .line 383
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    if-nez v5, :cond_d

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_d
    const/4 v5, 0x5

    .line 391
    goto :goto_b

    .line 392
    :sswitch_5
    const-string v5, "SP"

    .line 393
    .line 394
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-nez v5, :cond_e

    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_e
    const/4 v5, 0x4

    .line 402
    goto :goto_b

    .line 403
    :sswitch_6
    const-string v5, "PP"

    .line 404
    .line 405
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-nez v5, :cond_f

    .line 410
    .line 411
    goto :goto_a

    .line 412
    :cond_f
    const/4 v5, 0x3

    .line 413
    goto :goto_b

    .line 414
    :sswitch_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-nez v5, :cond_10

    .line 419
    .line 420
    goto :goto_a

    .line 421
    :cond_10
    const/4 v5, 0x2

    .line 422
    goto :goto_b

    .line 423
    :sswitch_8
    const-string v5, "KP"

    .line 424
    .line 425
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    if-nez v5, :cond_11

    .line 430
    .line 431
    goto :goto_a

    .line 432
    :cond_11
    const/4 v5, 0x1

    .line 433
    goto :goto_b

    .line 434
    :sswitch_9
    const-string v5, "DP"

    .line 435
    .line 436
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-nez v5, :cond_12

    .line 441
    .line 442
    goto :goto_a

    .line 443
    :cond_12
    const/4 v5, 0x0

    .line 444
    :goto_b
    packed-switch v5, :pswitch_data_1

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    const/4 v5, 0x0

    .line 455
    sput v5, Lcom/android/server/BootReceiver;->reset:I

    .line 456
    .line 457
    :goto_c
    const/4 v4, 0x1

    .line 458
    goto :goto_d

    .line 459
    :pswitch_1
    const/4 v5, 0x0

    .line 460
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    sput v5, Lcom/android/server/BootReceiver;->reset:I

    .line 468
    .line 469
    goto :goto_c

    .line 470
    :pswitch_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const/4 v4, 0x1

    .line 478
    sput v4, Lcom/android/server/BootReceiver;->reset:I

    .line 479
    .line 480
    :goto_d
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    .line 481
    .line 482
    if-eq v0, v4, :cond_13

    .line 483
    .line 484
    invoke-virtual {v8}, Lcom/android/server/BootReceiver;->isNotRescueParty()Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    if-eqz v0, :cond_14

    .line 489
    .line 490
    :cond_13
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :cond_14
    :goto_e
    move-object/from16 v20, v1

    .line 494
    .line 495
    move-object/from16 v23, v9

    .line 496
    .line 497
    move-object/from16 v21, v12

    .line 498
    .line 499
    move-object/from16 v19, v13

    .line 500
    .line 501
    const/4 v1, 0x0

    .line 502
    move-object v12, v10

    .line 503
    goto/16 :goto_1a

    .line 504
    .line 505
    :cond_15
    invoke-virtual {v8}, Lcom/android/server/BootReceiver;->isNotRescueParty()Z

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-eqz v0, :cond_1a

    .line 510
    .line 511
    invoke-static {v3, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-eqz v0, :cond_1a

    .line 520
    .line 521
    const/4 v4, 0x0

    .line 522
    new-array v0, v4, [Ljava/lang/String;

    .line 523
    .line 524
    const-string v5, "/data/log/prev_dump.log"

    .line 525
    .line 526
    invoke-static {v5, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    new-array v6, v4, [Ljava/lang/String;

    .line 531
    .line 532
    move-object/from16 v19, v13

    .line 533
    .line 534
    const-string v13, "/data/log/unknown_platform_reset.log"

    .line 535
    .line 536
    invoke-static {v13, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 537
    .line 538
    .line 539
    move-result-object v6

    .line 540
    move-object/from16 v20, v1

    .line 541
    .line 542
    new-array v1, v4, [Ljava/nio/file/LinkOption;

    .line 543
    .line 544
    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    if-eqz v1, :cond_19

    .line 549
    .line 550
    const/4 v1, 0x1

    .line 551
    :try_start_2
    new-array v4, v1, [Ljava/nio/file/OpenOption;

    .line 552
    .line 553
    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 554
    .line 555
    const/16 v18, 0x0

    .line 556
    .line 557
    aput-object v1, v4, v18

    .line 558
    .line 559
    invoke-static {v0, v4}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 560
    .line 561
    .line 562
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 563
    move-object/from16 v21, v12

    .line 564
    .line 565
    const/4 v4, 0x2

    .line 566
    :try_start_3
    new-array v12, v4, [Ljava/nio/file/OpenOption;

    .line 567
    .line 568
    sget-object v4, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 569
    .line 570
    aput-object v4, v12, v18

    .line 571
    .line 572
    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    .line 573
    .line 574
    const/16 v17, 0x1

    .line 575
    .line 576
    aput-object v4, v12, v17

    .line 577
    .line 578
    invoke-static {v6, v12}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 579
    .line 580
    .line 581
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 582
    move-object v6, v9

    .line 583
    move-object v12, v10

    .line 584
    :try_start_4
    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 585
    .line 586
    .line 587
    move-result-wide v9

    .line 588
    long-to-int v0, v9

    .line 589
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 594
    .line 595
    .line 596
    new-instance v9, Ljava/lang/String;

    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 599
    .line 600
    .line 601
    move-result-object v10

    .line 602
    const-string v22, "UTF-8"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 603
    .line 604
    move-object/from16 v23, v6

    .line 605
    .line 606
    :try_start_5
    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    invoke-direct {v9, v10, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 614
    .line 615
    .line 616
    const-string v0, "Chip ID : .*?\n|androidboot[.]ap_serial=.*? |androidboot[.]serialno=.*? "

    .line 617
    .line 618
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 619
    .line 620
    .line 621
    move-result-object v6

    .line 622
    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {v6, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 631
    .line 632
    .line 633
    const-string v0, "PF_UR case. Leave prev_dump.log as unknown_platform_reset.log"

    .line 634
    .line 635
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .line 637
    .line 638
    new-instance v0, Ljava/io/File;

    .line 639
    .line 640
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    new-instance v5, Ljava/io/File;

    .line 644
    .line 645
    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    .line 649
    .line 650
    .line 651
    const-string v0, "Out of memory: Kill(ed)? process [0-9]+ [(]system_server[)]|Sending (SIGKILL|SIGTERM) to process system_server"

    .line 652
    .line 653
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 662
    .line 663
    .line 664
    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 665
    const-string/jumbo v6, "sys.reset_info"

    .line 666
    .line 667
    .line 668
    if-eqz v5, :cond_16

    .line 669
    .line 670
    :try_start_6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 675
    .line 676
    .line 677
    move-result v5

    .line 678
    const/16 v9, 0x5b

    .line 679
    .line 680
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    const/4 v9, 0x0

    .line 685
    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    goto :goto_10

    .line 693
    :catchall_0
    move-exception v0

    .line 694
    :goto_f
    move-object v5, v0

    .line 695
    goto :goto_12

    .line 696
    :cond_16
    const-string/jumbo v0, "unknown"

    .line 697
    .line 698
    .line 699
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 700
    .line 701
    .line 702
    :goto_10
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 703
    .line 704
    .line 705
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 706
    .line 707
    .line 708
    goto :goto_17

    .line 709
    :catch_2
    move-exception v0

    .line 710
    goto :goto_16

    .line 711
    :catchall_1
    move-exception v0

    .line 712
    :goto_11
    move-object v4, v0

    .line 713
    goto :goto_14

    .line 714
    :catchall_2
    move-exception v0

    .line 715
    move-object/from16 v23, v6

    .line 716
    .line 717
    goto :goto_f

    .line 718
    :goto_12
    if-eqz v4, :cond_17

    .line 719
    .line 720
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 721
    .line 722
    .line 723
    goto :goto_13

    .line 724
    :catchall_3
    move-exception v0

    .line 725
    move-object v4, v0

    .line 726
    :try_start_a
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 727
    .line 728
    .line 729
    :cond_17
    :goto_13
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 730
    :catchall_4
    move-exception v0

    .line 731
    move-object/from16 v23, v9

    .line 732
    .line 733
    move-object v12, v10

    .line 734
    goto :goto_11

    .line 735
    :goto_14
    if-eqz v1, :cond_18

    .line 736
    .line 737
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 738
    .line 739
    .line 740
    goto :goto_15

    .line 741
    :catchall_5
    move-exception v0

    .line 742
    move-object v1, v0

    .line 743
    :try_start_c
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 744
    .line 745
    .line 746
    :cond_18
    :goto_15
    throw v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 747
    :catch_3
    move-exception v0

    .line 748
    move-object/from16 v23, v9

    .line 749
    .line 750
    move-object/from16 v21, v12

    .line 751
    .line 752
    move-object v12, v10

    .line 753
    :goto_16
    const-string v1, "Failed to copy prev_dump.log file."

    .line 754
    .line 755
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    .line 757
    .line 758
    goto :goto_17

    .line 759
    :cond_19
    move-object/from16 v23, v9

    .line 760
    .line 761
    move-object/from16 v21, v12

    .line 762
    .line 763
    move-object v12, v10

    .line 764
    :goto_17
    const-string v0, "P|UR"

    .line 765
    .line 766
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    :goto_18
    const/4 v1, 0x2

    .line 773
    goto :goto_19

    .line 774
    :cond_1a
    move-object/from16 v20, v1

    .line 775
    .line 776
    move-object/from16 v23, v9

    .line 777
    .line 778
    move-object/from16 v21, v12

    .line 779
    .line 780
    move-object/from16 v19, v13

    .line 781
    .line 782
    move-object v12, v10

    .line 783
    goto :goto_18

    .line 784
    :goto_19
    sput v1, Lcom/android/server/BootReceiver;->reset:I

    .line 785
    .line 786
    const/4 v1, 0x0

    .line 787
    :goto_1a
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    if-nez v4, :cond_1b

    .line 792
    .line 793
    goto/16 :goto_29

    .line 794
    .line 795
    :cond_1b
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    .line 796
    .line 797
    const/4 v1, 0x1

    .line 798
    if-eq v0, v1, :cond_1c

    .line 799
    .line 800
    invoke-static {}, Lcom/android/server/BootReceiver;->proc_reset_reason()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    if-eqz v0, :cond_20

    .line 809
    .line 810
    :cond_1c
    const-string v0, "We start saveLastkmsg.waitUntilSaveLastkmsgDone( timeout = 30 )"

    .line 811
    .line 812
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .line 814
    .line 815
    iget-object v0, v8, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 816
    .line 817
    if-nez v0, :cond_1d

    .line 818
    .line 819
    new-instance v0, Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 820
    .line 821
    invoke-direct {v0, v8}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>(Lcom/android/server/BootReceiver;)V

    .line 822
    .line 823
    .line 824
    iput-object v0, v8, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 825
    .line 826
    :cond_1d
    const-string/jumbo v0, "saveLastkmsg null and start()"

    .line 827
    .line 828
    .line 829
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    .line 831
    .line 832
    iget-object v0, v8, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 833
    .line 834
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 835
    .line 836
    .line 837
    iget-object v0, v8, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 838
    .line 839
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    .line 841
    .line 842
    const/4 v1, 0x0

    .line 843
    :goto_1b
    const/16 v2, 0x1e

    .line 844
    .line 845
    if-ge v1, v2, :cond_1f

    .line 846
    .line 847
    :try_start_d
    iget-boolean v2, v0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    .line 848
    .line 849
    if-eqz v2, :cond_1e

    .line 850
    .line 851
    goto :goto_1c

    .line 852
    :cond_1e
    const-wide/16 v5, 0x3e8

    .line 853
    .line 854
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 855
    .line 856
    .line 857
    const/4 v2, 0x1

    .line 858
    add-int/2addr v1, v2

    .line 859
    goto :goto_1b

    .line 860
    :catch_4
    move-exception v0

    .line 861
    const-string/jumbo v1, "waitUntilSaveLastkmsgDone error"

    .line 862
    .line 863
    .line 864
    invoke-static {v0, v1, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    :cond_1f
    const/4 v1, -0x1

    .line 868
    :goto_1c
    const-string v0, "We waited saveLastkmsg() for "

    .line 869
    .line 870
    const-string/jumbo v2, "s "

    .line 871
    .line 872
    .line 873
    invoke-static {v1, v0, v2, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    :cond_20
    :try_start_e
    invoke-virtual {v8, v4}, Lcom/android/server/BootReceiver;->getDumpFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    iput-object v0, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 881
    .line 882
    const/4 v1, 0x0

    .line 883
    goto :goto_1d

    .line 884
    :catch_5
    const/4 v1, 0x0

    .line 885
    iput-object v1, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 886
    .line 887
    :goto_1d
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    .line 888
    .line 889
    if-nez v0, :cond_22

    .line 890
    .line 891
    iget-boolean v0, v8, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 892
    .line 893
    if-eqz v0, :cond_21

    .line 894
    .line 895
    goto :goto_1e

    .line 896
    :cond_21
    const/4 v0, 0x0

    .line 897
    goto :goto_21

    .line 898
    :cond_22
    :goto_1e
    const-string/jumbo v0, "ro.boot.hardware"

    .line 899
    .line 900
    .line 901
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    sget v1, Lcom/android/server/BootReceiver;->reset:I

    .line 906
    .line 907
    const/4 v2, 0x1

    .line 908
    if-ne v1, v2, :cond_26

    .line 909
    .line 910
    const-string/jumbo v1, "exynos"

    .line 911
    .line 912
    .line 913
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 914
    .line 915
    .line 916
    move-result v1

    .line 917
    if-eq v1, v2, :cond_25

    .line 918
    .line 919
    const-string/jumbo v1, "s5e"

    .line 920
    .line 921
    .line 922
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 923
    .line 924
    .line 925
    move-result v1

    .line 926
    if-ne v1, v2, :cond_23

    .line 927
    .line 928
    goto :goto_1f

    .line 929
    :cond_23
    const-string/jumbo v1, "qcom"

    .line 930
    .line 931
    .line 932
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 933
    .line 934
    .line 935
    move-result v1

    .line 936
    if-ne v1, v2, :cond_24

    .line 937
    .line 938
    const-string v11, "KERNEL_Q"

    .line 939
    .line 940
    goto :goto_20

    .line 941
    :cond_24
    const-string/jumbo v1, "mt"

    .line 942
    .line 943
    .line 944
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 945
    .line 946
    .line 947
    move-result v0

    .line 948
    if-ne v0, v2, :cond_27

    .line 949
    .line 950
    const-string v11, "KERNEL_M"

    .line 951
    .line 952
    goto :goto_20

    .line 953
    :cond_25
    :goto_1f
    const-string v11, "KERNEL_L"

    .line 954
    .line 955
    goto :goto_20

    .line 956
    :cond_26
    const/4 v2, 0x2

    .line 957
    if-ne v1, v2, :cond_27

    .line 958
    .line 959
    const-string v11, "PLATFORM"

    .line 960
    .line 961
    :cond_27
    :goto_20
    const/4 v0, 0x1

    .line 962
    :goto_21
    iget-boolean v1, v8, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 963
    .line 964
    const-string/jumbo v2, "persist.sys.isrb_havesentlog"

    .line 965
    .line 966
    .line 967
    const-string v5, "ISRB_BOOT"

    .line 968
    .line 969
    if-eqz v1, :cond_29

    .line 970
    .line 971
    const-wide/32 v9, 0x493e0

    .line 972
    .line 973
    .line 974
    :try_start_f
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 975
    .line 976
    .line 977
    const-string/jumbo v1, "leave rescueparty errp"

    .line 978
    .line 979
    .line 980
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    .line 982
    .line 983
    move-object/from16 v1, v23

    .line 984
    .line 985
    invoke-static {v1, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    move-result v1

    .line 999
    if-eqz v1, :cond_28

    .line 1000
    .line 1001
    const/4 v1, 0x0

    .line 1002
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v6
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_6

    .line 1006
    :try_start_10
    invoke-static {}, Lcom/android/server/RescueParty;->setISRBmode()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1007
    .line 1008
    .line 1009
    goto :goto_22

    .line 1010
    :cond_28
    :try_start_11
    const-string/jumbo v1, "persist.sys.rescue_level"

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v1, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_6

    .line 1014
    .line 1015
    .line 1016
    :catch_6
    :cond_29
    const/4 v6, 0x0

    .line 1017
    :catch_7
    :goto_22
    if-nez v6, :cond_31

    .line 1018
    .line 1019
    const-string v1, ","

    .line 1020
    .line 1021
    if-eqz v0, :cond_2e

    .line 1022
    .line 1023
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v0

    .line 1031
    if-eqz v0, :cond_2a

    .line 1032
    .line 1033
    const/4 v5, 0x0

    .line 1034
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v0

    .line 1038
    move v5, v0

    .line 1039
    goto :goto_23

    .line 1040
    :cond_2a
    const/4 v5, 0x0

    .line 1041
    :goto_23
    if-nez v5, :cond_2e

    .line 1042
    .line 1043
    const-string/jumbo v0, "sys.members.installed"

    .line 1044
    .line 1045
    .line 1046
    const-string v2, "UNKNOWN"

    .line 1047
    .line 1048
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    const-string/jumbo v2, "true"

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v0

    .line 1059
    if-eqz v0, :cond_2c

    .line 1060
    .line 1061
    iget-object v0, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1062
    .line 1063
    if-nez v0, :cond_2b

    .line 1064
    .line 1065
    goto/16 :goto_24

    .line 1066
    .line 1067
    :cond_2b
    new-instance v0, Landroid/content/Intent;

    .line 1068
    .line 1069
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1070
    .line 1071
    .line 1072
    const-string/jumbo v2, "com.samsung.android.voc.action.SYSTEM_ERROR"

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    .line 1077
    .line 1078
    const-string/jumbo v2, "com.samsung.android.voc"

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    .line 1083
    .line 1084
    const-string/jumbo v2, "com.samsung.android.voc.extra.SYSTEM_TYPE"

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1088
    .line 1089
    .line 1090
    const-string/jumbo v2, "com.samsung.android.voc.extra.RESET_REASON"

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    .line 1095
    .line 1096
    sget-object v2, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 1097
    .line 1098
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v5

    .line 1102
    const-string/jumbo v6, "com.samsung.android.voc.extra.TAG"

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    .line 1107
    .line 1108
    const-string/jumbo v5, "com.samsung.android.voc.extra.LOG_PATH"

    .line 1109
    .line 1110
    .line 1111
    iget-object v6, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1112
    .line 1113
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    .line 1115
    .line 1116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    const-string v6, "Send to Samsung Members, system type: "

    .line 1119
    .line 1120
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    .line 1126
    const-string v6, ", reset_reason: "

    .line 1127
    .line 1128
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    const-string v6, ", tag: "

    .line 1135
    .line 1136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v2

    .line 1143
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    const-string v2, ", log file: "

    .line 1147
    .line 1148
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    iget-object v2, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1152
    .line 1153
    move-object/from16 v6, v21

    .line 1154
    .line 1155
    invoke-static {v5, v2, v6, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    const-string v2, "android.permission.DUMP"

    .line 1159
    .line 1160
    move-object/from16 v5, v20

    .line 1161
    .line 1162
    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    goto/16 :goto_25

    .line 1166
    .line 1167
    :cond_2c
    move-object/from16 v5, v20

    .line 1168
    .line 1169
    const-string v0, "IntentOnly"

    .line 1170
    .line 1171
    const-string v2, "Ext"

    .line 1172
    .line 1173
    const-string v6, "CFailLogUpload"

    .line 1174
    .line 1175
    const-string v9, "DiagMon"

    .line 1176
    .line 1177
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v10

    .line 1181
    const-string/jumbo v13, "samsung_errorlog_agree"

    .line 1182
    .line 1183
    .line 1184
    const/4 v14, 0x0

    .line 1185
    invoke-static {v10, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1186
    .line 1187
    .line 1188
    move-result v10

    .line 1189
    const/4 v13, 0x1

    .line 1190
    if-ne v10, v13, :cond_2f

    .line 1191
    .line 1192
    iget-object v10, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1193
    .line 1194
    if-nez v10, :cond_2d

    .line 1195
    .line 1196
    goto/16 :goto_25

    .line 1197
    .line 1198
    :cond_2d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1199
    .line 1200
    const-string/jumbo v13, "send broadcast intent to diagmon : "

    .line 1201
    .line 1202
    .line 1203
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    iget-object v13, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1207
    .line 1208
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v10

    .line 1215
    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    .line 1217
    .line 1218
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1221
    .line 1222
    .line 1223
    iget-object v13, v8, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    .line 1224
    .line 1225
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1229
    .line 1230
    .line 1231
    move-result-wide v13

    .line 1232
    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v10

    .line 1239
    iput-object v10, v8, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    .line 1240
    .line 1241
    const-string v10, ";"

    .line 1242
    .line 1243
    invoke-static {v4, v10, v11}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v10

    .line 1247
    iput-object v10, v8, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    .line 1248
    .line 1249
    new-instance v10, Landroid/content/Intent;

    .line 1250
    .line 1251
    const-string/jumbo v11, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    .line 1252
    .line 1253
    .line 1254
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1255
    .line 1256
    .line 1257
    new-instance v11, Landroid/os/Bundle;

    .line 1258
    .line 1259
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1260
    .line 1261
    .line 1262
    const-string/jumbo v13, "com.sec.android.diagmonagent"

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v10, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    .line 1267
    .line 1268
    const/16 v13, 0x20

    .line 1269
    .line 1270
    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1271
    .line 1272
    .line 1273
    :try_start_12
    new-instance v14, Landroid/os/Bundle;

    .line 1274
    .line 1275
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v11, v9, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v14

    .line 1285
    new-instance v15, Landroid/os/Bundle;

    .line 1286
    .line 1287
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v14, v6, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v14

    .line 1297
    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v14

    .line 1301
    const-string v15, "ServiceID"

    .line 1302
    .line 1303
    const-string/jumbo v13, "ny6xfd3iri"

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v13

    .line 1313
    invoke-virtual {v13, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v13

    .line 1317
    new-instance v14, Landroid/os/Bundle;

    .line 1318
    .line 1319
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v13, v2, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v13

    .line 1329
    invoke-virtual {v13, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v13

    .line 1333
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v13

    .line 1337
    const-string v14, "ClientV"

    .line 1338
    .line 1339
    sget-object v15, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 1340
    .line 1341
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v13

    .line 1348
    invoke-virtual {v13, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v13

    .line 1352
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v13

    .line 1356
    const-string v14, "UiMode"

    .line 1357
    .line 1358
    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v12

    .line 1365
    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v12

    .line 1369
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v12

    .line 1373
    const-string v13, "ResultCode"

    .line 1374
    .line 1375
    iget-object v14, v8, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    .line 1376
    .line 1377
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v12

    .line 1384
    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v12

    .line 1388
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v12

    .line 1392
    const-string v13, "WifiOnlyFeature"

    .line 1393
    .line 1394
    move-object/from16 v14, v19

    .line 1395
    .line 1396
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v12

    .line 1403
    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v12

    .line 1407
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v12

    .line 1411
    const-string v13, "EventID"

    .line 1412
    .line 1413
    iget-object v15, v8, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    .line 1414
    .line 1415
    invoke-virtual {v12, v13, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v12

    .line 1422
    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v12

    .line 1426
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v2

    .line 1430
    const-string v12, "Tag"

    .line 1431
    .line 1432
    sget-object v13, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 1433
    .line 1434
    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v13

    .line 1438
    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v2

    .line 1445
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v2

    .line 1449
    new-instance v12, Landroid/os/Bundle;

    .line 1450
    .line 1451
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v2

    .line 1461
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v2

    .line 1465
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v2

    .line 1469
    const-string v12, "IntentOnlyMode"

    .line 1470
    .line 1471
    invoke-virtual {v2, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v2

    .line 1478
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v2

    .line 1482
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v2

    .line 1486
    const-string v12, "Agree"

    .line 1487
    .line 1488
    const-string v13, "D"

    .line 1489
    .line 1490
    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v2

    .line 1497
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v2

    .line 1501
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v0

    .line 1505
    const-string v2, "LogPath"

    .line 1506
    .line 1507
    iget-object v6, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1508
    .line 1509
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    .line 1511
    .line 1512
    const-string/jumbo v0, "uploadMO"

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1516
    .line 1517
    .line 1518
    const/16 v0, 0x20

    .line 1519
    .line 1520
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1521
    .line 1522
    .line 1523
    invoke-virtual {v5, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 1524
    .line 1525
    .line 1526
    goto :goto_25

    .line 1527
    :catch_8
    move-exception v0

    .line 1528
    const-string v2, "Exception while sending a bug report."

    .line 1529
    .line 1530
    invoke-static {v7, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1531
    .line 1532
    .line 1533
    goto :goto_25

    .line 1534
    :cond_2e
    :goto_24
    move-object/from16 v5, v20

    .line 1535
    .line 1536
    :cond_2f
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    .line 1540
    .line 1541
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    const-string v6, "\"REASON\":\""

    .line 1544
    .line 1545
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    .line 1550
    .line 1551
    const-string v6, "\""

    .line 1552
    .line 1553
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v2

    .line 1560
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    .line 1562
    .line 1563
    :try_start_13
    invoke-static {v4}, Lcom/android/server/BootReceiver;->GetResetLog(Ljava/lang/String;)Ljava/lang/String;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v2

    .line 1567
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1568
    .line 1569
    .line 1570
    move-result v4

    .line 1571
    if-nez v4, :cond_30

    .line 1572
    .line 1573
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v1

    .line 1577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    .line 1579
    .line 1580
    goto :goto_26

    .line 1581
    :catch_9
    move-exception v0

    .line 1582
    goto :goto_27

    .line 1583
    :cond_30
    :goto_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v0

    .line 1587
    invoke-static {v5, v0}, Lcom/android/server/BootReceiver;->sendResetLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_9

    .line 1588
    .line 1589
    .line 1590
    goto :goto_28

    .line 1591
    :goto_27
    const-string/jumbo v1, "get reset log error"

    .line 1592
    .line 1593
    .line 1594
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1595
    .line 1596
    .line 1597
    :cond_31
    :goto_28
    invoke-static {}, Lcom/android/server/BootReceiver;->waitUntileRRpDone()V

    .line 1598
    .line 1599
    .line 1600
    const/4 v1, 0x0

    .line 1601
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    .line 1603
    .line 1604
    :goto_29
    return-void

    .line 1605
    :cond_32
    :try_start_14
    iget-object v0, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 1606
    .line 1607
    iget-object v2, v1, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    .line 1608
    .line 1609
    invoke-static {v0, v2}, Lcom/android/server/BootReceiver;->-$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    .line 1610
    .line 1611
    .line 1612
    goto :goto_2a

    .line 1613
    :catch_a
    move-exception v0

    .line 1614
    const-string v2, "Can\'t log boot events"

    .line 1615
    .line 1616
    invoke-static {v7, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1617
    .line 1618
    .line 1619
    :goto_2a
    :try_start_15
    iget-object v0, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 1620
    .line 1621
    iget-object v1, v1, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    .line 1622
    .line 1623
    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 1624
    .line 1625
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1626
    .line 1627
    .line 1628
    const-string/jumbo v0, "com.google.android.systemupdater"

    .line 1629
    .line 1630
    .line 1631
    const-string/jumbo v2, "com.google.android.systemupdater.SystemUpdateReceiver"

    .line 1632
    .line 1633
    .line 1634
    invoke-static {v1, v0, v2}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 1635
    .line 1636
    .line 1637
    goto :goto_2b

    .line 1638
    :catch_b
    move-exception v0

    .line 1639
    const-string v1, "Can\'t remove old update packages"

    .line 1640
    .line 1641
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1642
    .line 1643
    .line 1644
    :goto_2b
    return-void

    .line 1645
    :sswitch_data_0
    .sparse-switch
        0x84e -> :sswitch_2
        0x9c2 -> :sswitch_1
        0xa3e -> :sswitch_0
    .end sparse-switch

    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    :sswitch_data_1
    .sparse-switch
        0x88c -> :sswitch_9
        0x965 -> :sswitch_8
        0x9a3 -> :sswitch_7
        0xa00 -> :sswitch_6
        0xa5d -> :sswitch_5
        0xa7c -> :sswitch_4
        0xad9 -> :sswitch_3
    .end sparse-switch

    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
