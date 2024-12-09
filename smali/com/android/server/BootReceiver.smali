.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final LASTK_LOG_SIZE:I

.field public static final LAST_KMSG_FILES:[Ljava/lang/String;

.field public static final LOG_SIZE:I

.field public static final MAX_TOMBSTONE_SIZE_BYTES:J

.field public static final MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

.field public static final TOMBSTONE_TMP_DIR:Ljava/io/File;

.field public static final lastHeaderFile:Ljava/io/File;

.field public static logFileKernel:Ljava/lang/String;

.field public static mAudioManager:Landroid/media/AudioManager;

.field public static proc_rr_read_done:Z

.field public static proc_rr_value:Ljava/lang/String;

.field public static reset:I

.field public static final sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

.field public static final sFile:Landroid/util/AtomicFile;

.field public static sSentReports:I

.field public static storeExtraInfo:Ljava/lang/String;

.field public static store_lastkmsg_read_done:Z

.field public static store_lastkmsg_val:I

.field public static final uniqueID:Ljava/util/UUID;


# instance fields
.field public EVENT_ID:Ljava/lang/String;

.field public LOG_FILE:Ljava/lang/String;

.field public RESULT_CODE:Ljava/lang/String;

.field public isCaseByRescueParty:Z

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;


# direct methods
.method public static -$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v5, "dropbox"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Landroid/os/DropBoxManager;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v13

    .line 22
    const-string/jumbo v6, "ro.boot.bootreason"

    .line 23
    .line 24
    .line 25
    const/4 v14, 0x0

    .line 26
    invoke-static {v6, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    new-instance v7, Landroid/text/format/Time;

    .line 31
    .line 32
    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Landroid/os/RecoverySystem;->handleAftermath(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    if-eqz v8, :cond_0

    .line 40
    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    const-string v9, "SYSTEM_RECOVERY_LOG"

    .line 59
    .line 60
    invoke-virtual {v5, v9, v8}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    const-string v15, "\n"

    .line 64
    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const/16 v9, 0x200

    .line 70
    .line 71
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .line 73
    .line 74
    const-string v9, "\nBoot info:\nLast boot reason: "

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    :goto_0
    move-object/from16 v16, v6

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const-string v6, ""

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_1
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    const-string/jumbo v6, "sys.is_members"

    .line 100
    .line 101
    .line 102
    const-string/jumbo v8, "exist"

    .line 103
    .line 104
    .line 105
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string/jumbo v6, "prepare setting eRR.p "

    .line 109
    .line 110
    .line 111
    const-string v11, "BootReceiver"

    .line 112
    .line 113
    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/android/server/BootReceiver;->proc_reset_reason()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const-string/jumbo v8, "ro.runtime.firstboot"

    .line 121
    .line 122
    .line 123
    const-wide/16 v9, 0x0

    .line 124
    .line 125
    invoke-static {v8, v9, v10}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 126
    .line 127
    .line 128
    move-result-wide v17

    .line 129
    cmp-long v17, v17, v9

    .line 130
    .line 131
    const-string v2, "[[TRUNCATED]]\n"

    .line 132
    .line 133
    if-nez v17, :cond_25

    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v19

    .line 139
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    if-eqz v5, :cond_2

    .line 147
    .line 148
    const-string v8, "SYSTEM_BOOT"

    .line 149
    .line 150
    invoke-virtual {v5, v8, v13}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    const-string v8, "HqmManagerService"

    .line 154
    .line 155
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Landroid/os/SemHqmManager;

    .line 160
    .line 161
    iput-object v8, v1, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 162
    .line 163
    const-string/jumbo v8, "audio"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Landroid/media/AudioManager;

    .line 171
    .line 172
    sput-object v0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 173
    .line 174
    new-instance v0, Ljava/io/File;

    .line 175
    .line 176
    const-string v8, "/proc/store_lastkmsg"

    .line 177
    .line 178
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const-string/jumbo v8, "readTextFile error"

    .line 186
    .line 187
    .line 188
    const/16 v9, 0x400

    .line 189
    .line 190
    const-string v10, "/proc/reset_rwc"

    .line 191
    .line 192
    if-eqz v0, :cond_10

    .line 193
    .line 194
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    .line 195
    .line 196
    if-ne v0, v4, :cond_10

    .line 197
    .line 198
    invoke-static {}, Lcom/android/server/BootReceiver;->is_store_lastkmsg()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-ne v0, v4, :cond_10

    .line 203
    .line 204
    new-instance v0, Ljava/io/File;

    .line 205
    .line 206
    const-string v3, "/proc/extra_info"

    .line 207
    .line 208
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_3

    .line 216
    .line 217
    invoke-static {v3}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    move-object/from16 v23, v2

    .line 222
    .line 223
    move-object/from16 v24, v12

    .line 224
    .line 225
    move-object/from16 v19, v13

    .line 226
    .line 227
    move-object/from16 v22, v15

    .line 228
    .line 229
    goto/16 :goto_4

    .line 230
    .line 231
    :cond_3
    const-string/jumbo v0, "ro.boot.hardware"

    .line 232
    .line 233
    .line 234
    invoke-static {v0, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    const-string/jumbo v3, "exynos"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-eq v3, v4, :cond_8

    .line 246
    .line 247
    const-string/jumbo v3, "s5e"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-ne v3, v4, :cond_4

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_4
    const-string/jumbo v3, "qcom"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-ne v3, v4, :cond_6

    .line 265
    .line 266
    new-instance v0, Ljava/io/File;

    .line 267
    .line 268
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_5

    .line 276
    .line 277
    :try_start_0
    invoke-static {v0, v9, v14}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 282
    .line 283
    .line 284
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    add-int/lit8 v0, v0, 0x12

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-static {v8, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_5
    const/16 v0, 0x9

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_6
    const-string/jumbo v3, "mt"

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-ne v0, v4, :cond_7

    .line 303
    .line 304
    const/16 v0, 0x14

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_7
    const/4 v0, 0x0

    .line 308
    goto :goto_3

    .line 309
    :cond_8
    :goto_2
    const/16 v0, 0x1e

    .line 310
    .line 311
    :goto_3
    const-string v3, "/sys/class/sec/sec_hw_param/extra_info"

    .line 312
    .line 313
    invoke-static {v3}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    const-string v19, "/sys/class/sec/sec_hw_param/extrb_info"

    .line 318
    .line 319
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    const-string v19, "/sys/class/sec/sec_hw_param/extrc_info"

    .line 324
    .line 325
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    const-string v19, "/sys/class/sec/sec_hw_param/extrm_info"

    .line 330
    .line 331
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    const-string v19, "/sys/class/sec/sec_hw_param/extrf_info"

    .line 336
    .line 337
    move-object/from16 v22, v15

    .line 338
    .line 339
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v15

    .line 343
    const-string v19, "/sys/class/sec/sec_hw_param/extrt_info"

    .line 344
    .line 345
    move-object/from16 v23, v2

    .line 346
    .line 347
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    move-object/from16 v19, v13

    .line 352
    .line 353
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 354
    .line 355
    .line 356
    move-result v13

    .line 357
    move-object/from16 v24, v12

    .line 358
    .line 359
    const/4 v12, 0x5

    .line 360
    if-le v13, v12, :cond_9

    .line 361
    .line 362
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 367
    .line 368
    .line 369
    move-result v13

    .line 370
    invoke-virtual {v9, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    :cond_9
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 382
    .line 383
    .line 384
    move-result v9

    .line 385
    if-le v9, v12, :cond_a

    .line 386
    .line 387
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 392
    .line 393
    .line 394
    move-result v9

    .line 395
    invoke-virtual {v14, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 407
    .line 408
    .line 409
    move-result v9

    .line 410
    if-le v9, v12, :cond_b

    .line 411
    .line 412
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 417
    .line 418
    .line 419
    move-result v9

    .line 420
    invoke-virtual {v4, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    :cond_b
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-le v4, v12, :cond_c

    .line 436
    .line 437
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    invoke-virtual {v15, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    if-le v4, v12, :cond_d

    .line 461
    .line 462
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    goto :goto_4

    .line 482
    :cond_d
    move-object v0, v3

    .line 483
    :goto_4
    const-string v2, ",\"TAG\":\""

    .line 484
    .line 485
    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    sget-object v2, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 490
    .line 491
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    const-string v2, "\""

    .line 495
    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    const-string/jumbo v3, "ro.crypto.state"

    .line 504
    .line 505
    .line 506
    const-string/jumbo v4, "none"

    .line 507
    .line 508
    .line 509
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    const-string/jumbo v9, "ro.crypto.type"

    .line 514
    .line 515
    .line 516
    invoke-static {v9, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v9

    .line 520
    new-instance v12, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v0, ",\"CPT\":\""

    .line 529
    .line 530
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v0, "/"

    .line 537
    .line 538
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    const-string/jumbo v3, "ro.soc.model"

    .line 552
    .line 553
    .line 554
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v9

    .line 562
    if-eqz v9, :cond_e

    .line 563
    .line 564
    const-string/jumbo v3, "ro.hardware.chipname"

    .line 565
    .line 566
    .line 567
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    const-string v0, ",\"APNM\":\""

    .line 580
    .line 581
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    iget-object v2, v1, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 595
    .line 596
    if-eqz v2, :cond_f

    .line 597
    .line 598
    const-string/jumbo v2, "sendBroadcastToHWParm() mSemHqmManager.sendHWParamToHQM"

    .line 599
    .line 600
    .line 601
    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .line 603
    .line 604
    iget-object v1, v1, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 605
    .line 606
    const-string v30, "0.0"

    .line 607
    .line 608
    const-string v31, ""

    .line 609
    .line 610
    const/16 v26, 0x0

    .line 611
    .line 612
    const-string v27, "AP"

    .line 613
    .line 614
    const-string v28, "ETRA"

    .line 615
    .line 616
    const-string/jumbo v29, "ph"

    .line 617
    .line 618
    .line 619
    const-string v32, ""

    .line 620
    .line 621
    const-string v34, ""

    .line 622
    .line 623
    move-object/from16 v25, v1

    .line 624
    .line 625
    move-object/from16 v33, v0

    .line 626
    .line 627
    invoke-virtual/range {v25 .. v34}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    .line 629
    .line 630
    goto :goto_5

    .line 631
    :cond_f
    const-string/jumbo v1, "sendBroadcastToHWParm() mSemHqmManager is null"

    .line 632
    .line 633
    .line 634
    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    :goto_5
    sput-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 638
    .line 639
    goto :goto_6

    .line 640
    :cond_10
    move-object/from16 v23, v2

    .line 641
    .line 642
    move-object/from16 v24, v12

    .line 643
    .line 644
    move-object/from16 v19, v13

    .line 645
    .line 646
    move-object/from16 v22, v15

    .line 647
    .line 648
    :goto_6
    new-instance v0, Ljava/io/File;

    .line 649
    .line 650
    const-string v1, "/data/log"

    .line 651
    .line 652
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    if-nez v2, :cond_11

    .line 664
    .line 665
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-nez v0, :cond_1a

    .line 670
    .line 671
    const-string/jumbo v0, "trimLastKmsg - logFolder mkdir failed"

    .line 672
    .line 673
    .line 674
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .line 676
    .line 677
    goto/16 :goto_f

    .line 678
    .line 679
    :cond_11
    if-nez v1, :cond_12

    .line 680
    .line 681
    goto/16 :goto_f

    .line 682
    .line 683
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    .line 684
    .line 685
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .line 687
    .line 688
    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    .line 689
    .line 690
    new-instance v3, Ljava/util/ArrayList;

    .line 691
    .line 692
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .line 694
    .line 695
    const-string/jumbo v4, "debug_history"

    .line 696
    .line 697
    .line 698
    const/4 v9, 0x1

    .line 699
    invoke-direct {v2, v9, v4, v3}, Lcom/android/server/BootReceiver$Dump;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    if-eqz v0, :cond_13

    .line 714
    .line 715
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    move-object v3, v0

    .line 720
    check-cast v3, Lcom/android/server/BootReceiver$Dump;

    .line 721
    .line 722
    :try_start_1
    iget-object v0, v3, Lcom/android/server/BootReceiver$Dump;->fileList:Ljava/util/List;

    .line 723
    .line 724
    iget v4, v3, Lcom/android/server/BootReceiver$Dump;->listMax:I

    .line 725
    .line 726
    iget-object v9, v3, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    .line 727
    .line 728
    invoke-static {v1, v0, v4, v9}, Lcom/android/server/BootReceiver;->_trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 729
    .line 730
    .line 731
    goto :goto_7

    .line 732
    :catch_1
    move-exception v0

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    const-string/jumbo v9, "trim"

    .line 736
    .line 737
    .line 738
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    iget-object v3, v3, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    .line 742
    .line 743
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    const-string v3, " error"

    .line 747
    .line 748
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .line 760
    .line 761
    goto :goto_7

    .line 762
    :cond_13
    const-string/jumbo v1, "sys.boot.debug_history"

    .line 763
    .line 764
    .line 765
    const-string v0, "0"

    .line 766
    .line 767
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const/16 v0, 0x800

    .line 771
    .line 772
    new-array v0, v0, [B

    .line 773
    .line 774
    :try_start_2
    new-instance v2, Ljava/io/File;

    .line 775
    .line 776
    const-string v3, "/proc/debug_history"

    .line 777
    .line 778
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    if-eqz v3, :cond_14

    .line 786
    .line 787
    new-instance v3, Ljava/io/FileInputStream;

    .line 788
    .line 789
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 790
    .line 791
    .line 792
    :try_start_3
    new-instance v2, Ljava/io/File;

    .line 793
    .line 794
    const-string v4, "/data/log/dumpstate_debug_history.lst"

    .line 795
    .line 796
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 797
    .line 798
    .line 799
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    .line 800
    .line 801
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 802
    .line 803
    .line 804
    :goto_8
    :try_start_5
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 805
    .line 806
    .line 807
    move-result v9

    .line 808
    if-lez v9, :cond_15

    .line 809
    .line 810
    const/4 v12, 0x0

    .line 811
    invoke-virtual {v4, v0, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 812
    .line 813
    .line 814
    goto :goto_8

    .line 815
    :catchall_0
    move-exception v0

    .line 816
    move-object v14, v3

    .line 817
    move-object/from16 v20, v4

    .line 818
    .line 819
    goto/16 :goto_13

    .line 820
    .line 821
    :catch_2
    move-exception v0

    .line 822
    goto :goto_c

    .line 823
    :catchall_1
    move-exception v0

    .line 824
    move-object v14, v3

    .line 825
    :goto_9
    const/16 v20, 0x0

    .line 826
    .line 827
    goto/16 :goto_13

    .line 828
    .line 829
    :catch_3
    move-exception v0

    .line 830
    :goto_a
    const/4 v4, 0x0

    .line 831
    goto :goto_c

    .line 832
    :catch_4
    move-exception v0

    .line 833
    const/4 v2, 0x0

    .line 834
    goto :goto_a

    .line 835
    :catchall_2
    move-exception v0

    .line 836
    const/4 v14, 0x0

    .line 837
    goto :goto_9

    .line 838
    :catch_5
    move-exception v0

    .line 839
    const/4 v2, 0x0

    .line 840
    const/4 v3, 0x0

    .line 841
    goto :goto_a

    .line 842
    :cond_14
    const/4 v2, 0x0

    .line 843
    const/4 v3, 0x0

    .line 844
    const/4 v4, 0x0

    .line 845
    :cond_15
    if-eqz v3, :cond_16

    .line 846
    .line 847
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 848
    .line 849
    .line 850
    :catch_6
    :cond_16
    if-eqz v4, :cond_18

    .line 851
    .line 852
    :goto_b
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 853
    .line 854
    .line 855
    goto :goto_d

    .line 856
    :goto_c
    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    .line 857
    .line 858
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .line 860
    .line 861
    const-string/jumbo v12, "debug_history - File copy error"

    .line 862
    .line 863
    .line 864
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 875
    .line 876
    .line 877
    if-eqz v3, :cond_17

    .line 878
    .line 879
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 880
    .line 881
    .line 882
    :catch_7
    :cond_17
    if-eqz v4, :cond_18

    .line 883
    .line 884
    goto :goto_b

    .line 885
    :catch_8
    :cond_18
    :goto_d
    if-eqz v2, :cond_1a

    .line 886
    .line 887
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    if-eqz v0, :cond_19

    .line 892
    .line 893
    const/16 v2, 0x3e8

    .line 894
    .line 895
    const/16 v3, 0x3ef

    .line 896
    .line 897
    const/16 v4, 0x1a0

    .line 898
    .line 899
    invoke-static {v0, v4, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 900
    .line 901
    .line 902
    goto :goto_e

    .line 903
    :catch_9
    move-exception v0

    .line 904
    const-string/jumbo v2, "dumpstate_debug_history - getCanonicalPath error"

    .line 905
    .line 906
    .line 907
    invoke-static {v2, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    :cond_19
    :goto_e
    const-string v0, "1"

    .line 911
    .line 912
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    :cond_1a
    :goto_f
    new-instance v0, Ljava/io/File;

    .line 916
    .line 917
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 921
    .line 922
    .line 923
    const-string v1, "%Y%m%d_%H%M%S"

    .line 924
    .line 925
    invoke-virtual {v7, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    const-string v2, "SYSTEM_LAST_KMSG_"

    .line 930
    .line 931
    const-string v3, "_"

    .line 932
    .line 933
    invoke-static {v2, v1, v3, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v4

    .line 937
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 938
    .line 939
    .line 940
    move-result v7

    .line 941
    if-eqz v7, :cond_1b

    .line 942
    .line 943
    const/4 v7, 0x0

    .line 944
    const/16 v9, 0x400

    .line 945
    .line 946
    :try_start_b
    invoke-static {v0, v9, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    new-instance v7, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 977
    goto :goto_10

    .line 978
    :catch_a
    move-exception v0

    .line 979
    invoke-static {v8, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    :cond_1b
    move-object v0, v4

    .line 983
    :goto_10
    sget v1, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    .line 984
    .line 985
    neg-int v1, v1

    .line 986
    const-string v10, "/proc/last_kmsg"

    .line 987
    .line 988
    move-object v6, v5

    .line 989
    move-object/from16 v7, v24

    .line 990
    .line 991
    move-object/from16 v8, v19

    .line 992
    .line 993
    const-wide/16 v13, 0x0

    .line 994
    .line 995
    move-object/from16 v9, v16

    .line 996
    .line 997
    move-object v2, v11

    .line 998
    move v11, v1

    .line 999
    move-object/from16 v15, v24

    .line 1000
    .line 1001
    move-object v12, v0

    .line 1002
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    const-string v10, "/sys/fs/pstore/console-ramoops"

    .line 1006
    .line 1007
    move-object v7, v15

    .line 1008
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    const-string v10, "/sys/fs/pstore/console-ramoops-0"

    .line 1012
    .line 1013
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 1017
    .line 1018
    neg-int v0, v0

    .line 1019
    const-string v9, ""

    .line 1020
    .line 1021
    const-string v10, "/cache/recovery/log"

    .line 1022
    .line 1023
    const-string v12, "SYSTEM_RECOVERY_LOG"

    .line 1024
    .line 1025
    move-object v6, v5

    .line 1026
    move-object v7, v15

    .line 1027
    move-object/from16 v8, v19

    .line 1028
    .line 1029
    move v11, v0

    .line 1030
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    const-string v9, ""

    .line 1034
    .line 1035
    const-string v10, "/cache/recovery/last_kmsg"

    .line 1036
    .line 1037
    const-string v12, "SYSTEM_RECOVERY_KMSG"

    .line 1038
    .line 1039
    move-object v6, v5

    .line 1040
    move-object v7, v15

    .line 1041
    move-object/from16 v8, v19

    .line 1042
    .line 1043
    move v11, v0

    .line 1044
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    if-eqz v5, :cond_1c

    .line 1048
    .line 1049
    const-string v1, "SYSTEM_AUDIT"

    .line 1050
    .line 1051
    invoke-virtual {v5, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v3

    .line 1055
    if-nez v3, :cond_1d

    .line 1056
    .line 1057
    :cond_1c
    :goto_11
    move-object/from16 v8, v19

    .line 1058
    .line 1059
    move-object/from16 v7, v22

    .line 1060
    .line 1061
    move-object/from16 v6, v23

    .line 1062
    .line 1063
    goto/16 :goto_14

    .line 1064
    .line 1065
    :cond_1d
    const-string v3, "Copying audit failures to DropBox"

    .line 1066
    .line 1067
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    .line 1069
    .line 1070
    new-instance v3, Ljava/io/File;

    .line 1071
    .line 1072
    const-string v4, "/proc/last_kmsg"

    .line 1073
    .line 1074
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 1078
    .line 1079
    .line 1080
    move-result-wide v6

    .line 1081
    cmp-long v4, v6, v13

    .line 1082
    .line 1083
    if-gtz v4, :cond_1e

    .line 1084
    .line 1085
    new-instance v3, Ljava/io/File;

    .line 1086
    .line 1087
    const-string v4, "/sys/fs/pstore/console-ramoops"

    .line 1088
    .line 1089
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 1093
    .line 1094
    .line 1095
    move-result-wide v6

    .line 1096
    cmp-long v4, v6, v13

    .line 1097
    .line 1098
    if-gtz v4, :cond_1e

    .line 1099
    .line 1100
    new-instance v3, Ljava/io/File;

    .line 1101
    .line 1102
    const-string v4, "/sys/fs/pstore/console-ramoops-0"

    .line 1103
    .line 1104
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 1108
    .line 1109
    .line 1110
    move-result-wide v6

    .line 1111
    :cond_1e
    cmp-long v4, v6, v13

    .line 1112
    .line 1113
    if-gtz v4, :cond_1f

    .line 1114
    .line 1115
    goto :goto_11

    .line 1116
    :cond_1f
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v4

    .line 1120
    if-eqz v4, :cond_20

    .line 1121
    .line 1122
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v4

    .line 1126
    check-cast v4, Ljava/lang/Long;

    .line 1127
    .line 1128
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 1129
    .line 1130
    .line 1131
    move-result-wide v8

    .line 1132
    cmp-long v4, v8, v6

    .line 1133
    .line 1134
    if-nez v4, :cond_20

    .line 1135
    .line 1136
    goto :goto_11

    .line 1137
    :cond_20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v4

    .line 1141
    invoke-virtual {v15, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-object/from16 v6, v23

    .line 1145
    .line 1146
    invoke-static {v3, v0, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1153
    .line 1154
    .line 1155
    move-object/from16 v7, v22

    .line 1156
    .line 1157
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    array-length v4, v0

    .line 1162
    const/4 v8, 0x0

    .line 1163
    :goto_12
    if-ge v8, v4, :cond_22

    .line 1164
    .line 1165
    aget-object v9, v0, v8

    .line 1166
    .line 1167
    const-string/jumbo v10, "audit"

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1171
    .line 1172
    .line 1173
    move-result v10

    .line 1174
    if-eqz v10, :cond_21

    .line 1175
    .line 1176
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v9

    .line 1180
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    :cond_21
    const/4 v9, 0x1

    .line 1184
    add-int/2addr v8, v9

    .line 1185
    goto :goto_12

    .line 1186
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    const-string v4, "Copied "

    .line 1189
    .line 1190
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v4

    .line 1197
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1198
    .line 1199
    .line 1200
    move-result v4

    .line 1201
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    .line 1204
    const-string v4, " worth of audits to DropBox"

    .line 1205
    .line 1206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .line 1215
    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    .line 1220
    .line 1221
    move-object/from16 v8, v19

    .line 1222
    .line 1223
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    invoke-virtual {v5, v1, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    goto :goto_14

    .line 1241
    :goto_13
    if-eqz v14, :cond_23

    .line 1242
    .line 1243
    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 1244
    .line 1245
    .line 1246
    :catch_b
    :cond_23
    if-eqz v20, :cond_24

    .line 1247
    .line 1248
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 1249
    .line 1250
    .line 1251
    :catch_c
    :cond_24
    throw v0

    .line 1252
    :cond_25
    move-object v6, v2

    .line 1253
    move-object v2, v11

    .line 1254
    move-object v8, v13

    .line 1255
    move-object v7, v15

    .line 1256
    move-wide v13, v9

    .line 1257
    move-object v15, v12

    .line 1258
    if-eqz v5, :cond_26

    .line 1259
    .line 1260
    const-string v0, "SYSTEM_RESTART"

    .line 1261
    .line 1262
    invoke-virtual {v5, v0, v8}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    :cond_26
    :goto_14
    sget-object v0, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    .line 1266
    .line 1267
    array-length v1, v0

    .line 1268
    const/4 v3, 0x0

    .line 1269
    :goto_15
    if-ge v3, v1, :cond_27

    .line 1270
    .line 1271
    aget-object v4, v0, v3

    .line 1272
    .line 1273
    new-instance v9, Ljava/io/File;

    .line 1274
    .line 1275
    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 1279
    .line 1280
    .line 1281
    move-result v4

    .line 1282
    if-nez v4, :cond_28

    .line 1283
    .line 1284
    const/4 v4, 0x1

    .line 1285
    add-int/2addr v3, v4

    .line 1286
    goto :goto_15

    .line 1287
    :cond_27
    const/4 v9, 0x0

    .line 1288
    :cond_28
    const-string v1, ","

    .line 1289
    .line 1290
    const/16 v3, 0xef

    .line 1291
    .line 1292
    const/16 v4, 0xf2

    .line 1293
    .line 1294
    if-nez v9, :cond_29

    .line 1295
    .line 1296
    goto :goto_16

    .line 1297
    :cond_29
    const/16 v0, -0x4000

    .line 1298
    .line 1299
    const/4 v10, 0x0

    .line 1300
    :try_start_e
    invoke-static {v9, v0, v10}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 1304
    const-string/jumbo v9, "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)"

    .line 1305
    .line 1306
    .line 1307
    const/16 v10, 0x8

    .line 1308
    .line 1309
    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v9

    .line 1313
    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 1318
    .line 1319
    .line 1320
    move-result v9

    .line 1321
    if-eqz v9, :cond_2a

    .line 1322
    .line 1323
    const/4 v9, 0x1

    .line 1324
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v10

    .line 1328
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1329
    .line 1330
    .line 1331
    move-result v10

    .line 1332
    const/16 v11, 0x9

    .line 1333
    .line 1334
    invoke-static {v3, v11, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1335
    .line 1336
    .line 1337
    const/4 v10, 0x2

    .line 1338
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v11

    .line 1342
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1343
    .line 1344
    .line 1345
    move-result v11

    .line 1346
    invoke-static {v4, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1347
    .line 1348
    .line 1349
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1350
    .line 1351
    const-string/jumbo v12, "boot_fs_shutdown,"

    .line 1352
    .line 1353
    .line 1354
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v12

    .line 1361
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v0

    .line 1371
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v0

    .line 1378
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    .line 1380
    .line 1381
    goto :goto_16

    .line 1382
    :cond_2a
    const/4 v10, 0x2

    .line 1383
    const/4 v0, 0x4

    .line 1384
    invoke-static {v4, v10, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1385
    .line 1386
    .line 1387
    const-string/jumbo v0, "boot_fs_shutdown, string not found"

    .line 1388
    .line 1389
    .line 1390
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    .line 1392
    .line 1393
    goto :goto_16

    .line 1394
    :catch_d
    move-exception v0

    .line 1395
    move-object v9, v0

    .line 1396
    const-string/jumbo v0, "cannot read last msg"

    .line 1397
    .line 1398
    .line 1399
    invoke-static {v2, v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1400
    .line 1401
    .line 1402
    :goto_16
    sget-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    .line 1403
    .line 1404
    array-length v9, v0

    .line 1405
    const/4 v10, 0x0

    .line 1406
    :goto_17
    if-ge v10, v9, :cond_2f

    .line 1407
    .line 1408
    aget-object v11, v0, v10

    .line 1409
    .line 1410
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1411
    .line 1412
    const-string/jumbo v4, "ro.boottime.init.mount_all."

    .line 1413
    .line 1414
    .line 1415
    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v4

    .line 1425
    const/4 v12, 0x0

    .line 1426
    invoke-static {v4, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1427
    .line 1428
    .line 1429
    move-result v4

    .line 1430
    if-eqz v4, :cond_2e

    .line 1431
    .line 1432
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 1436
    .line 1437
    .line 1438
    move-result v16

    .line 1439
    sparse-switch v16, :sswitch_data_0

    .line 1440
    .line 1441
    .line 1442
    :goto_18
    const/4 v12, -0x1

    .line 1443
    goto :goto_19

    .line 1444
    :sswitch_0
    const-string/jumbo v12, "default"

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v11

    .line 1451
    if-nez v11, :cond_2b

    .line 1452
    .line 1453
    goto :goto_18

    .line 1454
    :cond_2b
    const/4 v12, 0x2

    .line 1455
    goto :goto_19

    .line 1456
    :sswitch_1
    const-string/jumbo v12, "early"

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v11

    .line 1463
    if-nez v11, :cond_2c

    .line 1464
    .line 1465
    goto :goto_18

    .line 1466
    :cond_2c
    const/4 v12, 0x1

    .line 1467
    goto :goto_19

    .line 1468
    :sswitch_2
    const-string/jumbo v12, "late"

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1472
    .line 1473
    .line 1474
    move-result v11

    .line 1475
    if-nez v11, :cond_2d

    .line 1476
    .line 1477
    goto :goto_18

    .line 1478
    :cond_2d
    const/4 v12, 0x0

    .line 1479
    :goto_19
    packed-switch v12, :pswitch_data_0

    .line 1480
    .line 1481
    .line 1482
    :cond_2e
    :goto_1a
    const/4 v4, 0x1

    .line 1483
    goto :goto_1c

    .line 1484
    :pswitch_0
    const/16 v11, 0xa

    .line 1485
    .line 1486
    goto :goto_1b

    .line 1487
    :pswitch_1
    const/16 v11, 0xb

    .line 1488
    .line 1489
    goto :goto_1b

    .line 1490
    :pswitch_2
    const/16 v11, 0xc

    .line 1491
    .line 1492
    :goto_1b
    invoke-static {v3, v11, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1493
    .line 1494
    .line 1495
    goto :goto_1a

    .line 1496
    :goto_1c
    add-int/2addr v10, v4

    .line 1497
    const/16 v4, 0xf2

    .line 1498
    .line 1499
    goto :goto_17

    .line 1500
    :cond_2f
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 1501
    .line 1502
    neg-int v11, v0

    .line 1503
    const-string v12, "SYSTEM_FSCK"

    .line 1504
    .line 1505
    if-eqz v5, :cond_31

    .line 1506
    .line 1507
    invoke-virtual {v5, v12}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 1508
    .line 1509
    .line 1510
    move-result v0

    .line 1511
    if-nez v0, :cond_30

    .line 1512
    .line 1513
    goto :goto_1d

    .line 1514
    :cond_30
    const/4 v0, 0x1

    .line 1515
    goto :goto_1e

    .line 1516
    :cond_31
    :goto_1d
    const/4 v0, 0x0

    .line 1517
    :goto_1e
    const-string v3, "Checking for fsck errors"

    .line 1518
    .line 1519
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    .line 1521
    .line 1522
    new-instance v3, Ljava/io/File;

    .line 1523
    .line 1524
    const-string v4, "/dev/fscklogs/log"

    .line 1525
    .line 1526
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 1530
    .line 1531
    .line 1532
    move-result-wide v9

    .line 1533
    cmp-long v4, v9, v13

    .line 1534
    .line 1535
    if-gtz v4, :cond_32

    .line 1536
    .line 1537
    move-object/from16 p1, v1

    .line 1538
    .line 1539
    goto/16 :goto_27

    .line 1540
    .line 1541
    :cond_32
    invoke-static {v3, v11, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v4

    .line 1545
    const-string/jumbo v6, "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)"

    .line 1546
    .line 1547
    .line 1548
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v6

    .line 1552
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v4

    .line 1556
    array-length v7, v4

    .line 1557
    const/4 v9, 0x0

    .line 1558
    const/4 v10, 0x0

    .line 1559
    const/4 v13, 0x0

    .line 1560
    const/4 v14, 0x0

    .line 1561
    :goto_1f
    if-ge v9, v7, :cond_39

    .line 1562
    .line 1563
    move/from16 v16, v7

    .line 1564
    .line 1565
    aget-object v7, v4, v9

    .line 1566
    .line 1567
    move-object/from16 p1, v1

    .line 1568
    .line 1569
    const-string v1, "FILE SYSTEM WAS MODIFIED"

    .line 1570
    .line 1571
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1572
    .line 1573
    .line 1574
    move-result v1

    .line 1575
    if-nez v1, :cond_33

    .line 1576
    .line 1577
    const-string v1, "[FSCK] Unreachable"

    .line 1578
    .line 1579
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1580
    .line 1581
    .line 1582
    move-result v1

    .line 1583
    if-eqz v1, :cond_34

    .line 1584
    .line 1585
    :cond_33
    move-object/from16 v17, v6

    .line 1586
    .line 1587
    const/16 v1, 0xf2

    .line 1588
    .line 1589
    goto/16 :goto_25

    .line 1590
    .line 1591
    :cond_34
    const-string/jumbo v1, "fs_stat"

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1595
    .line 1596
    .line 1597
    move-result v1

    .line 1598
    if-eqz v1, :cond_38

    .line 1599
    .line 1600
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v1

    .line 1604
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 1605
    .line 1606
    .line 1607
    move-result v17

    .line 1608
    if-eqz v17, :cond_37

    .line 1609
    .line 1610
    move-object/from16 v17, v6

    .line 1611
    .line 1612
    const/4 v6, 0x1

    .line 1613
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v7

    .line 1617
    const/4 v6, 0x2

    .line 1618
    :try_start_f
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v19

    .line 1622
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v6

    .line 1626
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1627
    .line 1628
    .line 1629
    move-result v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_e

    .line 1630
    invoke-static {v7, v1, v4, v13, v14}, Lcom/android/server/BootReceiver;->fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I

    .line 1631
    .line 1632
    .line 1633
    move-result v1

    .line 1634
    const-string/jumbo v6, "userdata"

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1638
    .line 1639
    .line 1640
    move-result v6

    .line 1641
    if-nez v6, :cond_36

    .line 1642
    .line 1643
    const-string/jumbo v6, "data"

    .line 1644
    .line 1645
    .line 1646
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1647
    .line 1648
    .line 1649
    move-result v6

    .line 1650
    if-eqz v6, :cond_35

    .line 1651
    .line 1652
    goto :goto_20

    .line 1653
    :cond_35
    const/16 v13, 0xf2

    .line 1654
    .line 1655
    goto :goto_21

    .line 1656
    :cond_36
    :goto_20
    const/4 v6, 0x3

    .line 1657
    const/16 v13, 0xf2

    .line 1658
    .line 1659
    invoke-static {v13, v6, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1660
    .line 1661
    .line 1662
    :goto_21
    const-string/jumbo v6, "fs_stat, partition:"

    .line 1663
    .line 1664
    .line 1665
    const-string v13, " stat:0x"

    .line 1666
    .line 1667
    invoke-static {v6, v7, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v6

    .line 1671
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v1

    .line 1675
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    .line 1677
    .line 1678
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v1

    .line 1682
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    .line 1684
    .line 1685
    goto :goto_22

    .line 1686
    :catch_e
    const-string/jumbo v6, "cannot parse fs_stat: partition:"

    .line 1687
    .line 1688
    .line 1689
    const-string v13, " stat:"

    .line 1690
    .line 1691
    invoke-static {v6, v7, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v6

    .line 1695
    const/4 v7, 0x2

    .line 1696
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v1

    .line 1700
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    .line 1702
    .line 1703
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v1

    .line 1707
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    .line 1709
    .line 1710
    :goto_22
    move v13, v14

    .line 1711
    :goto_23
    const/16 v1, 0xf2

    .line 1712
    .line 1713
    :goto_24
    const/4 v6, 0x1

    .line 1714
    goto :goto_26

    .line 1715
    :cond_37
    move-object/from16 v17, v6

    .line 1716
    .line 1717
    const/16 v1, 0xf2

    .line 1718
    .line 1719
    const-string/jumbo v6, "cannot parse fs_stat:"

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v6

    .line 1726
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    .line 1728
    .line 1729
    goto :goto_24

    .line 1730
    :cond_38
    move-object/from16 v17, v6

    .line 1731
    .line 1732
    goto :goto_23

    .line 1733
    :goto_25
    const/4 v6, 0x1

    .line 1734
    const/4 v10, 0x1

    .line 1735
    :goto_26
    add-int/2addr v14, v6

    .line 1736
    add-int/2addr v9, v6

    .line 1737
    move-object/from16 v1, p1

    .line 1738
    .line 1739
    move/from16 v7, v16

    .line 1740
    .line 1741
    move-object/from16 v6, v17

    .line 1742
    .line 1743
    goto/16 :goto_1f

    .line 1744
    .line 1745
    :cond_39
    move-object/from16 p1, v1

    .line 1746
    .line 1747
    if-eqz v0, :cond_3a

    .line 1748
    .line 1749
    if-eqz v10, :cond_3a

    .line 1750
    .line 1751
    const-string v9, ""

    .line 1752
    .line 1753
    const-string v10, "/dev/fscklogs/log"

    .line 1754
    .line 1755
    move-object v6, v5

    .line 1756
    move-object v7, v15

    .line 1757
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1758
    .line 1759
    .line 1760
    :cond_3a
    new-instance v0, Ljava/io/File;

    .line 1761
    .line 1762
    const-string v1, "/dev/fscklogs/fsck"

    .line 1763
    .line 1764
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1768
    .line 1769
    .line 1770
    :goto_27
    new-instance v1, Ljava/io/File;

    .line 1771
    .line 1772
    const-string v0, "/data/system/shutdown-metrics.txt"

    .line 1773
    .line 1774
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1775
    .line 1776
    .line 1777
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 1778
    .line 1779
    .line 1780
    move-result v0

    .line 1781
    if-eqz v0, :cond_3b

    .line 1782
    .line 1783
    const/4 v3, 0x0

    .line 1784
    const/4 v4, 0x0

    .line 1785
    :try_start_10
    invoke-static {v1, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v7
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 1789
    goto :goto_28

    .line 1790
    :catch_f
    move-exception v0

    .line 1791
    move-object v3, v0

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1793
    .line 1794
    const-string v4, "Problem reading "

    .line 1795
    .line 1796
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1800
    .line 1801
    .line 1802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v0

    .line 1806
    invoke-static {v2, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1807
    .line 1808
    .line 1809
    :cond_3b
    const/4 v7, 0x0

    .line 1810
    :goto_28
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1811
    .line 1812
    .line 1813
    move-result v0

    .line 1814
    if-nez v0, :cond_49

    .line 1815
    .line 1816
    move-object/from16 v3, p1

    .line 1817
    .line 1818
    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v0

    .line 1822
    array-length v3, v0

    .line 1823
    const/4 v4, 0x0

    .line 1824
    const/4 v5, 0x0

    .line 1825
    const/4 v6, 0x0

    .line 1826
    const/4 v8, 0x0

    .line 1827
    const/4 v12, 0x0

    .line 1828
    :goto_29
    if-ge v12, v3, :cond_42

    .line 1829
    .line 1830
    aget-object v9, v0, v12

    .line 1831
    .line 1832
    const-string v10, ":"

    .line 1833
    .line 1834
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v9

    .line 1838
    array-length v10, v9

    .line 1839
    const/4 v11, 0x2

    .line 1840
    if-eq v10, v11, :cond_3c

    .line 1841
    .line 1842
    const-string v9, "Wrong format of shutdown metrics - "

    .line 1843
    .line 1844
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v9

    .line 1848
    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    .line 1850
    .line 1851
    const/4 v10, 0x0

    .line 1852
    const/4 v11, 0x1

    .line 1853
    goto :goto_2d

    .line 1854
    :cond_3c
    const/4 v10, 0x0

    .line 1855
    aget-object v13, v9, v10

    .line 1856
    .line 1857
    const-string/jumbo v14, "shutdown_"

    .line 1858
    .line 1859
    .line 1860
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1861
    .line 1862
    .line 1863
    move-result v13

    .line 1864
    if-eqz v13, :cond_3e

    .line 1865
    .line 1866
    aget-object v13, v9, v10

    .line 1867
    .line 1868
    const/4 v10, 0x1

    .line 1869
    aget-object v14, v9, v10

    .line 1870
    .line 1871
    :try_start_11
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1872
    .line 1873
    .line 1874
    move-result v10
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_10

    .line 1875
    const/4 v14, 0x0

    .line 1876
    if-ltz v10, :cond_3d

    .line 1877
    .line 1878
    invoke-static {v14, v13, v10}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1879
    .line 1880
    .line 1881
    :cond_3d
    :goto_2a
    const/4 v10, 0x0

    .line 1882
    goto :goto_2b

    .line 1883
    :catch_10
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1884
    .line 1885
    const-string v11, "Cannot parse metric "

    .line 1886
    .line 1887
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1888
    .line 1889
    .line 1890
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    .line 1892
    .line 1893
    const-string v11, " int value - "

    .line 1894
    .line 1895
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    .line 1897
    .line 1898
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    .line 1900
    .line 1901
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v10

    .line 1905
    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    .line 1907
    .line 1908
    goto :goto_2a

    .line 1909
    :goto_2b
    aget-object v11, v9, v10

    .line 1910
    .line 1911
    const-string/jumbo v13, "shutdown_system_server"

    .line 1912
    .line 1913
    .line 1914
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1915
    .line 1916
    .line 1917
    move-result v11

    .line 1918
    if-eqz v11, :cond_3e

    .line 1919
    .line 1920
    const/4 v11, 0x1

    .line 1921
    aget-object v8, v9, v11

    .line 1922
    .line 1923
    goto :goto_2c

    .line 1924
    :cond_3e
    const/4 v11, 0x1

    .line 1925
    :goto_2c
    aget-object v13, v9, v10

    .line 1926
    .line 1927
    const-string/jumbo v14, "reboot"

    .line 1928
    .line 1929
    .line 1930
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1931
    .line 1932
    .line 1933
    move-result v13

    .line 1934
    if-eqz v13, :cond_3f

    .line 1935
    .line 1936
    aget-object v4, v9, v11

    .line 1937
    .line 1938
    goto :goto_2d

    .line 1939
    :cond_3f
    aget-object v13, v9, v10

    .line 1940
    .line 1941
    const-string/jumbo v14, "reason"

    .line 1942
    .line 1943
    .line 1944
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1945
    .line 1946
    .line 1947
    move-result v13

    .line 1948
    if-eqz v13, :cond_40

    .line 1949
    .line 1950
    aget-object v5, v9, v11

    .line 1951
    .line 1952
    goto :goto_2d

    .line 1953
    :cond_40
    aget-object v13, v9, v10

    .line 1954
    .line 1955
    const-string/jumbo v14, "begin_shutdown"

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1959
    .line 1960
    .line 1961
    move-result v13

    .line 1962
    if-eqz v13, :cond_41

    .line 1963
    .line 1964
    aget-object v6, v9, v11

    .line 1965
    .line 1966
    :cond_41
    :goto_2d
    add-int/2addr v12, v11

    .line 1967
    goto/16 :goto_29

    .line 1968
    .line 1969
    :cond_42
    const/4 v10, 0x0

    .line 1970
    const/4 v11, 0x1

    .line 1971
    if-eqz v4, :cond_44

    .line 1972
    .line 1973
    const-string/jumbo v0, "y"

    .line 1974
    .line 1975
    .line 1976
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1977
    .line 1978
    .line 1979
    move-result v0

    .line 1980
    if-eqz v0, :cond_43

    .line 1981
    .line 1982
    move/from16 v22, v11

    .line 1983
    .line 1984
    goto :goto_2f

    .line 1985
    :cond_43
    const-string/jumbo v0, "n"

    .line 1986
    .line 1987
    .line 1988
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1989
    .line 1990
    .line 1991
    move-result v0

    .line 1992
    if-nez v0, :cond_45

    .line 1993
    .line 1994
    const-string v0, "Unexpected value for reboot : "

    .line 1995
    .line 1996
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1997
    .line 1998
    .line 1999
    move-result-object v0

    .line 2000
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    .line 2002
    .line 2003
    goto :goto_2e

    .line 2004
    :cond_44
    const-string v0, "No value received for reboot"

    .line 2005
    .line 2006
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    .line 2008
    .line 2009
    :cond_45
    :goto_2e
    move/from16 v22, v10

    .line 2010
    .line 2011
    :goto_2f
    if-eqz v5, :cond_46

    .line 2012
    .line 2013
    :goto_30
    move-object/from16 v23, v5

    .line 2014
    .line 2015
    goto :goto_31

    .line 2016
    :cond_46
    const-string v0, "No value received for shutdown reason"

    .line 2017
    .line 2018
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    .line 2020
    .line 2021
    const-string v5, "<EMPTY>"

    .line 2022
    .line 2023
    goto :goto_30

    .line 2024
    :goto_31
    if-eqz v6, :cond_47

    .line 2025
    .line 2026
    :try_start_12
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2027
    .line 2028
    .line 2029
    move-result-wide v9
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_11

    .line 2030
    move-wide/from16 v24, v9

    .line 2031
    .line 2032
    goto :goto_33

    .line 2033
    :catch_11
    const-string v0, "Cannot parse shutdown start time: "

    .line 2034
    .line 2035
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2036
    .line 2037
    .line 2038
    move-result-object v0

    .line 2039
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    .line 2041
    .line 2042
    goto :goto_32

    .line 2043
    :cond_47
    const-string v0, "No value received for shutdown start time"

    .line 2044
    .line 2045
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    .line 2047
    .line 2048
    :goto_32
    const-wide/16 v24, 0x0

    .line 2049
    .line 2050
    :goto_33
    if-eqz v8, :cond_48

    .line 2051
    .line 2052
    :try_start_13
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2053
    .line 2054
    .line 2055
    move-result-wide v9
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_12

    .line 2056
    move-wide/from16 v26, v9

    .line 2057
    .line 2058
    goto :goto_35

    .line 2059
    :catch_12
    const-string v0, "Cannot parse shutdown duration: "

    .line 2060
    .line 2061
    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    .line 2063
    .line 2064
    goto :goto_34

    .line 2065
    :cond_48
    const-string v0, "No value received for shutdown duration"

    .line 2066
    .line 2067
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    .line 2069
    .line 2070
    :goto_34
    const-wide/16 v26, 0x0

    .line 2071
    .line 2072
    :goto_35
    const/16 v21, 0x38

    .line 2073
    .line 2074
    invoke-static/range {v21 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JJ)V

    .line 2075
    .line 2076
    .line 2077
    :cond_49
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2078
    .line 2079
    .line 2080
    invoke-static {v15}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    .line 2081
    .line 2082
    .line 2083
    return-void

    .line 2084
    nop

    .line 2085
    :sswitch_data_0
    .sparse-switch
        0x3292a6 -> :sswitch_2
        0x5bd1763 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static -$$Nest$mlogLastAboxMsg(Lcom/android/server/BootReceiver;Ljava/util/zip/ZipOutputStream;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "BootReceiver"

    .line 5
    .line 6
    const-string v0, "/proc/abox/snapshot_0/log"

    .line 7
    .line 8
    const-string v1, "/proc/abox/snapshot_1/log"

    .line 9
    .line 10
    const-string v2, "/sys/kernel/debug/abox/snapshot_0/log"

    .line 11
    .line 12
    const-string v3, "/sys/kernel/debug/abox/snapshot_1/log"

    .line 13
    .line 14
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "/proc/abox/snapshot_0/valid"

    .line 19
    .line 20
    const-string v2, "/proc/abox/snapshot_1/valid"

    .line 21
    .line 22
    const-string v3, "/sys/kernel/debug/abox/snapshot_0/valid"

    .line 23
    .line 24
    const-string v4, "/sys/kernel/debug/abox/snapshot_1/valid"

    .line 25
    .line 26
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/16 v2, 0x1000

    .line 31
    .line 32
    new-array v2, v2, [B

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    move-object v6, v3

    .line 37
    move v5, v4

    .line 38
    :goto_0
    const/4 v7, 0x4

    .line 39
    if-ge v5, v7, :cond_5

    .line 40
    .line 41
    new-instance v8, Ljava/io/File;

    .line 42
    .line 43
    aget-object v9, v0, v5

    .line 44
    .line 45
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v9, Ljava/io/File;

    .line 49
    .line 50
    aget-object v10, v1, v5

    .line 51
    .line 52
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    rem-int/lit8 v10, v5, 0x2

    .line 56
    .line 57
    const-string/jumbo v11, "lastaboxmsg_"

    .line 58
    .line 59
    .line 60
    const-string v12, ".bin"

    .line 61
    .line 62
    invoke-static {v10, v11, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-eqz v11, :cond_4

    .line 71
    .line 72
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-eqz v11, :cond_2

    .line 77
    .line 78
    invoke-static {v9, v7, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const-string v9, "Y"

    .line 83
    .line 84
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_1

    .line 89
    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v9, "get "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-static {p0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    new-instance v7, Ljava/io/FileInputStream;

    .line 112
    .line 113
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    .line 115
    .line 116
    :try_start_1
    new-instance v6, Ljava/util/zip/ZipEntry;

    .line 117
    .line 118
    invoke-direct {v6, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-lez v6, :cond_0

    .line 129
    .line 130
    invoke-virtual {p1, v2, v4, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    move-object v6, v7

    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :catch_0
    move-exception p1

    .line 139
    move-object v6, v7

    .line 140
    goto :goto_3

    .line 141
    :catch_1
    move-exception p1

    .line 142
    move-object v6, v7

    .line 143
    goto :goto_5

    .line 144
    :cond_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    .line 150
    move-object v6, v7

    .line 151
    goto :goto_2

    .line 152
    :catchall_1
    move-exception p0

    .line 153
    goto :goto_6

    .line 154
    :catch_2
    move-exception p1

    .line 155
    goto :goto_3

    .line 156
    :catch_3
    move-exception p1

    .line 157
    goto :goto_5

    .line 158
    :cond_1
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string/jumbo v9, "skip dump "

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v9, " valid:"

    .line 173
    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-static {p0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    .line 186
    .line 187
    :cond_2
    :goto_2
    if-eqz v6, :cond_4

    .line 188
    .line 189
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :goto_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string/jumbo v1, "logLastAboxMsg Null pointer :"

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 215
    .line 216
    .line 217
    if-eqz v6, :cond_5

    .line 218
    .line 219
    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 220
    .line 221
    .line 222
    goto :goto_8

    .line 223
    :goto_5
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string/jumbo v1, "logLastAboxMsg IO err :"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 245
    .line 246
    .line 247
    if-eqz v6, :cond_5

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :goto_6
    if-eqz v6, :cond_3

    .line 251
    .line 252
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 253
    .line 254
    .line 255
    :catch_4
    :cond_3
    throw p0

    .line 256
    :catch_5
    :cond_4
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :catch_6
    :cond_5
    :goto_8
    return-void
.end method

.method public static bridge synthetic -$$Nest$mproc_reset_reason(Lcom/android/server/BootReceiver;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/BootReceiver;->proc_reset_reason()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mwaitUntileRRpDone(Lcom/android/server/BootReceiver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/BootReceiver;->waitUntileRRpDone()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetlogFileKernel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputstoreExtraInfo()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sput-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "ro.debuggable"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/high16 v3, 0x10000

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v2, v4, :cond_0

    .line 13
    .line 14
    const v2, 0x18000

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v3

    .line 19
    :goto_0
    sput v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v4, :cond_1

    .line 26
    .line 27
    const/high16 v3, 0x30000

    .line 28
    .line 29
    :cond_1
    sput v3, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    .line 30
    .line 31
    new-instance v0, Ljava/io/File;

    .line 32
    .line 33
    const-string v2, "/data/tombstones"

    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_TMP_DIR:Ljava/io/File;

    .line 39
    .line 40
    new-instance v0, Landroid/util/AtomicFile;

    .line 41
    .line 42
    new-instance v2, Ljava/io/File;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string/jumbo v4, "log-files.xml"

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v3, "log-files"

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 61
    .line 62
    new-instance v0, Ljava/io/File;

    .line 63
    .line 64
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string/jumbo v3, "last-header.txt"

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 75
    .line 76
    const-string/jumbo v0, "default"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "late"

    .line 80
    .line 81
    .line 82
    const-string/jumbo v3, "early"

    .line 83
    .line 84
    .line 85
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    .line 90
    .line 91
    const-string v0, "/sys/fs/pstore/console-ramoops"

    .line 92
    .line 93
    const-string v2, "/proc/last_kmsg"

    .line 94
    .line 95
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    .line 100
    .line 101
    sput v1, Lcom/android/server/BootReceiver;->sSentReports:I

    .line 102
    .line 103
    sget v0, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 104
    .line 105
    mul-int/lit16 v0, v0, 0x400

    .line 106
    .line 107
    int-to-long v2, v0

    .line 108
    sput-wide v2, Lcom/android/server/BootReceiver;->MAX_TOMBSTONE_SIZE_BYTES:J

    .line 109
    .line 110
    const/4 v0, -0x1

    .line 111
    sput v0, Lcom/android/server/BootReceiver;->reset:I

    .line 112
    .line 113
    const-string v2, ""

    .line 114
    .line 115
    sput-object v2, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 116
    .line 117
    sput-object v2, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    sput-object v2, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    sput-object v2, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    .line 128
    sput-boolean v1, Lcom/android/server/BootReceiver;->store_lastkmsg_read_done:Z

    .line 129
    .line 130
    sput v0, Lcom/android/server/BootReceiver;->store_lastkmsg_val:I

    .line 131
    .line 132
    sput-boolean v1, Lcom/android/server/BootReceiver;->proc_rr_read_done:Z

    .line 133
    .line 134
    sput-object v2, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 135
    .line 136
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter;

    .line 137
    .line 138
    invoke-direct {v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>()V

    .line 139
    .line 140
    .line 141
    sput-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    .line 142
    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 19
    .line 20
    return-void
.end method

.method public static GetRescuePartyLog()Ljava/lang/String;
    .locals 18

    .line 1
    const-string v1, "NoLogFile"

    .line 2
    .line 3
    const-string v2, "EmptyCrashBuffer"

    .line 4
    .line 5
    const-string v3, "InsufficientLogInfo"

    .line 6
    .line 7
    const-string v0, "annotated"

    .line 8
    .line 9
    const-string v4, "***"

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v6, "\"TAG\":\""

    .line 14
    .line 15
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v6, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v6, "\","

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v6, "\"CAUSE\":\""

    .line 33
    .line 34
    const-string v7, "\",\"STACK\":\""

    .line 35
    .line 36
    new-instance v8, Ljava/io/File;

    .line 37
    .line 38
    const-string v9, "/data/log/rescueparty_log"

    .line 39
    .line 40
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    .line 44
    .line 45
    invoke-direct {v14, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 46
    .line 47
    .line 48
    :try_start_1
    new-instance v15, Ljava/io/InputStreamReader;

    .line 49
    .line 50
    invoke-direct {v15, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 51
    .line 52
    .line 53
    :try_start_2
    new-instance v13, Ljava/io/BufferedReader;

    .line 54
    .line 55
    invoke-direct {v13, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    .line 57
    .line 58
    const/16 v16, 0x1

    .line 59
    .line 60
    :goto_0
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    if-eqz v9, :cond_c

    .line 65
    .line 66
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_0

    .line 71
    .line 72
    const-string v10, "Build"

    .line 73
    .line 74
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-nez v10, :cond_0

    .line 79
    .line 80
    const-string v10, "Revision"

    .line 81
    .line 82
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-nez v10, :cond_0

    .line 87
    .line 88
    const-string v10, "ABI"

    .line 89
    .line 90
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-nez v10, :cond_0

    .line 95
    .line 96
    const-string/jumbo v10, "uid:"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-nez v10, :cond_0

    .line 104
    .line 105
    const-string/jumbo v10, "tagged_addr_ctrl:"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-nez v10, :cond_0

    .line 113
    .line 114
    const-string/jumbo v10, "pac_enabled_keys:"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-nez v10, :cond_0

    .line 122
    .line 123
    const-string v10, "    lr"

    .line 124
    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-nez v10, :cond_0

    .line 130
    .line 131
    const-string v10, "    x"

    .line 132
    .line 133
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-nez v10, :cond_0

    .line 138
    .line 139
    const-string v10, "    sp"

    .line 140
    .line 141
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v10
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    if-eqz v10, :cond_1

    .line 146
    .line 147
    :cond_0
    :goto_1
    move-object/from16 v17, v5

    .line 148
    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :cond_1
    const-string v10, "\n"

    .line 152
    .line 153
    const-string v11, "!@*** FATAL"

    .line 154
    .line 155
    if-eqz v16, :cond_7

    .line 156
    .line 157
    :try_start_4
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    const/16 v12, 0x9

    .line 162
    .line 163
    if-eqz v11, :cond_2

    .line 164
    .line 165
    new-instance v10, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v11, "PROCESS: "

    .line 174
    .line 175
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    add-int/2addr v11, v12

    .line 180
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    :goto_2
    const/16 v16, 0x0

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :catchall_0
    move-exception v0

    .line 196
    move/from16 v12, v16

    .line 197
    .line 198
    goto/16 :goto_10

    .line 199
    .line 200
    :catch_0
    move-exception v0

    .line 201
    move-object/from16 v17, v5

    .line 202
    .line 203
    :goto_3
    move/from16 v12, v16

    .line 204
    .line 205
    goto/16 :goto_b

    .line 206
    .line 207
    :cond_2
    const-string v11, "PLATFORM WATCHDOG RESET"

    .line 208
    .line 209
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    if-eqz v11, :cond_3

    .line 214
    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string/jumbo v10, "system_server(watchdog)"

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    goto :goto_2

    .line 234
    :cond_3
    const-string v11, "Process: "

    .line 235
    .line 236
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    if-eqz v11, :cond_5

    .line 241
    .line 242
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    if-eqz v11, :cond_4

    .line 247
    .line 248
    const-string v12, "DeadSystemException"

    .line 249
    .line 250
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    if-eqz v12, :cond_4

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_4
    const-string v12, ", PID"

    .line 258
    .line 259
    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v12
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    move-object/from16 v17, v5

    .line 264
    .line 265
    const/16 v5, 0x9

    .line 266
    .line 267
    :try_start_5
    invoke-virtual {v9, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    const-string/jumbo v9, "com.android.systemui"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    if-eqz v9, :cond_b

    .line 279
    .line 280
    new-instance v9, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    new-instance v9, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    :goto_4
    move-object/from16 v5, v17

    .line 318
    .line 319
    goto :goto_2

    .line 320
    :catch_1
    move-exception v0

    .line 321
    goto :goto_3

    .line 322
    :cond_5
    move-object/from16 v17, v5

    .line 323
    .line 324
    const-string/jumbo v5, "pid: "

    .line 325
    .line 326
    .line 327
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    if-eqz v5, :cond_b

    .line 332
    .line 333
    const-string v5, ">>> "

    .line 334
    .line 335
    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    add-int/lit8 v5, v5, 0x4

    .line 340
    .line 341
    const-string v10, " <<<"

    .line 342
    .line 343
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    const-string/jumbo v10, "system_server"

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v10

    .line 358
    if-nez v10, :cond_6

    .line 359
    .line 360
    const-string v10, "/system/bin/netd"

    .line 361
    .line 362
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    if-nez v10, :cond_6

    .line 367
    .line 368
    const-string v10, "/system/bin/vold"

    .line 369
    .line 370
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v10

    .line 374
    if-nez v10, :cond_6

    .line 375
    .line 376
    const-string v10, "/system/bin/surfaceflinger"

    .line 377
    .line 378
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    if-nez v10, :cond_6

    .line 383
    .line 384
    const-string v10, "/vendor/bin/hw/android.hardware.graphics"

    .line 385
    .line 386
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 387
    .line 388
    .line 389
    move-result v10

    .line 390
    if-nez v10, :cond_6

    .line 391
    .line 392
    const-string/jumbo v10, "zygote"

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 396
    .line 397
    .line 398
    move-result v10

    .line 399
    if-eqz v10, :cond_b

    .line 400
    .line 401
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v5, "("

    .line 413
    .line 414
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string/jumbo v5, "name: "

    .line 418
    .line 419
    .line 420
    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    add-int/lit8 v5, v5, 0x6

    .line 425
    .line 426
    const-string v11, "  >>>"

    .line 427
    .line 428
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    move-result v11

    .line 432
    invoke-virtual {v9, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    const-string v5, ")"

    .line 440
    .line 441
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    goto/16 :goto_4

    .line 449
    .line 450
    :cond_7
    move-object/from16 v17, v5

    .line 451
    .line 452
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-nez v5, :cond_d

    .line 457
    .line 458
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-nez v5, :cond_d

    .line 463
    .line 464
    const-string v5, "FATAL EXCEPTION"

    .line 465
    .line 466
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-nez v5, :cond_d

    .line 471
    .line 472
    const-string v5, "Fatal signal"

    .line 473
    .line 474
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    if-nez v5, :cond_d

    .line 479
    .line 480
    const-string v5, "PLATFORM WATCHDOG"

    .line 481
    .line 482
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-eqz v5, :cond_8

    .line 487
    .line 488
    goto :goto_6

    .line 489
    :cond_8
    const-string v5, "!@"

    .line 490
    .line 491
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    const/4 v11, 0x2

    .line 496
    if-eqz v5, :cond_9

    .line 497
    .line 498
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v9

    .line 502
    :cond_9
    const-string v5, "annotated stack trace:"

    .line 503
    .line 504
    invoke-virtual {v9, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    if-eqz v5, :cond_a

    .line 509
    .line 510
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    if-lt v5, v11, :cond_a

    .line 515
    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    move-result v11

    .line 525
    const/4 v12, 0x1

    .line 526
    sub-int/2addr v11, v12

    .line 527
    const/4 v12, 0x0

    .line 528
    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v9, ":"

    .line 536
    .line 537
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v7
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 566
    :cond_b
    :goto_5
    move-object/from16 v5, v17

    .line 567
    .line 568
    goto/16 :goto_0

    .line 569
    .line 570
    :cond_c
    move-object/from16 v17, v5

    .line 571
    .line 572
    :cond_d
    :goto_6
    if-eqz v16, :cond_10

    .line 573
    .line 574
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_f

    .line 579
    .line 580
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 581
    .line 582
    .line 583
    move-result-wide v0

    .line 584
    const-wide/16 v4, 0x0

    .line 585
    .line 586
    cmp-long v0, v0, v4

    .line 587
    .line 588
    if-lez v0, :cond_e

    .line 589
    .line 590
    invoke-static {v6, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    goto :goto_7

    .line 595
    :cond_e
    invoke-static {v6, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v6

    .line 599
    goto :goto_7

    .line 600
    :cond_f
    invoke-static {v6, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v6

    .line 604
    :cond_10
    :goto_7
    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 605
    .line 606
    .line 607
    :catch_2
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 608
    .line 609
    .line 610
    :catch_3
    :goto_8
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 611
    .line 612
    .line 613
    :catch_4
    :cond_11
    move-object/from16 v1, v17

    .line 614
    .line 615
    goto :goto_e

    .line 616
    :catchall_1
    move-exception v0

    .line 617
    const/4 v12, 0x1

    .line 618
    const/4 v13, 0x0

    .line 619
    goto/16 :goto_10

    .line 620
    .line 621
    :catch_5
    move-exception v0

    .line 622
    move-object/from16 v17, v5

    .line 623
    .line 624
    const/4 v12, 0x1

    .line 625
    const/4 v13, 0x0

    .line 626
    goto :goto_b

    .line 627
    :catchall_2
    move-exception v0

    .line 628
    const/4 v12, 0x1

    .line 629
    const/4 v13, 0x0

    .line 630
    :goto_9
    const/4 v15, 0x0

    .line 631
    goto/16 :goto_10

    .line 632
    .line 633
    :catch_6
    move-exception v0

    .line 634
    move-object/from16 v17, v5

    .line 635
    .line 636
    const/4 v12, 0x1

    .line 637
    const/4 v13, 0x0

    .line 638
    :goto_a
    const/4 v15, 0x0

    .line 639
    goto :goto_b

    .line 640
    :catchall_3
    move-exception v0

    .line 641
    const/4 v12, 0x1

    .line 642
    const/4 v13, 0x0

    .line 643
    const/4 v14, 0x0

    .line 644
    goto :goto_9

    .line 645
    :catch_7
    move-exception v0

    .line 646
    move-object/from16 v17, v5

    .line 647
    .line 648
    const/4 v12, 0x1

    .line 649
    const/4 v13, 0x0

    .line 650
    const/4 v14, 0x0

    .line 651
    goto :goto_a

    .line 652
    :goto_b
    :try_start_9
    const-string v4, "BootReceiver"

    .line 653
    .line 654
    const-string v5, "GetRescuePartyLog() Error"

    .line 655
    .line 656
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 657
    .line 658
    .line 659
    if-eqz v12, :cond_14

    .line 660
    .line 661
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-eqz v0, :cond_13

    .line 666
    .line 667
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 668
    .line 669
    .line 670
    move-result-wide v0

    .line 671
    const-wide/16 v4, 0x0

    .line 672
    .line 673
    cmp-long v0, v0, v4

    .line 674
    .line 675
    if-lez v0, :cond_12

    .line 676
    .line 677
    invoke-static {v6, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    :goto_c
    move-object v6, v0

    .line 682
    goto :goto_d

    .line 683
    :cond_12
    invoke-static {v6, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    goto :goto_c

    .line 688
    :cond_13
    invoke-static {v6, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    goto :goto_c

    .line 693
    :cond_14
    :goto_d
    if-eqz v13, :cond_15

    .line 694
    .line 695
    :try_start_a
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 696
    .line 697
    .line 698
    :catch_8
    :cond_15
    if-eqz v15, :cond_16

    .line 699
    .line 700
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 701
    .line 702
    .line 703
    :catch_9
    :cond_16
    if-eqz v14, :cond_11

    .line 704
    .line 705
    goto :goto_8

    .line 706
    :goto_e
    invoke-static {v1, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 715
    .line 716
    .line 717
    move-result v2

    .line 718
    rsub-int v2, v2, 0x752f

    .line 719
    .line 720
    const-string v3, "\""

    .line 721
    .line 722
    if-ge v1, v2, :cond_17

    .line 723
    .line 724
    invoke-static {v0, v7, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    goto :goto_f

    .line 729
    :cond_17
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    rsub-int v1, v1, 0x752f

    .line 738
    .line 739
    const/4 v2, 0x0

    .line 740
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    :goto_f
    const-string v1, "\t"

    .line 755
    .line 756
    const-string v2, " "

    .line 757
    .line 758
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    return-object v0

    .line 763
    :catchall_4
    move-exception v0

    .line 764
    :goto_10
    if-eqz v12, :cond_18

    .line 765
    .line 766
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 767
    .line 768
    .line 769
    move-result v1

    .line 770
    if-eqz v1, :cond_18

    .line 771
    .line 772
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 773
    .line 774
    .line 775
    :cond_18
    if-eqz v13, :cond_19

    .line 776
    .line 777
    :try_start_c
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 778
    .line 779
    .line 780
    :catch_a
    :cond_19
    if-eqz v15, :cond_1a

    .line 781
    .line 782
    :try_start_d
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 783
    .line 784
    .line 785
    :catch_b
    :cond_1a
    if-eqz v14, :cond_1b

    .line 786
    .line 787
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 788
    .line 789
    .line 790
    :catch_c
    :cond_1b
    throw v0
.end method

.method public static GetResetLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, ".*R[1-9].*"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/BootReceiver;->GetRescuePartyLog()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "\"TAG\":\""

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "\","

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v0, "P|WD"

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const-string v5, "\"STACK\":\""

    .line 44
    .line 45
    const-string v6, "\"CAUSE\":\""

    .line 46
    .line 47
    const-string v8, "BootReceiver"

    .line 48
    .line 49
    const-string v12, "\""

    .line 50
    .line 51
    const-string v13, ""

    .line 52
    .line 53
    if-eqz v0, :cond_17

    .line 54
    .line 55
    new-instance v14, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v15, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v7, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v0, "\"(.*)\".*prio=\\d+ tid=(\\d+).*"

    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v16, "  at.*"

    .line 77
    .line 78
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    const-string v16, ".*held by thread (\\d+)"

    .line 83
    .line 84
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    :try_start_0
    invoke-static {}, Lcom/android/server/BootReceiver;->getANRFileName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    move-object/from16 v18, v2

    .line 95
    .line 96
    move-object/from16 v21, v3

    .line 97
    .line 98
    move-object v3, v5

    .line 99
    move-object v1, v12

    .line 100
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 101
    goto/16 :goto_18

    .line 102
    .line 103
    :cond_2
    new-instance v10, Ljava/io/FileReader;

    .line 104
    .line 105
    invoke-direct {v10, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 106
    .line 107
    .line 108
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    .line 109
    .line 110
    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 111
    .line 112
    .line 113
    move-object/from16 v18, v2

    .line 114
    .line 115
    move-object/from16 v20, v13

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    const/16 v19, 0x0

    .line 121
    .line 122
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 126
    if-eqz v1, :cond_b

    .line 127
    .line 128
    move-object/from16 v21, v3

    .line 129
    .line 130
    :try_start_3
    const-string v3, "Cmd line: system_server"

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 136
    if-eqz v3, :cond_3

    .line 137
    .line 138
    :try_start_4
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 145
    .line 146
    .line 147
    const/16 v17, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catch_0
    move-exception v0

    .line 151
    move/from16 v20, v2

    .line 152
    .line 153
    move-object/from16 v23, v5

    .line 154
    .line 155
    move-object/from16 v22, v12

    .line 156
    .line 157
    goto/16 :goto_b

    .line 158
    .line 159
    :cond_3
    if-eqz v17, :cond_4

    .line 160
    .line 161
    const-string v3, "----- end"

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 167
    if-eqz v3, :cond_4

    .line 168
    .line 169
    :goto_2
    move-object/from16 v23, v5

    .line 170
    .line 171
    move-object/from16 v22, v12

    .line 172
    .line 173
    goto/16 :goto_8

    .line 174
    .line 175
    :cond_4
    :goto_3
    if-eqz v17, :cond_a

    .line 176
    .line 177
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 182
    .line 183
    .line 184
    move-result v22
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 185
    if-eqz v22, :cond_6

    .line 186
    .line 187
    move-object/from16 v22, v12

    .line 188
    .line 189
    const/4 v12, 0x2

    .line 190
    :try_start_6
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v19

    .line 194
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 198
    move-object/from16 v23, v5

    .line 199
    .line 200
    const/4 v5, 0x1

    .line 201
    :try_start_7
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    if-le v12, v2, :cond_5

    .line 206
    .line 207
    move v2, v12

    .line 208
    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v14, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v15, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move/from16 v19, v12

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :catch_1
    move-exception v0

    .line 222
    :goto_4
    move/from16 v20, v2

    .line 223
    .line 224
    goto/16 :goto_b

    .line 225
    .line 226
    :catch_2
    move-exception v0

    .line 227
    move-object/from16 v23, v5

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    move-object/from16 v23, v5

    .line 231
    .line 232
    move-object/from16 v22, v12

    .line 233
    .line 234
    move-object/from16 v3, v20

    .line 235
    .line 236
    :goto_5
    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    if-eqz v12, :cond_8

    .line 245
    .line 246
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    check-cast v12, Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 251
    .line 252
    move-object/from16 v24, v0

    .line 253
    .line 254
    const-string v0, "\n"

    .line 255
    .line 256
    if-nez v12, :cond_7

    .line 257
    .line 258
    move/from16 v20, v2

    .line 259
    .line 260
    const/4 v2, 0x0

    .line 261
    :try_start_8
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :catch_3
    move-exception v0

    .line 289
    goto/16 :goto_b

    .line 290
    .line 291
    :cond_7
    move/from16 v20, v2

    .line 292
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const/4 v12, 0x0

    .line 302
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_8
    move-object/from16 v24, v0

    .line 337
    .line 338
    move/from16 v20, v2

    .line 339
    .line 340
    :goto_6
    invoke-virtual {v11, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_9

    .line 349
    .line 350
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const/4 v2, 0x1

    .line 355
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 368
    .line 369
    .line 370
    :cond_9
    move/from16 v2, v20

    .line 371
    .line 372
    move-object/from16 v12, v22

    .line 373
    .line 374
    move-object/from16 v5, v23

    .line 375
    .line 376
    move-object/from16 v0, v24

    .line 377
    .line 378
    move-object/from16 v20, v3

    .line 379
    .line 380
    :cond_a
    move-object/from16 v3, v21

    .line 381
    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :catch_4
    move-exception v0

    .line 385
    :goto_7
    move-object/from16 v23, v5

    .line 386
    .line 387
    move-object/from16 v22, v12

    .line 388
    .line 389
    goto/16 :goto_4

    .line 390
    .line 391
    :cond_b
    move-object/from16 v21, v3

    .line 392
    .line 393
    goto/16 :goto_2

    .line 394
    .line 395
    :goto_8
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 399
    .line 400
    .line 401
    :goto_9
    const/4 v1, 0x1

    .line 402
    goto :goto_c

    .line 403
    :catch_5
    move-exception v0

    .line 404
    move-object/from16 v21, v3

    .line 405
    .line 406
    goto :goto_7

    .line 407
    :catch_6
    move-exception v0

    .line 408
    move-object/from16 v18, v2

    .line 409
    .line 410
    move-object/from16 v21, v3

    .line 411
    .line 412
    move-object/from16 v23, v5

    .line 413
    .line 414
    move-object/from16 v22, v12

    .line 415
    .line 416
    const/4 v4, 0x0

    .line 417
    :goto_a
    const/16 v20, 0x0

    .line 418
    .line 419
    goto :goto_b

    .line 420
    :catch_7
    move-exception v0

    .line 421
    move-object/from16 v18, v2

    .line 422
    .line 423
    move-object/from16 v21, v3

    .line 424
    .line 425
    move-object/from16 v23, v5

    .line 426
    .line 427
    move-object/from16 v22, v12

    .line 428
    .line 429
    const/4 v4, 0x0

    .line 430
    const/4 v10, 0x0

    .line 431
    goto :goto_a

    .line 432
    :goto_b
    const-string/jumbo v1, "getPWatchdog() Error"

    .line 433
    .line 434
    .line 435
    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    .line 437
    .line 438
    move/from16 v2, v20

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :goto_c
    add-int/2addr v2, v1

    .line 442
    new-array v0, v2, [I

    .line 443
    .line 444
    const/4 v1, 0x0

    .line 445
    :goto_d
    if-ge v1, v2, :cond_c

    .line 446
    .line 447
    const/4 v3, 0x0

    .line 448
    aput v3, v0, v1

    .line 449
    .line 450
    add-int/lit8 v1, v1, 0x1

    .line 451
    .line 452
    goto :goto_d

    .line 453
    :cond_c
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    if-eqz v2, :cond_d

    .line 466
    .line 467
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    check-cast v2, Ljava/util/Map$Entry;

    .line 472
    .line 473
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    check-cast v3, Ljava/lang/Integer;

    .line 478
    .line 479
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    check-cast v2, Ljava/lang/Integer;

    .line 488
    .line 489
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    aget v2, v0, v2

    .line 494
    .line 495
    const/4 v5, 0x1

    .line 496
    add-int/2addr v2, v5

    .line 497
    aput v2, v0, v3

    .line 498
    .line 499
    goto :goto_e

    .line 500
    :cond_d
    const/4 v1, 0x0

    .line 501
    const/4 v2, 0x0

    .line 502
    :goto_f
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    if-nez v3, :cond_11

    .line 507
    .line 508
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    const/4 v5, 0x0

    .line 517
    const/4 v9, 0x0

    .line 518
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 519
    .line 520
    .line 521
    move-result v11

    .line 522
    if-eqz v11, :cond_f

    .line 523
    .line 524
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v11

    .line 528
    check-cast v11, Ljava/util/Map$Entry;

    .line 529
    .line 530
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v12

    .line 534
    check-cast v12, Ljava/lang/Integer;

    .line 535
    .line 536
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v12

    .line 540
    aget v12, v0, v12

    .line 541
    .line 542
    if-nez v12, :cond_e

    .line 543
    .line 544
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    check-cast v2, Ljava/lang/Integer;

    .line 549
    .line 550
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    check-cast v3, Ljava/lang/Integer;

    .line 559
    .line 560
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    aget v3, v0, v3

    .line 565
    .line 566
    const/4 v12, 0x1

    .line 567
    sub-int/2addr v3, v12

    .line 568
    aput v3, v0, v2

    .line 569
    .line 570
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    check-cast v2, Ljava/lang/Integer;

    .line 575
    .line 576
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    check-cast v3, Ljava/lang/Integer;

    .line 585
    .line 586
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    move/from16 v25, v3

    .line 591
    .line 592
    move v3, v2

    .line 593
    move/from16 v2, v25

    .line 594
    .line 595
    goto :goto_11

    .line 596
    :cond_e
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    check-cast v5, Ljava/lang/Integer;

    .line 601
    .line 602
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v9

    .line 610
    check-cast v9, Ljava/lang/Integer;

    .line 611
    .line 612
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 613
    .line 614
    .line 615
    move-result v9

    .line 616
    goto :goto_10

    .line 617
    :cond_f
    move v3, v1

    .line 618
    :goto_11
    if-ne v3, v1, :cond_10

    .line 619
    .line 620
    move v1, v5

    .line 621
    move v2, v9

    .line 622
    const/4 v0, 0x1

    .line 623
    goto :goto_12

    .line 624
    :cond_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move v1, v3

    .line 632
    goto/16 :goto_f

    .line 633
    .line 634
    :cond_11
    const/4 v0, 0x0

    .line 635
    :goto_12
    if-eqz v2, :cond_12

    .line 636
    .line 637
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    if-eqz v3, :cond_12

    .line 646
    .line 647
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    if-nez v3, :cond_13

    .line 656
    .line 657
    :cond_12
    move-object/from16 v1, v22

    .line 658
    .line 659
    move-object/from16 v3, v23

    .line 660
    .line 661
    goto/16 :goto_15

    .line 662
    .line 663
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 669
    .line 670
    .line 671
    move-result-object v4

    .line 672
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    check-cast v4, Ljava/lang/String;

    .line 677
    .line 678
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    const-string v4, ","

    .line 682
    .line 683
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    check-cast v4, Ljava/lang/String;

    .line 695
    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    if-nez v0, :cond_14

    .line 704
    .line 705
    const-string v0, ",WAITLOCK\","

    .line 706
    .line 707
    invoke-static {v3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    :goto_13
    move-object/from16 v3, v23

    .line 712
    .line 713
    goto :goto_14

    .line 714
    :cond_14
    const-string v0, ",DEADLOCK\","

    .line 715
    .line 716
    invoke-static {v3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    goto :goto_13

    .line 721
    :goto_14
    invoke-static {v0, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    check-cast v4, Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    const-string v4, ":\n"

    .line 739
    .line 740
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    check-cast v2, Ljava/lang/String;

    .line 756
    .line 757
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    check-cast v2, Ljava/lang/String;

    .line 769
    .line 770
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    check-cast v1, Ljava/lang/String;

    .line 789
    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    const/16 v2, 0x752f

    .line 802
    .line 803
    if-lt v1, v2, :cond_15

    .line 804
    .line 805
    const/4 v1, 0x0

    .line 806
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    :cond_15
    move-object/from16 v1, v22

    .line 811
    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    goto :goto_18

    .line 817
    :goto_15
    if-eqz v4, :cond_16

    .line 818
    .line 819
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 820
    .line 821
    .line 822
    goto :goto_16

    .line 823
    :catch_8
    move-exception v0

    .line 824
    goto :goto_17

    .line 825
    :cond_16
    :goto_16
    if-eqz v10, :cond_1

    .line 826
    .line 827
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 828
    .line 829
    .line 830
    goto/16 :goto_0

    .line 831
    .line 832
    :goto_17
    const-string v2, "Failed to close in getPWatchdog()"

    .line 833
    .line 834
    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    .line 836
    .line 837
    goto/16 :goto_0

    .line 838
    .line 839
    :goto_18
    move-object/from16 v2, v21

    .line 840
    .line 841
    if-eqz v0, :cond_18

    .line 842
    .line 843
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    return-object v0

    .line 848
    :cond_17
    move-object/from16 v18, v2

    .line 849
    .line 850
    move-object v2, v3

    .line 851
    move-object v3, v5

    .line 852
    move-object v1, v12

    .line 853
    :cond_18
    sget-object v0, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 854
    .line 855
    if-nez v0, :cond_19

    .line 856
    .line 857
    new-instance v0, Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 858
    .line 859
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 860
    .line 861
    .line 862
    sput-object v0, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 863
    .line 864
    :cond_19
    sget-object v0, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 865
    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    .line 868
    .line 869
    invoke-static/range {p0 .. p0}, Lcom/android/server/BootReceiver$ResetReasonFactory;->createResetReasonCode(Ljava/lang/String;)Lcom/android/server/ResetReasonCode;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v0}, Lcom/android/server/ResetReasonCode;->getPatternByReason()Ljava/util/regex/Pattern;

    .line 874
    .line 875
    .line 876
    move-result-object v4

    .line 877
    new-instance v5, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v0}, Lcom/android/server/ResetReasonCode;->addCauseContents()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v6

    .line 886
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v5

    .line 893
    new-instance v6, Ljava/lang/StringBuilder;

    .line 894
    .line 895
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v0}, Lcom/android/server/ResetReasonCode;->addStackContents()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    const-string v6, ".*"

    .line 910
    .line 911
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 912
    .line 913
    .line 914
    move-result-object v6

    .line 915
    invoke-virtual {v6}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v6

    .line 919
    invoke-virtual {v4}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v7

    .line 923
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    move-result v6

    .line 927
    if-eqz v6, :cond_1c

    .line 928
    .line 929
    const-string v0, "N|RP"

    .line 930
    .line 931
    move-object/from16 v4, p0

    .line 932
    .line 933
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-nez v0, :cond_1b

    .line 938
    .line 939
    const-string v0, "N|NP"

    .line 940
    .line 941
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    if-eqz v0, :cond_1a

    .line 946
    .line 947
    goto :goto_19

    .line 948
    :cond_1a
    return-object v13

    .line 949
    :cond_1b
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 950
    .line 951
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    move-object/from16 v6, v18

    .line 961
    .line 962
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    return-object v0

    .line 976
    :cond_1c
    move-object/from16 v6, v18

    .line 977
    .line 978
    const-string v7, "[EFW]\\/(.*)\\((\\s*\\d+)\\):\\s+(.*)"

    .line 979
    .line 980
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 981
    .line 982
    .line 983
    move-result-object v7

    .line 984
    new-instance v9, Ljava/util/ArrayList;

    .line 985
    .line 986
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .line 988
    .line 989
    new-instance v10, Ljava/util/ArrayList;

    .line 990
    .line 991
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .line 993
    .line 994
    new-instance v11, Ljava/lang/StringBuilder;

    .line 995
    .line 996
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 997
    .line 998
    .line 999
    :try_start_b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v12

    .line 1003
    const-string/jumbo v14, "logcat -v brief -b crash -d -t 1000"

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v12, v14}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v12
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1010
    :try_start_c
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1011
    .line 1012
    move-object v15, v5

    .line 1013
    move-object/from16 v18, v6

    .line 1014
    .line 1015
    const-wide/16 v5, 0x32

    .line 1016
    .line 1017
    invoke-virtual {v12, v5, v6, v14}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v5

    .line 1021
    if-nez v5, :cond_1d

    .line 1022
    .line 1023
    invoke-virtual {v12}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1024
    .line 1025
    .line 1026
    :try_start_d
    invoke-virtual {v12}, Ljava/lang/Process;->destroy()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 1027
    .line 1028
    .line 1029
    :catch_9
    return-object v13

    .line 1030
    :catchall_0
    move-exception v0

    .line 1031
    move-object v7, v12

    .line 1032
    goto/16 :goto_20

    .line 1033
    .line 1034
    :catch_a
    move-exception v0

    .line 1035
    move-object v7, v12

    .line 1036
    goto/16 :goto_1f

    .line 1037
    .line 1038
    :cond_1d
    :try_start_e
    new-instance v5, Ljava/io/BufferedReader;

    .line 1039
    .line 1040
    new-instance v6, Ljava/io/InputStreamReader;

    .line 1041
    .line 1042
    invoke-virtual {v12}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v14

    .line 1046
    invoke-direct {v6, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1050
    .line 1051
    .line 1052
    :goto_1a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v6

    .line 1056
    if-eqz v6, :cond_21

    .line 1057
    .line 1058
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v6

    .line 1062
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v14

    .line 1066
    if-nez v14, :cond_1e

    .line 1067
    .line 1068
    goto :goto_1a

    .line 1069
    :cond_1e
    move-object/from16 p0, v5

    .line 1070
    .line 1071
    const/4 v14, 0x1

    .line 1072
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v5

    .line 1076
    const-string v14, "AndroidRuntime"

    .line 1077
    .line 1078
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v14

    .line 1082
    if-nez v14, :cond_1f

    .line 1083
    .line 1084
    const-string v14, "Watchdog"

    .line 1085
    .line 1086
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v14

    .line 1090
    if-nez v14, :cond_1f

    .line 1091
    .line 1092
    const-string v14, "DEBUG"

    .line 1093
    .line 1094
    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1095
    .line 1096
    .line 1097
    move-result v5

    .line 1098
    if-eqz v5, :cond_20

    .line 1099
    .line 1100
    :cond_1f
    const/4 v5, 0x2

    .line 1101
    goto :goto_1b

    .line 1102
    :cond_20
    move-object/from16 v17, v7

    .line 1103
    .line 1104
    const/4 v5, 0x2

    .line 1105
    goto :goto_1c

    .line 1106
    :goto_1b
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v14

    .line 1110
    const/4 v5, 0x3

    .line 1111
    move-object/from16 v17, v7

    .line 1112
    .line 1113
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v7

    .line 1117
    invoke-static {v14, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v7

    .line 1121
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1127
    .line 1128
    .line 1129
    const/4 v14, 0x1

    .line 1130
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v5

    .line 1134
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    const-string v5, "("

    .line 1138
    .line 1139
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    const/4 v5, 0x2

    .line 1143
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v14

    .line 1147
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    .line 1150
    const-string v14, ") : "

    .line 1151
    .line 1152
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    const/4 v14, 0x3

    .line 1156
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v6

    .line 1160
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v6

    .line 1167
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1168
    .line 1169
    .line 1170
    :goto_1c
    move-object/from16 v5, p0

    .line 1171
    .line 1172
    move-object/from16 v7, v17

    .line 1173
    .line 1174
    goto :goto_1a

    .line 1175
    :cond_21
    :try_start_f
    invoke-virtual {v12}, Ljava/lang/Process;->destroy()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 1176
    .line 1177
    .line 1178
    :catch_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v5

    .line 1182
    :cond_22
    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v6

    .line 1186
    if-eqz v6, :cond_23

    .line 1187
    .line 1188
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v6

    .line 1192
    check-cast v6, Landroid/util/Pair;

    .line 1193
    .line 1194
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1195
    .line 1196
    check-cast v7, Ljava/lang/CharSequence;

    .line 1197
    .line 1198
    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v7

    .line 1202
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v7

    .line 1206
    if-eqz v7, :cond_22

    .line 1207
    .line 1208
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1209
    .line 1210
    check-cast v6, Ljava/lang/String;

    .line 1211
    .line 1212
    move-object v13, v6

    .line 1213
    goto :goto_1d

    .line 1214
    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v4

    .line 1218
    :cond_24
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1219
    .line 1220
    .line 1221
    move-result v5

    .line 1222
    if-eqz v5, :cond_25

    .line 1223
    .line 1224
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v5

    .line 1228
    check-cast v5, Landroid/util/Pair;

    .line 1229
    .line 1230
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1231
    .line 1232
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1233
    .line 1234
    .line 1235
    move-result v6

    .line 1236
    if-eqz v6, :cond_24

    .line 1237
    .line 1238
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1239
    .line 1240
    check-cast v5, Ljava/lang/String;

    .line 1241
    .line 1242
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    .line 1244
    .line 1245
    goto :goto_1e

    .line 1246
    :cond_25
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1247
    .line 1248
    .line 1249
    move-result v4

    .line 1250
    const/4 v5, 0x1

    .line 1251
    if-gt v4, v5, :cond_27

    .line 1252
    .line 1253
    const-string v0, "\"CAUSE\":\"NO_LOG\",\"STACK\":\""

    .line 1254
    .line 1255
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 1260
    .line 1261
    .line 1262
    move-result v2

    .line 1263
    const/16 v3, 0x7148

    .line 1264
    .line 1265
    if-gt v2, v3, :cond_26

    .line 1266
    .line 1267
    move v3, v2

    .line 1268
    :cond_26
    sub-int/2addr v2, v3

    .line 1269
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v2

    .line 1273
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    return-object v0

    .line 1282
    :cond_27
    invoke-virtual {v0, v10}, Lcom/android/server/ResetReasonCode;->addCauseStackFromContexts(Ljava/util/List;)Ljava/util/List;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0

    .line 1286
    invoke-static {v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v4

    .line 1290
    const/4 v5, 0x0

    .line 1291
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v6

    .line 1295
    check-cast v6, Ljava/lang/String;

    .line 1296
    .line 1297
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v4

    .line 1304
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v3

    .line 1308
    const/4 v5, 0x1

    .line 1309
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    check-cast v0, Ljava/lang/String;

    .line 1314
    .line 1315
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    move-object/from16 v2, v18

    .line 1334
    .line 1335
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    const-string v2, "\t"

    .line 1346
    .line 1347
    const-string v3, " "

    .line 1348
    .line 1349
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v0

    .line 1353
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1354
    .line 1355
    .line 1356
    move-result v2

    .line 1357
    const/16 v3, 0x752f

    .line 1358
    .line 1359
    if-lt v2, v3, :cond_28

    .line 1360
    .line 1361
    const/4 v2, 0x0

    .line 1362
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v0

    .line 1366
    :cond_28
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    return-object v0

    .line 1371
    :catchall_1
    move-exception v0

    .line 1372
    const/4 v7, 0x0

    .line 1373
    goto :goto_20

    .line 1374
    :catch_c
    move-exception v0

    .line 1375
    const/4 v7, 0x0

    .line 1376
    :goto_1f
    :try_start_10
    const-string v1, "Failed to exec logcat"

    .line 1377
    .line 1378
    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1379
    .line 1380
    .line 1381
    if-eqz v7, :cond_29

    .line 1382
    .line 1383
    :try_start_11
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    .line 1384
    .line 1385
    .line 1386
    :catch_d
    :cond_29
    return-object v13

    .line 1387
    :catchall_2
    move-exception v0

    .line 1388
    :goto_20
    if-eqz v7, :cond_2a

    .line 1389
    .line 1390
    :try_start_12
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 1391
    .line 1392
    .line 1393
    :catch_e
    :cond_2a
    throw v0
.end method

.method public static _trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    const-string/jumbo v5, "dumpstate_"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    move-object v4, p1

    .line 32
    check-cast v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Lcom/android/server/BootReceiver$1;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v0, "trim"

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " - Num of existing listOf"

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " is "

    .line 68
    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    check-cast p1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string v2, "BootReceiver"

    .line 86
    .line 87
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-ge p0, p2, :cond_2

    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    const-string p0, " - Delete file"

    .line 98
    .line 99
    invoke-static {v0, p3, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/io/File;

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Ljava/io/File;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-nez p0, :cond_3

    .line 134
    .line 135
    const-string p0, " - "

    .line 136
    .line 137
    invoke-static {v0, p3, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/io/File;

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v3, " delete failed"

    .line 155
    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_1
.end method

.method public static addAugmentedProtoToDropbox(Ljava/io/File;Landroid/os/DropBoxManager;Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "failed to open for write: "

    .line 2
    .line 3
    .line 4
    const-string v1, "Exception during write: "

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    sget-wide v4, Lcom/android/server/BootReceiver;->MAX_TOMBSTONE_SIZE_BYTES:J

    .line 11
    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    const-string v3, "BootReceiver"

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p2, "Tombstone too large to add to DropBox: "

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object v4, Lcom/android/server/BootReceiver;->TOMBSTONE_TMP_DIR:Ljava/io/File;

    .line 53
    .line 54
    const-string v5, ".tmp"

    .line 55
    .line 56
    invoke-static {p0, v5, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string/jumbo v5, "rw-rw----"

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v4, v5}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 72
    .line 73
    .line 74
    const/high16 v4, 0x30000000

    .line 75
    .line 76
    :try_start_0
    invoke-static {p0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 77
    .line 78
    .line 79
    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-direct {v5, v6}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 87
    .line 88
    .line 89
    const-wide v6, 0x10c00000001L

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 95
    .line 96
    .line 97
    iget p2, p2, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mDroppedCountSinceRateLimitActivated:I

    .line 98
    .line 99
    const-wide v6, 0x10500000002L

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 108
    .line 109
    .line 110
    const-string p2, "SYSTEM_TOMBSTONE_PROTO_WITH_HEADERS"

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p1, p2, p0, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .line 115
    .line 116
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .line 118
    .line 119
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    goto :goto_5

    .line 125
    :catch_0
    move-exception p1

    .line 126
    goto :goto_2

    .line 127
    :catch_1
    move-exception p1

    .line 128
    goto :goto_4

    .line 129
    :catchall_1
    move-exception p1

    .line 130
    if-eqz v4, :cond_1

    .line 131
    .line 132
    :try_start_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catchall_2
    move-exception p2

    .line 137
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    :goto_2
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {v3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_2
    :goto_3
    return-void

    .line 158
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-static {v3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .line 172
    .line 173
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 174
    :goto_5
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 175
    .line 176
    .line 177
    :catch_3
    throw p1
.end method

.method public static addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string p1, "[[TRUNCATED]]\n"

    .line 23
    .line 24
    invoke-static {v0, p5, p1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p2, p1, p3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string p3, "SYSTEM_TOMBSTONE"

    .line 33
    .line 34
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v0, ">>> system_server <<<"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    const-string/jumbo p1, "system_server_native_crash"

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    const/16 p1, 0xba

    .line 61
    .line 62
    invoke-static {p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-static {p0, p6, p2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_0
    return-void
.end method

.method public static addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0xe

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    sget v0, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    const/high16 v2, 0x30000

    .line 16
    .line 17
    if-le v0, v2, :cond_0

    .line 18
    .line 19
    if-le v2, v1, :cond_1

    .line 20
    .line 21
    sub-int/2addr v2, v1

    .line 22
    neg-int p5, v2

    .line 23
    :cond_0
    :goto_0
    move v5, p5

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p5, 0x0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    move-object v0, p0

    .line 28
    move-object v1, p1

    .line 29
    move-object v2, p2

    .line 30
    move-object v3, p3

    .line 31
    move-object v4, p4

    .line 32
    move-object v6, p6

    .line 33
    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-string v0, "Copying "

    .line 2
    .line 3
    const-string v1, " to DropBox ("

    .line 4
    .line 5
    const-string v2, ")"

    .line 6
    .line 7
    invoke-static {v0, p3, v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "BootReceiver"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    filled-new-array {p3, p0, p1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const p1, 0x13c6a

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    and-int/lit16 v2, v1, 0x400

    .line 6
    .line 7
    if-eqz v2, :cond_10

    .line 8
    .line 9
    const-string v2, "Pass ([1-9]E?):"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "Inode [0-9]+ extent tree.*could be shorter"

    .line 16
    .line 17
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v5, ""

    .line 22
    .line 23
    move-object v6, v5

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    move/from16 v5, p3

    .line 28
    .line 29
    :goto_0
    const-string/jumbo v10, "fs_stat, partition:"

    .line 30
    .line 31
    .line 32
    const-string v11, "BootReceiver"

    .line 33
    .line 34
    move/from16 v12, p4

    .line 35
    .line 36
    if-ge v5, v12, :cond_b

    .line 37
    .line 38
    aget-object v13, p2, v5

    .line 39
    .line 40
    const-string v14, "FILE SYSTEM WAS MODIFIED"

    .line 41
    .line 42
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    if-nez v14, :cond_b

    .line 47
    .line 48
    const-string v14, "[FSCK] Unreachable"

    .line 49
    .line 50
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    if-eqz v14, :cond_0

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_0
    const-string v14, "Pass "

    .line 59
    .line 60
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    const/4 v15, 0x1

    .line 65
    if-eqz v14, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-eqz v11, :cond_1

    .line 76
    .line 77
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    :cond_1
    move v4, v15

    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_2
    const-string v14, "Inode "

    .line 85
    .line 86
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    const-string v4, "1"

    .line 91
    .line 92
    if-eqz v14, :cond_4

    .line 93
    .line 94
    invoke-virtual {v3, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 95
    .line 96
    .line 97
    move-result-object v14

    .line 98
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    if-eqz v14, :cond_3

    .line 103
    .line 104
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v7, " found tree optimization:"

    .line 119
    .line 120
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move v4, v15

    .line 134
    move v7, v4

    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :cond_3
    move v4, v15

    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :cond_4
    const-string v14, "[QUOTA WARNING]"

    .line 141
    .line 142
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    const-string v15, "5"

    .line 147
    .line 148
    if-eqz v14, :cond_6

    .line 149
    .line 150
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    if-eqz v14, :cond_6

    .line 155
    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v8, " found quota warning:"

    .line 165
    .line 166
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    if-nez v7, :cond_5

    .line 180
    .line 181
    const/4 v4, 0x0

    .line 182
    const/4 v8, 0x1

    .line 183
    goto :goto_4

    .line 184
    :cond_5
    const/4 v4, 0x1

    .line 185
    const/4 v8, 0x1

    .line 186
    goto :goto_2

    .line 187
    :cond_6
    const-string v14, "Update quota info"

    .line 188
    .line 189
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    if-eqz v14, :cond_7

    .line 194
    .line 195
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    if-eqz v14, :cond_7

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_7
    const-string v14, "Timestamp(s) on inode"

    .line 203
    .line 204
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v14

    .line 208
    if-eqz v14, :cond_9

    .line 209
    .line 210
    const-string/jumbo v14, "beyond 2310-04-04 are likely pre-1970"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result v14

    .line 217
    if-eqz v14, :cond_9

    .line 218
    .line 219
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-eqz v4, :cond_9

    .line 224
    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v9, " found timestamp adjustment:"

    .line 234
    .line 235
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    add-int/lit8 v4, v5, 0x1

    .line 249
    .line 250
    aget-object v9, p2, v4

    .line 251
    .line 252
    const-string v10, "Fix? yes"

    .line 253
    .line 254
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-eqz v9, :cond_8

    .line 259
    .line 260
    move v5, v4

    .line 261
    :cond_8
    const/4 v4, 0x1

    .line 262
    const/4 v9, 0x1

    .line 263
    goto :goto_2

    .line 264
    :cond_9
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-nez v4, :cond_a

    .line 273
    .line 274
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-nez v4, :cond_a

    .line 279
    .line 280
    const/4 v4, 0x1

    .line 281
    goto :goto_4

    .line 282
    :cond_a
    :goto_1
    const/4 v4, 0x1

    .line 283
    :goto_2
    add-int/2addr v5, v4

    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_b
    :goto_3
    const/4 v13, 0x0

    .line 287
    const/4 v4, 0x0

    .line 288
    :goto_4
    if-eqz v4, :cond_c

    .line 289
    .line 290
    if-eqz v13, :cond_10

    .line 291
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v0, " fix:"

    .line 301
    .line 302
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_c
    if-eqz v8, :cond_d

    .line 317
    .line 318
    if-nez v7, :cond_d

    .line 319
    .line 320
    const-string/jumbo v2, "fs_stat, got quota fix without tree optimization, partition:"

    .line 321
    .line 322
    .line 323
    invoke-static {v2, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_d
    if-eqz v7, :cond_e

    .line 328
    .line 329
    if-nez v8, :cond_f

    .line 330
    .line 331
    :cond_e
    if-eqz v9, :cond_10

    .line 332
    .line 333
    :cond_f
    const-string v2, " fix ignored"

    .line 334
    .line 335
    invoke-static {v10, v0, v2, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    and-int/lit16 v0, v1, -0x401

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_10
    :goto_5
    move v0, v1

    .line 342
    :goto_6
    return v0
.end method

.method public static getANRFileName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/anr"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda8;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda8;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    array-length v1, v0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "/data/anr/"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    array-length v2, v0

    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 36
    .line 37
    aget-object v0, v0, v2

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 52
    return-object v0
.end method

.method public static getBootHeadersToLogAndUpdate()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    const/16 v1, 0x200

    .line 10
    .line 11
    const-string v2, "Build: "

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "\nHardware: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "\nRevision: "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string/jumbo v2, "ro.revision"

    .line 38
    .line 39
    .line 40
    const-string v3, ""

    .line 41
    .line 42
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, "\nBootloader: "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "\nRadio: "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, "\nKernel: "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance v2, Ljava/io/File;

    .line 77
    .line 78
    const-string v3, "/proc/version"

    .line 79
    .line 80
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 v3, 0x400

    .line 84
    .line 85
    const-string v4, "...\n"

    .line 86
    .line 87
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    sget v2, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    .line 95
    .line 96
    invoke-static {v2}, Landroid/system/Os;->sysconf(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    const-wide/16 v4, 0x1000

    .line 101
    .line 102
    cmp-long v4, v2, v4

    .line 103
    .line 104
    const-string v5, "\n"

    .line 105
    .line 106
    if-eqz v4, :cond_0

    .line 107
    .line 108
    const-string v4, "PageSize: "

    .line 109
    .line 110
    invoke-static {v1, v4, v2, v3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :try_start_1
    sget-object v2, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 121
    .line 122
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catch_1
    move-exception v2

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v4, "Error writing "

    .line 130
    .line 131
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object v4, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    const-string v4, "BootReceiver"

    .line 144
    .line 145
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .line 147
    .line 148
    :goto_0
    if-nez v0, :cond_1

    .line 149
    .line 150
    const-string/jumbo v0, "isPrevious: false\n"

    .line 151
    .line 152
    .line 153
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0

    .line 158
    :cond_1
    const-string/jumbo v1, "isPrevious: true\n"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    return-object v0
.end method

.method public static is_store_lastkmsg()I
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/proc/store_lastkmsg"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/android/server/BootReceiver;->store_lastkmsg_read_done:Z

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "BootReceiver"

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v0, "PROC_STORE_KMSG : no exist"

    .line 22
    .line 23
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    sput v1, Lcom/android/server/BootReceiver;->store_lastkmsg_val:I

    .line 29
    .line 30
    :try_start_0
    const-string v4, "\n"

    .line 31
    .line 32
    const/16 v5, 0x400

    .line 33
    .line 34
    invoke-static {v0, v5, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v4, "PROC_STORE_KMSG : read fail "

    .line 41
    .line 42
    invoke-static {v4, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-lt v2, v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "1"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    sput v3, Lcom/android/server/BootReceiver;->store_lastkmsg_val:I

    .line 67
    .line 68
    :cond_1
    :goto_1
    sput-boolean v3, Lcom/android/server/BootReceiver;->store_lastkmsg_read_done:Z

    .line 69
    .line 70
    :cond_2
    sget v0, Lcom/android/server/BootReceiver;->store_lastkmsg_val:I

    .line 71
    .line 72
    return v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-array v1, v0, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    .line 15
    .line 16
    invoke-static {p0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v2, v2, [Ljava/nio/file/CopyOption;

    .line 24
    .line 25
    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 26
    .line 27
    aput-object v3, v2, v0

    .line 28
    .line 29
    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 30
    .line 31
    .line 32
    const/16 p0, 0x3ef

    .line 33
    .line 34
    const/16 v0, 0x1a0

    .line 35
    .line 36
    const/16 v1, 0x3e8

    .line 37
    .line 38
    invoke-static {p1, v0, v1, p0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string p1, "Failed to move file"

    .line 44
    .line 45
    const-string v0, "BootReceiver"

    .line 46
    .line 47
    invoke-static {p1, p0, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return-void
.end method

.method public static proc_reset_reason()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/proc/reset_reason"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/android/server/BootReceiver;->proc_rr_read_done:Z

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "BootReceiver"

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v0, "/proc/reset_reason : no exist"

    .line 21
    .line 22
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_0
    const-string v1, "\n"

    .line 27
    .line 28
    const/16 v3, 0x400

    .line 29
    .line 30
    invoke-static {v0, v3, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "PROC_RESET_REASON : read fail "

    .line 39
    .line 40
    invoke-static {v1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v1, "reset_reason = "

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x2

    .line 65
    if-lt v0, v1, :cond_1

    .line 66
    .line 67
    sget-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 75
    .line 76
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    const-string v0, "NA"

    .line 81
    .line 82
    sput-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 83
    .line 84
    :cond_2
    const/4 v0, 0x1

    .line 85
    sput-boolean v0, Lcom/android/server/BootReceiver;->proc_rr_read_done:Z

    .line 86
    .line 87
    :cond_3
    sget-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 88
    .line 89
    return-object v0
.end method

.method public static readSysfsFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "BootReceiver"

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const p0, 0x8000

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-static {v0, p0, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string/jumbo v0, "readTextFile error"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string/jumbo v0, "no file: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    const-string p0, ""

    .line 42
    .line 43
    :goto_1
    return-object p0
.end method

.method public static readTimestamps()Ljava/util/HashMap;
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 14
    :try_start_2
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    :goto_0
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x2

    .line 23
    const/4 v7, 0x1

    .line 24
    if-eq v5, v6, :cond_0

    .line 25
    .line 26
    if-eq v5, v7, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-ne v5, v6, :cond_6

    .line 30
    .line 31
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    :cond_1
    :goto_1
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eq v6, v7, :cond_5

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    if-ne v6, v8, :cond_2

    .line 43
    .line 44
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-le v9, v5, :cond_5

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception v4

    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_2
    :goto_2
    if-eq v6, v8, :cond_1

    .line 55
    .line 56
    const/4 v8, 0x4

    .line 57
    if-ne v6, v8, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const-string/jumbo v8, "log"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_4

    .line 72
    .line 73
    const-string/jumbo v6, "filename"

    .line 74
    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    invoke-interface {v4, v8, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    const-string/jumbo v9, "timestamp"

    .line 82
    .line 83
    .line 84
    invoke-interface {v4, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const-string v6, "BootReceiver"

    .line 97
    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v9, "Unknown tag: "

    .line 104
    .line 105
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    if-eqz v3, :cond_8

    .line 127
    .line 128
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .line 130
    .line 131
    goto/16 :goto_c

    .line 132
    .line 133
    :catchall_1
    move-exception v2

    .line 134
    goto/16 :goto_d

    .line 135
    .line 136
    :catch_0
    move-exception v2

    .line 137
    goto :goto_5

    .line 138
    :catch_1
    move-exception v2

    .line 139
    goto/16 :goto_7

    .line 140
    .line 141
    :catch_2
    move-exception v2

    .line 142
    goto/16 :goto_8

    .line 143
    .line 144
    :catch_3
    move-exception v2

    .line 145
    goto/16 :goto_9

    .line 146
    .line 147
    :catch_4
    move-exception v2

    .line 148
    goto/16 :goto_a

    .line 149
    .line 150
    :catch_5
    move v2, v7

    .line 151
    goto/16 :goto_b

    .line 152
    .line 153
    :cond_6
    :try_start_4
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    const-string/jumbo v5, "no start tag found"

    .line 156
    .line 157
    .line 158
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    :goto_3
    if-eqz v3, :cond_7

    .line 163
    .line 164
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :catchall_2
    move-exception v3

    .line 169
    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :catchall_3
    move-exception v3

    .line 174
    move v7, v2

    .line 175
    move-object v2, v3

    .line 176
    goto/16 :goto_d

    .line 177
    .line 178
    :catch_6
    move-exception v3

    .line 179
    move v7, v2

    .line 180
    move-object v2, v3

    .line 181
    goto :goto_5

    .line 182
    :catch_7
    move-exception v3

    .line 183
    move v7, v2

    .line 184
    move-object v2, v3

    .line 185
    goto :goto_7

    .line 186
    :catch_8
    move-exception v3

    .line 187
    move v7, v2

    .line 188
    move-object v2, v3

    .line 189
    goto :goto_8

    .line 190
    :catch_9
    move-exception v3

    .line 191
    move v7, v2

    .line 192
    move-object v2, v3

    .line 193
    goto :goto_9

    .line 194
    :catch_a
    move-exception v3

    .line 195
    move v7, v2

    .line 196
    move-object v2, v3

    .line 197
    goto :goto_a

    .line 198
    :cond_7
    :goto_4
    throw v4
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 199
    :goto_5
    :try_start_7
    const-string v3, "BootReceiver"

    .line 200
    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v5, "Failed parsing "

    .line 207
    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 219
    .line 220
    .line 221
    if-nez v7, :cond_8

    .line 222
    .line 223
    :goto_6
    :try_start_8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 224
    .line 225
    .line 226
    goto/16 :goto_c

    .line 227
    .line 228
    :catchall_4
    move-exception v1

    .line 229
    goto/16 :goto_e

    .line 230
    .line 231
    :goto_7
    :try_start_9
    const-string v3, "BootReceiver"

    .line 232
    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v5, "Failed parsing "

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    if-nez v7, :cond_8

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :goto_8
    const-string v3, "BootReceiver"

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v5, "Failed parsing "

    .line 264
    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    if-nez v7, :cond_8

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :goto_9
    const-string v3, "BootReceiver"

    .line 282
    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v5, "Failed parsing "

    .line 289
    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    if-nez v7, :cond_8

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :goto_a
    const-string v3, "BootReceiver"

    .line 307
    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v5, "Failed parsing "

    .line 314
    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 326
    .line 327
    .line 328
    if-nez v7, :cond_8

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :catch_b
    :goto_b
    :try_start_a
    const-string v3, "BootReceiver"

    .line 332
    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v5, "No existing last log timestamp file "

    .line 339
    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    sget-object v5, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 344
    .line 345
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v5, "; starting empty"

    .line 353
    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 362
    .line 363
    .line 364
    if-nez v2, :cond_8

    .line 365
    .line 366
    goto/16 :goto_6

    .line 367
    .line 368
    :cond_8
    :goto_c
    :try_start_b
    monitor-exit v0

    .line 369
    return-object v1

    .line 370
    :goto_d
    if-nez v7, :cond_9

    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 373
    .line 374
    .line 375
    :cond_9
    throw v2

    .line 376
    :goto_e
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 377
    throw v1
.end method

.method public static recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-gtz v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    cmp-long v2, v4, v0

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    return v3

    .line 38
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method public static resetDropboxRateLimiter()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/DropboxRateLimiter;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static sendResetLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "HqmManagerService"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Landroid/os/SemHqmManager;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v5, "0.0"

    .line 13
    .line 14
    const-string v6, ""

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "AP"

    .line 18
    .line 19
    const-string v3, "REST"

    .line 20
    .line 21
    const-string/jumbo v4, "ph"

    .line 22
    .line 23
    .line 24
    const-string v7, ""

    .line 25
    .line 26
    const-string v9, ""

    .line 27
    .line 28
    move-object v8, p1

    .line 29
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    const-string/jumbo p0, "send broadcast to HQM about reset reason : "

    .line 33
    .line 34
    .line 35
    const-string v0, "BootReceiver"

    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static waitUntileRRpDone()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x1e

    .line 4
    .line 5
    const-string v3, "BootReceiver"

    .line 6
    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    :try_start_0
    const-string/jumbo v2, "sys.boot.errp"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "We waited make eRRp Done for "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "s"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-wide/16 v4, 0x3e8

    .line 49
    .line 50
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    const-string/jumbo v1, "waitUntileRRpDone error"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    const-string v0, "Waited enough time(30s) for eRRp done, but timed out"

    .line 63
    .line 64
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static writeTimestamps(Ljava/util/HashMap;)V
    .locals 9

    .line 1
    const-string v0, "Failed to write timestamp file: "

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "log-files"

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo v6, "log"

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v6, "filename"

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    .line 57
    .line 58
    const-string/jumbo v6, "timestamp"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/lang/Long;

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    invoke-interface {v2, v4, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    .line 73
    .line 74
    const-string/jumbo v5, "log"

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const-string/jumbo p0, "log-files"

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    .line 90
    .line 91
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 92
    .line 93
    .line 94
    sget-object p0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_1
    :try_start_2
    const-string v2, "BootReceiver"

    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v4, "Failed to write timestamp file, using the backup: "

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    sget-object p0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 125
    .line 126
    .line 127
    :goto_2
    monitor-exit v1

    .line 128
    return-void

    .line 129
    :catch_1
    move-exception p0

    .line 130
    const-string v2, "BootReceiver"

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 149
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    throw p0
.end method


# virtual methods
.method public final getDumpFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    const-string v2, "/data/log"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v2, "P|UR"

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    new-array p0, v3, [Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "/data/log/unknown_platform_reset.log"

    .line 22
    .line 23
    invoke-static {p1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    .line 28
    .line 29
    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    .line 36
    .line 37
    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_0
    return-object v4

    .line 45
    :cond_1
    new-instance v2, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda8;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda8;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    return-object v4

    .line 57
    :cond_2
    sget-object v2, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    new-instance v2, Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v2, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 67
    .line 68
    :cond_3
    sget-object v2, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/android/server/BootReceiver$ResetReasonFactory;->createResetReasonCode(Ljava/lang/String;)Lcom/android/server/ResetReasonCode;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/android/server/ResetReasonCode;->addSuffix()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v5, ""

    .line 82
    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_c

    .line 88
    .line 89
    const/4 v2, -0x1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    sparse-switch v5, :sswitch_data_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :sswitch_0
    const-string v5, "K|WP"

    .line 99
    .line 100
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    const/4 v2, 0x6

    .line 108
    goto :goto_0

    .line 109
    :sswitch_1
    const-string v5, "K|TP"

    .line 110
    .line 111
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const/4 v2, 0x5

    .line 119
    goto :goto_0

    .line 120
    :sswitch_2
    const-string v5, "K|SP"

    .line 121
    .line 122
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_6

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    const/4 v2, 0x4

    .line 130
    goto :goto_0

    .line 131
    :sswitch_3
    const-string v5, "K|PP"

    .line 132
    .line 133
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_7

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_7
    const/4 v2, 0x3

    .line 141
    goto :goto_0

    .line 142
    :sswitch_4
    const-string v5, "K|KP"

    .line 143
    .line 144
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_8

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_8
    const/4 v2, 0x2

    .line 152
    goto :goto_0

    .line 153
    :sswitch_5
    const-string v5, "K|DP"

    .line 154
    .line 155
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_9

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_9
    move v2, v0

    .line 163
    goto :goto_0

    .line 164
    :sswitch_6
    const-string v5, "K|CP"

    .line 165
    .line 166
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_a

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_a
    move v2, v3

    .line 174
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 175
    .line 176
    .line 177
    iget-boolean p0, p0, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 178
    .line 179
    if-eqz p0, :cond_b

    .line 180
    .line 181
    const-string/jumbo p0, "sys_error"

    .line 182
    .line 183
    .line 184
    :goto_1
    move-object v2, p0

    .line 185
    goto :goto_2

    .line 186
    :cond_b
    move-object v2, v4

    .line 187
    goto :goto_2

    .line 188
    :pswitch_0
    const-string/jumbo p0, "lastkmsg"

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_c
    :goto_2
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    array-length p0, v1

    .line 196
    :goto_3
    if-ge v3, p0, :cond_e

    .line 197
    .line 198
    aget-object p1, v1, v3

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_d

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string/jumbo v7, "dumpstate_"

    .line 213
    .line 214
    .line 215
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_d

    .line 230
    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v5, "/data/log/"

    .line 234
    .line 235
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    move-object v4, p1

    .line 250
    :cond_d
    add-int/2addr v3, v0

    .line 251
    goto :goto_3

    .line 252
    :cond_e
    return-object v4

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x23f1be -> :sswitch_6
        0x23f1dd -> :sswitch_5
        0x23f2b6 -> :sswitch_4
        0x23f351 -> :sswitch_3
        0x23f3ae -> :sswitch_2
        0x23f3cd -> :sswitch_1
        0x23f42a -> :sswitch_0
    .end sparse-switch

    .line 254
    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isNotRescueParty()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "NONE"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "N|R"

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "persist.sys.rescue_level"

    .line 23
    .line 24
    .line 25
    const-string v3, "0"

    .line 26
    .line 27
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v2, "sys.reset_reason"

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    new-instance v0, Lcom/android/server/BootReceiver$3;

    .line 12
    .line 13
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/BootReceiver$3;-><init>(Lcom/android/server/BootReceiver;ZLandroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    const-string p0, "/sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    .line 23
    .line 24
    sget p1, Landroid/system/OsConstants;->O_RDONLY:I

    .line 25
    .line 26
    const/16 p2, 0x180

    .line 27
    .line 28
    invoke-static {p0, p1, p2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    new-instance p1, Lcom/android/server/BootReceiver$4;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    const/16 p2, 0x400

    .line 38
    .line 39
    new-array p2, p2, [B

    .line 40
    .line 41
    iput-object p2, p1, Lcom/android/server/BootReceiver$4;->mTraceBuffer:[B

    .line 42
    .line 43
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p2, p0, v0, p1}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p0

    .line 61
    const-string p1, "BootReceiver"

    .line 62
    .line 63
    const-string p2, "Could not open /sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    .line 64
    .line 65
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    return-void
.end method
