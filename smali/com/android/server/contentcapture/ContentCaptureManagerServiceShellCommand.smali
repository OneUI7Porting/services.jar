.class public final Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 5
    .line 6
    return-void
.end method

.method public static requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 2
    .line 3
    .line 4
    const/4 p2, -0x1

    .line 5
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    const-wide/16 v1, 0x5

    .line 8
    .line 9
    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "Timed out after 5 seconds"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string p1, "System call interrupted"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return p2
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, -0x1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-string v5, "Invalid set: "

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    sparse-switch v6, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    :goto_0
    move v6, v3

    .line 26
    goto :goto_1

    .line 27
    :sswitch_0
    const-string/jumbo v6, "destroy"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v6, 0x3

    .line 38
    goto :goto_1

    .line 39
    :sswitch_1
    const-string/jumbo v6, "list"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v6, v0

    .line 50
    goto :goto_1

    .line 51
    :sswitch_2
    const-string/jumbo v6, "set"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v6, v1

    .line 62
    goto :goto_1

    .line 63
    :sswitch_3
    const-string/jumbo v6, "get"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    move v6, v2

    .line 74
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string/jumbo v0, "sessions"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_5

    .line 94
    .line 95
    const-string p0, "Error: invalid list type"

    .line 96
    .line 97
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const-string p1, "--user"

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    :cond_6
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 122
    .line 123
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;

    .line 127
    .line 128
    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    invoke-direct {v1, p0, v3, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v4, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    :goto_2
    return v3

    .line 141
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string/jumbo v0, "sessions"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_7

    .line 153
    .line 154
    const-string p0, "Error: invalid list type"

    .line 155
    .line 156
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_7
    const-string p1, "--user"

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_8

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    :cond_8
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 181
    .line 182
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;

    .line 186
    .line 187
    invoke-direct {v0, v4, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;-><init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;

    .line 191
    .line 192
    invoke-direct {v1, p0, v3, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v4, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    :goto_3
    return v3

    .line 200
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    sparse-switch v6, :sswitch_data_1

    .line 212
    .line 213
    .line 214
    :goto_4
    move v0, v3

    .line 215
    goto :goto_5

    .line 216
    :sswitch_4
    const-string/jumbo v6, "temporary-service"

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-nez v6, :cond_b

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :sswitch_5
    const-string/jumbo v0, "bind-instant-service-allowed"

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_9

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_9
    move v0, v1

    .line 237
    goto :goto_5

    .line 238
    :sswitch_6
    const-string/jumbo v0, "default-service-enabled"

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-nez v0, :cond_a

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_a
    move v0, v2

    .line 249
    :cond_b
    :goto_5
    packed-switch v0, :pswitch_data_1

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :goto_6
    move v2, v3

    .line 260
    goto/16 :goto_7

    .line 261
    .line 262
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-nez v0, :cond_c

    .line 275
    .line 276
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 277
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_7

    .line 282
    .line 283
    :cond_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 292
    .line 293
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 294
    .line 295
    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string p1, "ContentCaptureService temporarily set to "

    .line 299
    .line 300
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string p1, " for "

    .line 304
    .line 305
    const-string/jumbo v3, "ms"

    .line 306
    .line 307
    .line 308
    invoke-static {v1, v0, p1, v3, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    goto :goto_7

    .line 316
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    const-string/jumbo v5, "true"

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-nez v5, :cond_e

    .line 335
    .line 336
    const-string/jumbo v1, "false"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-nez v0, :cond_d

    .line 344
    .line 345
    const-string p0, "Invalid mode: "

    .line 346
    .line 347
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_d
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 356
    .line 357
    invoke-virtual {p0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    .line 358
    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_e
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 362
    .line 363
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 384
    .line 385
    invoke-virtual {p0, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 386
    .line 387
    .line 388
    move-result p0

    .line 389
    if-nez p0, :cond_f

    .line 390
    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string p1, "already "

    .line 394
    .line 395
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :cond_f
    :goto_7
    return v2

    .line 409
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    const-string/jumbo v0, "default-service-enabled"

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-nez v0, :cond_12

    .line 424
    .line 425
    const-string/jumbo v0, "bind-instant-service-allowed"

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-nez v0, :cond_10

    .line 433
    .line 434
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    move v2, v3

    .line 442
    goto :goto_8

    .line 443
    :cond_10
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 444
    .line 445
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 446
    .line 447
    .line 448
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 449
    .line 450
    monitor-enter p1

    .line 451
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 452
    .line 453
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    if-eqz p0, :cond_11

    .line 455
    .line 456
    const-string/jumbo p0, "true"

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    goto :goto_8

    .line 463
    :cond_11
    const-string/jumbo p0, "false"

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :catchall_0
    move-exception p0

    .line 471
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    throw p0

    .line 473
    :cond_12
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 482
    .line 483
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDefaultServiceEnabled(I)Z

    .line 484
    .line 485
    .line 486
    move-result p0

    .line 487
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 488
    .line 489
    .line 490
    :goto_8
    return v2

    .line 491
    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x5cd39ffa -> :sswitch_0
    .end sparse-switch

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :sswitch_data_1
    .sparse-switch
        0x1f91e49d -> :sswitch_6
        0x30420514 -> :sswitch_5
        0x77724739 -> :sswitch_4
    .end sparse-switch

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v1, "ContentCapture Service (content_capture) commands:"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "  help"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "    Prints this help text."

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "  get bind-instant-service-allowed"

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "    Gets whether binding to services provided by instant apps is allowed"

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "  set bind-instant-service-allowed [true | false]"

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "    Sets whether binding to services provided by instant apps is allowed"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "    Temporarily (for DURATION ms) changes the service implemtation."

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "    To reset, call with just the USER_ID argument."

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "  set default-service-enabled USER_ID [true|false]"

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "    Enable / disable the default service for the user."

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "  get default-service-enabled USER_ID"

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "    Checks whether the default service is enabled for the user."

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v1, "  list sessions [--user USER_ID]"

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v1, "    Lists all pending sessions."

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v1, "  destroy sessions [--user USER_ID]"

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v1, "    Destroys all pending sessions."

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    if-eqz p0, :cond_0

    .line 127
    .line 128
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :cond_0
    :goto_0
    throw v0
.end method
