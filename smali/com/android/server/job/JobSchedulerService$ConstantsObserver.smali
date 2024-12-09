.class public final Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public mCacheConfigChanges:Z

.field public mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 9
    .line 10
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 11
    .line 12
    check-cast v5, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ge v4, v5, :cond_0

    .line 19
    .line 20
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 21
    .line 22
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 23
    .line 24
    check-cast v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/job/controllers/StateController;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/android/server/job/controllers/StateController;->prepareForUpdatedConstantsLocked()V

    .line 33
    .line 34
    .line 35
    add-int/2addr v4, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v4

    .line 42
    :try_start_0
    iget-boolean v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    const-string/jumbo v5, "jobscheduler"

    .line 47
    .line 48
    .line 49
    new-array v6, v3, [Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v5, v6}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iput-object v5, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    move-object/from16 v16, v4

    .line 60
    .line 61
    goto/16 :goto_b

    .line 62
    .line 63
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    move v6, v3

    .line 72
    move v7, v6

    .line 73
    move v8, v7

    .line 74
    move v9, v8

    .line 75
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_a

    .line 80
    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    check-cast v10, Ljava/lang/String;

    .line 86
    .line 87
    if-nez v10, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    sget-boolean v11, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 91
    .line 92
    if-nez v11, :cond_3

    .line 93
    .line 94
    iget-boolean v11, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 95
    .line 96
    if-eqz v11, :cond_4

    .line 97
    .line 98
    :cond_3
    const-string v11, "JobScheduler"

    .line 99
    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v13, "DeviceConfig "

    .line 106
    .line 107
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v13, " changed to "

    .line 114
    .line 115
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    invoke-virtual {v1, v10, v13}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    const/4 v12, 0x3

    .line 138
    sparse-switch v11, :sswitch_data_0

    .line 139
    .line 140
    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :sswitch_0
    const-string/jumbo v11, "conn_prefetch_relax_frac"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-eqz v11, :cond_5

    .line 151
    .line 152
    const/16 v11, 0x17

    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :sswitch_1
    const-string/jumbo v11, "runtime_min_ui_guarantee_ms"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-eqz v11, :cond_5

    .line 164
    .line 165
    const/16 v11, 0x21

    .line 166
    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :sswitch_2
    const-string/jumbo v11, "runtime_free_quota_max_limit_ms"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_5

    .line 177
    .line 178
    const/16 v11, 0x1e

    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :sswitch_3
    const-string/jumbo v11, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-eqz v11, :cond_5

    .line 190
    .line 191
    const/16 v11, 0x23

    .line 192
    .line 193
    goto/16 :goto_4

    .line 194
    .line 195
    :sswitch_4
    const-string/jumbo v11, "max_cpu_only_job_batch_delay_ms"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    if-eqz v11, :cond_5

    .line 203
    .line 204
    const/16 v11, 0xf

    .line 205
    .line 206
    goto/16 :goto_4

    .line 207
    .line 208
    :sswitch_5
    const-string/jumbo v11, "persist_in_split_files"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-eqz v11, :cond_5

    .line 216
    .line 217
    const/16 v11, 0x28

    .line 218
    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :sswitch_6
    const-string/jumbo v11, "aq_schedule_throw_exception"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-eqz v11, :cond_5

    .line 229
    .line 230
    const/4 v11, 0x5

    .line 231
    goto/16 :goto_4

    .line 232
    .line 233
    :sswitch_7
    const-string/jumbo v11, "system_stop_to_failure_ratio"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    if-eqz v11, :cond_5

    .line 241
    .line 242
    const/16 v11, 0x15

    .line 243
    .line 244
    goto/16 :goto_4

    .line 245
    .line 246
    :sswitch_8
    const-string/jumbo v11, "min_ready_non_active_jobs_count"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    if-eqz v11, :cond_5

    .line 254
    .line 255
    const/16 v11, 0xe

    .line 256
    .line 257
    goto/16 :goto_4

    .line 258
    .line 259
    :sswitch_9
    const-string/jumbo v11, "conn_max_connectivity_job_batch_delay_ms"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-eqz v11, :cond_5

    .line 267
    .line 268
    const/16 v11, 0x19

    .line 269
    .line 270
    goto/16 :goto_4

    .line 271
    .line 272
    :sswitch_a
    const-string/jumbo v11, "runtime_cumulative_ui_limit_ms"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v11

    .line 279
    if-eqz v11, :cond_5

    .line 280
    .line 281
    const/16 v11, 0x25

    .line 282
    .line 283
    goto/16 :goto_4

    .line 284
    .line 285
    :sswitch_b
    const-string/jumbo v11, "min_linear_backoff_time_ms"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    if-eqz v11, :cond_5

    .line 293
    .line 294
    const/16 v11, 0x13

    .line 295
    .line 296
    goto/16 :goto_4

    .line 297
    .line 298
    :sswitch_c
    const-string/jumbo v11, "es_u_timeout_ej_count"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    if-eqz v11, :cond_5

    .line 306
    .line 307
    const/4 v11, 0x7

    .line 308
    goto/16 :goto_4

    .line 309
    .line 310
    :sswitch_d
    const-string/jumbo v11, "es_u_timeout_window_ms"

    .line 311
    .line 312
    .line 313
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    if-eqz v11, :cond_5

    .line 318
    .line 319
    const/16 v11, 0xa

    .line 320
    .line 321
    goto/16 :goto_4

    .line 322
    .line 323
    :sswitch_e
    const-string/jumbo v11, "es_u_timeout_reg_count"

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v11

    .line 330
    if-eqz v11, :cond_5

    .line 331
    .line 332
    const/16 v11, 0x8

    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :sswitch_f
    const-string/jumbo v11, "heavy_use_factor"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v11

    .line 343
    if-eqz v11, :cond_5

    .line 344
    .line 345
    const/16 v11, 0x11

    .line 346
    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :sswitch_10
    const-string/jumbo v11, "min_exp_backoff_time_ms"

    .line 350
    .line 351
    .line 352
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v11

    .line 356
    if-eqz v11, :cond_5

    .line 357
    .line 358
    const/16 v11, 0x14

    .line 359
    .line 360
    goto/16 :goto_4

    .line 361
    .line 362
    :sswitch_11
    const-string/jumbo v11, "es_u_timeout_uij_count"

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v11

    .line 369
    if-eqz v11, :cond_5

    .line 370
    .line 371
    const/4 v11, 0x6

    .line 372
    goto/16 :goto_4

    .line 373
    .line 374
    :sswitch_12
    const-string/jumbo v11, "runtime_use_data_estimates_for_limits"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v11

    .line 381
    if-eqz v11, :cond_5

    .line 382
    .line 383
    const/16 v11, 0x26

    .line 384
    .line 385
    goto/16 :goto_4

    .line 386
    .line 387
    :sswitch_13
    const-string/jumbo v11, "max_non_active_job_batch_delay_ms"

    .line 388
    .line 389
    .line 390
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v11

    .line 394
    if-eqz v11, :cond_5

    .line 395
    .line 396
    const/16 v11, 0x10

    .line 397
    .line 398
    goto/16 :goto_4

    .line 399
    .line 400
    :sswitch_14
    const-string/jumbo v11, "conn_congestion_delay_frac"

    .line 401
    .line 402
    .line 403
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    if-eqz v11, :cond_5

    .line 408
    .line 409
    const/16 v11, 0x16

    .line 410
    .line 411
    goto/16 :goto_4

    .line 412
    .line 413
    :sswitch_15
    const-string/jumbo v11, "aq_schedule_return_failure"

    .line 414
    .line 415
    .line 416
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v11

    .line 420
    if-eqz v11, :cond_5

    .line 421
    .line 422
    const/4 v11, 0x4

    .line 423
    goto/16 :goto_4

    .line 424
    .line 425
    :sswitch_16
    const-string/jumbo v11, "es_u_anr_window_ms"

    .line 426
    .line 427
    .line 428
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v11

    .line 432
    if-eqz v11, :cond_5

    .line 433
    .line 434
    const/16 v11, 0xc

    .line 435
    .line 436
    goto/16 :goto_4

    .line 437
    .line 438
    :sswitch_17
    const-string/jumbo v11, "max_num_persisted_job_work_items"

    .line 439
    .line 440
    .line 441
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v11

    .line 445
    if-eqz v11, :cond_5

    .line 446
    .line 447
    const/16 v11, 0x27

    .line 448
    .line 449
    goto/16 :goto_4

    .line 450
    .line 451
    :sswitch_18
    const-string/jumbo v11, "conn_low_signal_strength_relax_frac"

    .line 452
    .line 453
    .line 454
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v11

    .line 458
    if-eqz v11, :cond_5

    .line 459
    .line 460
    const/16 v11, 0x18

    .line 461
    .line 462
    goto/16 :goto_4

    .line 463
    .line 464
    :sswitch_19
    const-string/jumbo v11, "runtime_min_ui_data_transfer_guarantee_ms"

    .line 465
    .line 466
    .line 467
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v11

    .line 471
    if-eqz v11, :cond_5

    .line 472
    .line 473
    const/16 v11, 0x24

    .line 474
    .line 475
    goto/16 :goto_4

    .line 476
    .line 477
    :sswitch_1a
    const-string/jumbo v11, "es_u_anr_count"

    .line 478
    .line 479
    .line 480
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v11

    .line 484
    if-eqz v11, :cond_5

    .line 485
    .line 486
    const/16 v11, 0xb

    .line 487
    .line 488
    goto/16 :goto_4

    .line 489
    .line 490
    :sswitch_1b
    const-string/jumbo v11, "moderate_use_factor"

    .line 491
    .line 492
    .line 493
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v11

    .line 497
    if-eqz v11, :cond_5

    .line 498
    .line 499
    const/16 v11, 0x12

    .line 500
    .line 501
    goto/16 :goto_4

    .line 502
    .line 503
    :sswitch_1c
    const-string/jumbo v11, "runtime_ui_limit_ms"

    .line 504
    .line 505
    .line 506
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v11

    .line 510
    if-eqz v11, :cond_5

    .line 511
    .line 512
    const/16 v11, 0x22

    .line 513
    .line 514
    goto/16 :goto_4

    .line 515
    .line 516
    :sswitch_1d
    const-string/jumbo v11, "min_ready_cpu_only_jobs_count"

    .line 517
    .line 518
    .line 519
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    if-eqz v11, :cond_5

    .line 524
    .line 525
    const/16 v11, 0xd

    .line 526
    .line 527
    goto/16 :goto_4

    .line 528
    .line 529
    :sswitch_1e
    const-string/jumbo v11, "runtime_min_guarantee_ms"

    .line 530
    .line 531
    .line 532
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v11

    .line 536
    if-eqz v11, :cond_5

    .line 537
    .line 538
    const/16 v11, 0x1f

    .line 539
    .line 540
    goto/16 :goto_4

    .line 541
    .line 542
    :sswitch_1f
    const-string/jumbo v11, "conn_transport_batch_threshold"

    .line 543
    .line 544
    .line 545
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v11

    .line 549
    if-eqz v11, :cond_5

    .line 550
    .line 551
    const/16 v11, 0x1a

    .line 552
    .line 553
    goto/16 :goto_4

    .line 554
    .line 555
    :sswitch_20
    const-string/jumbo v11, "aq_schedule_window_ms"

    .line 556
    .line 557
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v11

    .line 562
    if-eqz v11, :cond_5

    .line 563
    .line 564
    move v11, v12

    .line 565
    goto :goto_4

    .line 566
    :sswitch_21
    const-string/jumbo v11, "enable_execution_safeguards_udc"

    .line 567
    .line 568
    .line 569
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v11

    .line 573
    if-eqz v11, :cond_5

    .line 574
    .line 575
    move v11, v2

    .line 576
    goto :goto_4

    .line 577
    :sswitch_22
    const-string/jumbo v11, "conn_update_all_jobs_min_interval_ms"

    .line 578
    .line 579
    .line 580
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v11

    .line 584
    if-eqz v11, :cond_5

    .line 585
    .line 586
    const/16 v11, 0x1c

    .line 587
    .line 588
    goto :goto_4

    .line 589
    :sswitch_23
    const-string/jumbo v11, "prefetch_force_batch_relax_threshold_ms"

    .line 590
    .line 591
    .line 592
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v11

    .line 596
    if-eqz v11, :cond_5

    .line 597
    .line 598
    const/16 v11, 0x1d

    .line 599
    .line 600
    goto :goto_4

    .line 601
    :sswitch_24
    const-string/jumbo v11, "conn_use_cell_signal_strength"

    .line 602
    .line 603
    .line 604
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v11

    .line 608
    if-eqz v11, :cond_5

    .line 609
    .line 610
    const/16 v11, 0x1b

    .line 611
    .line 612
    goto :goto_4

    .line 613
    :sswitch_25
    const-string/jumbo v11, "runtime_min_ej_guarantee_ms"

    .line 614
    .line 615
    .line 616
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v11

    .line 620
    if-eqz v11, :cond_5

    .line 621
    .line 622
    const/16 v11, 0x20

    .line 623
    .line 624
    goto :goto_4

    .line 625
    :sswitch_26
    const-string/jumbo v11, "enable_api_quotas"

    .line 626
    .line 627
    .line 628
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v11

    .line 632
    if-eqz v11, :cond_5

    .line 633
    .line 634
    move v11, v3

    .line 635
    goto :goto_4

    .line 636
    :sswitch_27
    const-string/jumbo v11, "aq_schedule_count"

    .line 637
    .line 638
    .line 639
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v11

    .line 643
    if-eqz v11, :cond_5

    .line 644
    .line 645
    const/4 v11, 0x2

    .line 646
    goto :goto_4

    .line 647
    :sswitch_28
    const-string/jumbo v11, "es_u_timeout_total_count"

    .line 648
    .line 649
    .line 650
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v11

    .line 654
    if-eqz v11, :cond_5

    .line 655
    .line 656
    const/16 v11, 0x9

    .line 657
    .line 658
    goto :goto_4

    .line 659
    :cond_5
    :goto_3
    const/4 v11, -0x1

    .line 660
    :goto_4
    packed-switch v11, :pswitch_data_0

    .line 661
    .line 662
    .line 663
    const-string/jumbo v11, "concurrency_"

    .line 664
    .line 665
    .line 666
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result v11

    .line 670
    if-eqz v11, :cond_7

    .line 671
    .line 672
    if-nez v7, :cond_7

    .line 673
    .line 674
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 675
    .line 676
    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 677
    .line 678
    invoke-virtual {v7}, Lcom/android/server/job/JobConcurrencyManager;->updateConfigLocked()V

    .line 679
    .line 680
    .line 681
    move v7, v2

    .line 682
    :cond_6
    :goto_5
    move-object/from16 v16, v4

    .line 683
    .line 684
    goto/16 :goto_9

    .line 685
    .line 686
    :cond_7
    move v11, v3

    .line 687
    :goto_6
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 688
    .line 689
    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 690
    .line 691
    check-cast v12, Ljava/util/ArrayList;

    .line 692
    .line 693
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 694
    .line 695
    .line 696
    move-result v12

    .line 697
    if-ge v11, v12, :cond_6

    .line 698
    .line 699
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 700
    .line 701
    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 702
    .line 703
    check-cast v12, Ljava/util/ArrayList;

    .line 704
    .line 705
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v12

    .line 709
    check-cast v12, Lcom/android/server/job/controllers/StateController;

    .line 710
    .line 711
    invoke-virtual {v12, v1, v10}, Lcom/android/server/job/controllers/StateController;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    add-int/2addr v11, v2

    .line 715
    goto :goto_6

    .line 716
    :pswitch_0
    if-nez v8, :cond_6

    .line 717
    .line 718
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 719
    .line 720
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 721
    .line 722
    sget v10, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 723
    .line 724
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    const-string/jumbo v10, "jobscheduler"

    .line 728
    .line 729
    .line 730
    const-string/jumbo v11, "persist_in_split_files"

    .line 731
    .line 732
    .line 733
    invoke-static {v10, v11, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 734
    .line 735
    .line 736
    move-result v11

    .line 737
    iput-boolean v11, v8, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    .line 738
    .line 739
    const-string/jumbo v11, "max_num_persisted_job_work_items"

    .line 740
    .line 741
    .line 742
    const v12, 0x186a0

    .line 743
    .line 744
    .line 745
    invoke-static {v10, v11, v12}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 746
    .line 747
    .line 748
    move-result v10

    .line 749
    iput v10, v8, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    .line 750
    .line 751
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 752
    .line 753
    iget-object v10, v8, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 754
    .line 755
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 756
    .line 757
    iget-boolean v8, v8, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    .line 758
    .line 759
    iget-object v11, v10, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 760
    .line 761
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :try_start_1
    iget-boolean v12, v10, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 763
    .line 764
    if-eq v12, v8, :cond_8

    .line 765
    .line 766
    iput-boolean v8, v10, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 767
    .line 768
    invoke-virtual {v10}, Lcom/android/server/job/JobStore;->migrateJobFilesAsync()V

    .line 769
    .line 770
    .line 771
    goto :goto_7

    .line 772
    :catchall_1
    move-exception v0

    .line 773
    goto :goto_8

    .line 774
    :cond_8
    :goto_7
    monitor-exit v11

    .line 775
    move v8, v2

    .line 776
    goto :goto_5

    .line 777
    :goto_8
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 778
    :try_start_2
    throw v0

    .line 779
    :pswitch_1
    if-nez v9, :cond_6

    .line 780
    .line 781
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 782
    .line 783
    iget-object v9, v9, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 784
    .line 785
    invoke-static {v9}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 786
    .line 787
    .line 788
    move v9, v2

    .line 789
    goto :goto_5

    .line 790
    :pswitch_2
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 791
    .line 792
    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 793
    .line 794
    sget v11, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 795
    .line 796
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    .line 798
    .line 799
    const-string/jumbo v11, "jobscheduler"

    .line 800
    .line 801
    .line 802
    const-string/jumbo v12, "prefetch_force_batch_relax_threshold_ms"

    .line 803
    .line 804
    .line 805
    const-wide/32 v13, 0x36ee80

    .line 806
    .line 807
    .line 808
    invoke-static {v11, v12, v13, v14}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 809
    .line 810
    .line 811
    move-result-wide v11

    .line 812
    iput-wide v11, v10, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 813
    .line 814
    goto/16 :goto_5

    .line 815
    .line 816
    :pswitch_3
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 817
    .line 818
    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 819
    .line 820
    invoke-static {v10}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 821
    .line 822
    .line 823
    goto/16 :goto_5

    .line 824
    .line 825
    :pswitch_4
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 826
    .line 827
    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 828
    .line 829
    sget v11, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 830
    .line 831
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    const-string/jumbo v11, "jobscheduler"

    .line 835
    .line 836
    .line 837
    const-string/jumbo v13, "min_linear_backoff_time_ms"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 838
    .line 839
    .line 840
    const-wide/16 v14, 0x2710

    .line 841
    .line 842
    move-object/from16 v16, v4

    .line 843
    .line 844
    :try_start_3
    invoke-static {v11, v13, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 845
    .line 846
    .line 847
    move-result-wide v3

    .line 848
    iput-wide v3, v10, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 849
    .line 850
    const-string/jumbo v3, "min_exp_backoff_time_ms"

    .line 851
    .line 852
    .line 853
    invoke-static {v11, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 854
    .line 855
    .line 856
    move-result-wide v3

    .line 857
    iput-wide v3, v10, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    .line 858
    .line 859
    const-string/jumbo v3, "system_stop_to_failure_ratio"

    .line 860
    .line 861
    .line 862
    invoke-static {v11, v3, v12}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 863
    .line 864
    .line 865
    move-result v3

    .line 866
    iput v3, v10, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    .line 867
    .line 868
    goto :goto_9

    .line 869
    :pswitch_5
    move-object/from16 v16, v4

    .line 870
    .line 871
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 872
    .line 873
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 874
    .line 875
    sget v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 876
    .line 877
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 878
    .line 879
    .line 880
    const-string/jumbo v4, "jobscheduler"

    .line 881
    .line 882
    .line 883
    const-string/jumbo v10, "heavy_use_factor"

    .line 884
    .line 885
    .line 886
    const v11, 0x3f666666    # 0.9f

    .line 887
    .line 888
    .line 889
    invoke-static {v4, v10, v11}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 890
    .line 891
    .line 892
    move-result v10

    .line 893
    iput v10, v3, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 894
    .line 895
    const-string/jumbo v10, "moderate_use_factor"

    .line 896
    .line 897
    .line 898
    const/high16 v11, 0x3f000000    # 0.5f

    .line 899
    .line 900
    invoke-static {v4, v10, v11}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 901
    .line 902
    .line 903
    move-result v4

    .line 904
    iput v4, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 905
    .line 906
    goto :goto_9

    .line 907
    :catchall_2
    move-exception v0

    .line 908
    goto :goto_b

    .line 909
    :pswitch_6
    move-object/from16 v16, v4

    .line 910
    .line 911
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 912
    .line 913
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 914
    .line 915
    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 916
    .line 917
    .line 918
    goto :goto_9

    .line 919
    :pswitch_7
    move-object/from16 v16, v4

    .line 920
    .line 921
    if-nez v6, :cond_9

    .line 922
    .line 923
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 924
    .line 925
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 926
    .line 927
    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 928
    .line 929
    .line 930
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 931
    .line 932
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    .line 933
    .line 934
    .line 935
    move v6, v2

    .line 936
    :cond_9
    :goto_9
    move-object/from16 v4, v16

    .line 937
    .line 938
    const/4 v3, 0x0

    .line 939
    goto/16 :goto_2

    .line 940
    .line 941
    :cond_a
    move-object/from16 v16, v4

    .line 942
    .line 943
    const/4 v3, 0x0

    .line 944
    :goto_a
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 945
    .line 946
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 947
    .line 948
    check-cast v1, Ljava/util/ArrayList;

    .line 949
    .line 950
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 951
    .line 952
    .line 953
    move-result v1

    .line 954
    if-ge v3, v1, :cond_b

    .line 955
    .line 956
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 957
    .line 958
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 959
    .line 960
    check-cast v1, Ljava/util/ArrayList;

    .line 961
    .line 962
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 967
    .line 968
    invoke-virtual {v1}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    .line 969
    .line 970
    .line 971
    add-int/2addr v3, v2

    .line 972
    goto :goto_a

    .line 973
    :cond_b
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 974
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 975
    .line 976
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 977
    .line 978
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 979
    .line 980
    .line 981
    return-void

    .line 982
    :goto_b
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 983
    throw v0

    .line 984
    nop

    .line 985
    :sswitch_data_0
    .sparse-switch
        -0x6e1c1925 -> :sswitch_28
        -0x6a91caaa -> :sswitch_27
        -0x61ffed04 -> :sswitch_26
        -0x57ab4ebd -> :sswitch_25
        -0x4e49277a -> :sswitch_24
        -0x4bd6b576 -> :sswitch_23
        -0x48789375 -> :sswitch_22
        -0x472b630d -> :sswitch_21
        -0x3f51c6e4 -> :sswitch_20
        -0x38d906c3 -> :sswitch_1f
        -0x3816e2ef -> :sswitch_1e
        -0x34c37a87 -> :sswitch_1d
        -0x2fdd43f2 -> :sswitch_1c
        -0x2b109c3d -> :sswitch_1b
        -0x28f70f26 -> :sswitch_1a
        -0x2074138d -> :sswitch_19
        -0x1d5723de -> :sswitch_18
        -0x1673d94c -> :sswitch_17
        -0x8486d60 -> :sswitch_16
        -0x6861eec -> :sswitch_15
        -0x36a3a91 -> :sswitch_14
        -0x2ba94ab -> :sswitch_13
        0xcb38358 -> :sswitch_12
        0xddf302d -> :sswitch_11
        0xfb016b2 -> :sswitch_10
        0x11402d7f -> :sswitch_f
        0x12da7deb -> :sswitch_e
        0x1335a09c -> :sswitch_d
        0x185b7bce -> :sswitch_c
        0x2a4571b4 -> :sswitch_b
        0x306220f0 -> :sswitch_a
        0x39707b23 -> :sswitch_9
        0x3be1abc4 -> :sswitch_8
        0x46a7f6df -> :sswitch_7
        0x46ad01bd -> :sswitch_6
        0x4da62ac3 -> :sswitch_5
        0x4e8bc38a -> :sswitch_4
        0x5343e941 -> :sswitch_3
        0x57aac0d8 -> :sswitch_2
        0x642d8bb4 -> :sswitch_1
        0x64e397f2 -> :sswitch_0
    .end sparse-switch

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
