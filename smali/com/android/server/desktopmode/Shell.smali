.class public final Lcom/android/server/desktopmode/Shell;
.super Landroid/os/ShellCommand;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field public mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field public mResolver:Landroid/content/ContentResolver;

.field public mUiManager:Lcom/android/server/desktopmode/UiManager;


# virtual methods
.method public final desktopModeSettingsPrintUsage()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "USAGE: settings get KEY"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "       settings put KEY VALUE"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "       settings delete KEY"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "       settings clear"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "       settings list"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final multiResolutionManagerPrintUsage()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "USAGE: resolution"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "       resolution set WIDTH HEIGHT DENSITY"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "       resolution supportAll [on|off]"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 14

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    const-string/jumbo v2, "off"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v3, "on"

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, -0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x1

    .line 15
    const/4 v10, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v10}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v11

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    sparse-switch v13, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    :goto_0
    move v13, v7

    .line 35
    goto :goto_1

    .line 36
    :sswitch_0
    const-string/jumbo v13, "settings"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v13

    .line 43
    if-nez v13, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v13, v0

    .line 47
    goto :goto_1

    .line 48
    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    if-nez v13, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v13, v1

    .line 56
    goto :goto_1

    .line 57
    :sswitch_2
    const-string/jumbo v13, "ui"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    if-nez v13, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move v13, v4

    .line 68
    goto :goto_1

    .line 69
    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    if-nez v13, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move v13, v5

    .line 77
    goto :goto_1

    .line 78
    :sswitch_4
    const-string/jumbo v13, "toggle"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    if-nez v13, :cond_5

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    move v13, v6

    .line 89
    goto :goto_1

    .line 90
    :sswitch_5
    const-string/jumbo v13, "newdex"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-nez v13, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    move v13, v9

    .line 101
    goto :goto_1

    .line 102
    :sswitch_6
    const-string/jumbo v13, "resolution"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    if-nez v13, :cond_7

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    move v13, v8

    .line 113
    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    goto/16 :goto_c

    .line 121
    .line 122
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-nez p1, :cond_8

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-eqz v3, :cond_9

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_9
    const-string/jumbo v3, "deleteSettings"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    sparse-switch v13, :sswitch_data_1

    .line 164
    .line 165
    .line 166
    :goto_2
    move v4, v7

    .line 167
    goto :goto_3

    .line 168
    :sswitch_7
    const-string/jumbo v5, "clear"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_e

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :sswitch_8
    const-string/jumbo v4, "list"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_a

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_a
    move v4, v5

    .line 189
    goto :goto_3

    .line 190
    :sswitch_9
    const-string/jumbo v4, "put"

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_b

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_b
    move v4, v6

    .line 201
    goto :goto_3

    .line 202
    :sswitch_a
    const-string/jumbo v4, "get"

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-nez p1, :cond_c

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_c
    move v4, v9

    .line 213
    goto :goto_3

    .line 214
    :sswitch_b
    const-string/jumbo v4, "delete"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_d

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_d
    move v4, v8

    .line 225
    :cond_e
    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_4

    .line 232
    .line 233
    :pswitch_1
    if-eqz v1, :cond_f

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_5

    .line 239
    .line 240
    :cond_f
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 241
    .line 242
    sget p1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 243
    .line 244
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p0, p1, v3, v10, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :pswitch_2
    if-eqz v1, :cond_10

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_10
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 259
    .line 260
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 261
    .line 262
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(ILandroid/content/ContentResolver;)Landroid/os/Bundle;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Landroid/os/Bundle;Ljava/io/PrintWriter;)V

    .line 267
    .line 268
    .line 269
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_13

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 276
    .line 277
    .line 278
    const-string p1, "System user (0) settings:"

    .line 279
    .line 280
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 284
    .line 285
    invoke-static {v8, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(ILandroid/content/ContentResolver;)Landroid/os/Bundle;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Landroid/os/Bundle;Ljava/io/PrintWriter;)V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 294
    .line 295
    invoke-static {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :pswitch_4
    if-eqz v2, :cond_11

    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_11
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 306
    .line 307
    sget p1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 308
    .line 309
    const-string/jumbo v2, "null"

    .line 310
    .line 311
    .line 312
    invoke-static {p0, v1, v2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :pswitch_5
    if-eqz v2, :cond_12

    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    .line 323
    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_12
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 327
    .line 328
    sget p1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 329
    .line 330
    new-instance v0, Landroid/os/Bundle;

    .line 331
    .line 332
    invoke-direct {v0, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 333
    .line 334
    .line 335
    const-string/jumbo v2, "key"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-virtual {p0, p1, v3, v10, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 346
    .line 347
    .line 348
    :cond_13
    :goto_4
    move v7, v8

    .line 349
    :goto_5
    move p0, v7

    .line 350
    goto/16 :goto_c

    .line 351
    .line 352
    :pswitch_6
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    if-nez p1, :cond_14

    .line 357
    .line 358
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    .line 359
    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v13

    .line 374
    if-eqz v13, :cond_15

    .line 375
    .line 376
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    .line 377
    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 381
    .line 382
    .line 383
    move-result v13

    .line 384
    sparse-switch v13, :sswitch_data_2

    .line 385
    .line 386
    .line 387
    goto :goto_6

    .line 388
    :sswitch_c
    const-string/jumbo v0, "showDialog"

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    if-eqz p1, :cond_16

    .line 396
    .line 397
    move v0, v8

    .line 398
    goto :goto_7

    .line 399
    :sswitch_d
    const-string/jumbo v0, "dismissDialog"

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    if-eqz p1, :cond_16

    .line 407
    .line 408
    move v0, v9

    .line 409
    goto :goto_7

    .line 410
    :sswitch_e
    const-string/jumbo v0, "showOverlay"

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-eqz p1, :cond_16

    .line 418
    .line 419
    move v0, v5

    .line 420
    goto :goto_7

    .line 421
    :sswitch_f
    const-string/jumbo v0, "showNotification"

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    if-eqz p1, :cond_16

    .line 429
    .line 430
    move v0, v6

    .line 431
    goto :goto_7

    .line 432
    :sswitch_10
    const-string/jumbo v0, "finishActivity"

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    if-eqz p1, :cond_16

    .line 440
    .line 441
    const/4 v0, 0x7

    .line 442
    goto :goto_7

    .line 443
    :sswitch_11
    const-string/jumbo v1, "removeNotification"

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    if-eqz p1, :cond_16

    .line 451
    .line 452
    goto :goto_7

    .line 453
    :sswitch_12
    const-string/jumbo v0, "startActivity"

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-eqz p1, :cond_16

    .line 461
    .line 462
    move v0, v4

    .line 463
    goto :goto_7

    .line 464
    :sswitch_13
    const-string/jumbo v0, "dismissOverlay"

    .line 465
    .line 466
    .line 467
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result p1

    .line 471
    if-eqz p1, :cond_16

    .line 472
    .line 473
    move v0, v1

    .line 474
    goto :goto_7

    .line 475
    :cond_16
    :goto_6
    move v0, v7

    .line 476
    :goto_7
    packed-switch v0, :pswitch_data_2

    .line 477
    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_4

    .line 483
    .line 484
    :pswitch_7
    if-eqz v3, :cond_17

    .line 485
    .line 486
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_5

    .line 490
    .line 491
    :cond_17
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 492
    .line 493
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_4

    .line 501
    .line 502
    :pswitch_8
    if-eqz v3, :cond_18

    .line 503
    .line 504
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_5

    .line 508
    .line 509
    :cond_18
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 510
    .line 511
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_4

    .line 519
    .line 520
    :pswitch_9
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 521
    .line 522
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    invoke-virtual {p1, v0, v1}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_4

    .line 534
    .line 535
    :pswitch_a
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 536
    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    invoke-virtual {p1, v0, v1, v10}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_4

    .line 549
    .line 550
    :pswitch_b
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 551
    .line 552
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    invoke-virtual {p1, v0, v1, v10}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_4

    .line 564
    .line 565
    :pswitch_c
    if-eqz v3, :cond_19

    .line 566
    .line 567
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    .line 568
    .line 569
    .line 570
    goto/16 :goto_5

    .line 571
    .line 572
    :cond_19
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 573
    .line 574
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_4

    .line 582
    .line 583
    :pswitch_d
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 584
    .line 585
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    invoke-virtual {p1, v0, v1}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_4

    .line 597
    .line 598
    :pswitch_e
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 599
    .line 600
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    invoke-virtual {p1, v0, v1, v10}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .line 610
    .line 611
    goto/16 :goto_4

    .line 612
    .line 613
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    .line 614
    .line 615
    .line 616
    goto/16 :goto_5

    .line 617
    .line 618
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    .line 619
    .line 620
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 621
    .line 622
    .line 623
    move-result-object p0

    .line 624
    invoke-virtual {v0, p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->command(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    move-result p0

    .line 628
    goto/16 :goto_c

    .line 629
    .line 630
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    if-nez p1, :cond_1a

    .line 635
    .line 636
    goto/16 :goto_5

    .line 637
    .line 638
    :cond_1a
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 639
    .line 640
    const-string/jumbo v0, "enable_new_dex_home"

    .line 641
    .line 642
    .line 643
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_4

    .line 647
    .line 648
    :pswitch_11
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 649
    .line 650
    .line 651
    move-result-object p1

    .line 652
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    if-nez v0, :cond_1b

    .line 657
    .line 658
    iget-object v0, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 659
    .line 660
    iget-object v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 661
    .line 662
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_4

    .line 669
    .line 670
    :cond_1b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    if-nez v0, :cond_1c

    .line 675
    .line 676
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_5

    .line 680
    .line 681
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    const v4, -0x2497c4ae

    .line 686
    .line 687
    .line 688
    if-eq v1, v4, :cond_1e

    .line 689
    .line 690
    const v4, 0x1bc62

    .line 691
    .line 692
    .line 693
    if-eq v1, v4, :cond_1d

    .line 694
    .line 695
    goto :goto_8

    .line 696
    :cond_1d
    const-string/jumbo v1, "set"

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-eqz v0, :cond_1f

    .line 704
    .line 705
    move v0, v8

    .line 706
    goto :goto_9

    .line 707
    :cond_1e
    const-string/jumbo v1, "supportAll"

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    if-eqz v0, :cond_1f

    .line 715
    .line 716
    move v0, v9

    .line 717
    goto :goto_9

    .line 718
    :cond_1f
    :goto_8
    move v0, v7

    .line 719
    :goto_9
    if-eqz v0, :cond_26

    .line 720
    .line 721
    if-eq v0, v9, :cond_20

    .line 722
    .line 723
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_5

    .line 727
    .line 728
    :cond_20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    const/16 v1, 0xddf

    .line 737
    .line 738
    if-eq v0, v1, :cond_22

    .line 739
    .line 740
    const v1, 0x1ad6f

    .line 741
    .line 742
    .line 743
    if-eq v0, v1, :cond_21

    .line 744
    .line 745
    goto :goto_a

    .line 746
    :cond_21
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result p1

    .line 750
    if-eqz p1, :cond_23

    .line 751
    .line 752
    move p1, v9

    .line 753
    goto :goto_b

    .line 754
    :cond_22
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result p1

    .line 758
    if-eqz p1, :cond_23

    .line 759
    .line 760
    move p1, v8

    .line 761
    goto :goto_b

    .line 762
    :cond_23
    :goto_a
    move p1, v7

    .line 763
    :goto_b
    if-eqz p1, :cond_25

    .line 764
    .line 765
    if-eq p1, v9, :cond_24

    .line 766
    .line 767
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    .line 768
    .line 769
    .line 770
    goto/16 :goto_5

    .line 771
    .line 772
    :cond_24
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 773
    .line 774
    iput-boolean v8, p1, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    .line 775
    .line 776
    goto/16 :goto_4

    .line 777
    .line 778
    :cond_25
    iget-object p1, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 779
    .line 780
    iput-boolean v9, p1, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    .line 781
    .line 782
    goto/16 :goto_4

    .line 783
    .line 784
    :cond_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 797
    .line 798
    .line 799
    move-result v1

    .line 800
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 805
    .line 806
    .line 807
    move-result v2

    .line 808
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    if-eqz v3, :cond_27

    .line 813
    .line 814
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    .line 815
    .line 816
    .line 817
    goto/16 :goto_5

    .line 818
    .line 819
    :cond_27
    iget-object v3, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 820
    .line 821
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 822
    .line 823
    .line 824
    :try_start_2
    new-instance v4, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 825
    .line 826
    new-instance v5, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 827
    .line 828
    const-string v6, "ADB"

    .line 829
    .line 830
    invoke-direct {v5, v0, v1, v6}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-direct {v4, v5, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    .line 834
    .line 835
    .line 836
    iput-object v4, v3, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 837
    .line 838
    const-string v0, "Successfully set custom resolution"

    .line 839
    .line 840
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 841
    .line 842
    .line 843
    goto/16 :goto_4

    .line 844
    .line 845
    :catch_1
    :try_start_3
    iput-object v10, v3, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 846
    .line 847
    const-string v0, "Failed to set custom resolution. Width, height, and density must be greater than 0. Custom resolution is removed."

    .line 848
    .line 849
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 850
    .line 851
    .line 852
    goto/16 :goto_4

    .line 853
    .line 854
    :catch_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    .line 855
    .line 856
    .line 857
    goto/16 :goto_5

    .line 858
    .line 859
    :goto_c
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    .line 861
    .line 862
    return p0

    .line 863
    :sswitch_data_0
    .sparse-switch
        -0x5f5e8754 -> :sswitch_6
        -0x3e840989 -> :sswitch_5
        -0x33c144ac -> :sswitch_4
        0xddf -> :sswitch_3
        0xe94 -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_6
        :pswitch_f
        :pswitch_0
    .end packed-switch

    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    :sswitch_data_1
    .sparse-switch
        -0x4f997a55 -> :sswitch_b
        0x18f56 -> :sswitch_a
        0x1b30f -> :sswitch_9
        0x32b09e -> :sswitch_8
        0x5a5b64d -> :sswitch_7
    .end sparse-switch

    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    :sswitch_data_2
    .sparse-switch
        -0x7e40e59a -> :sswitch_13
        -0x5b20666f -> :sswitch_12
        -0x3f93d071 -> :sswitch_11
        -0x33d05f3e -> :sswitch_10
        -0x2efddb78 -> :sswitch_f
        -0x29e8e56d -> :sswitch_e
        -0xf4ef38e -> :sswitch_d
        0x1471d2a5 -> :sswitch_c
    .end sparse-switch

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
    const-string v0, "DesktopModeService commands:"

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
    const-string v0, ""

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "  on"

    .line 26
    .line 27
    const-string v2, "    Enable desktop mode."

    .line 28
    .line 29
    const-string v3, "  off"

    .line 30
    .line 31
    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "    Disable desktop mode."

    .line 35
    .line 36
    const-string v2, "  toggle"

    .line 37
    .line 38
    const-string v3, "    Toggle desktop mode."

    .line 39
    .line 40
    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "  settings"

    .line 44
    .line 45
    const-string v2, "    Manage desktop mode settings."

    .line 46
    .line 47
    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "  resolution"

    .line 51
    .line 52
    const-string v2, "    Manage desktop mode resolution."

    .line 53
    .line 54
    const-string v3, "  ui"

    .line 55
    .line 56
    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "    Manage desktop mode UI elements."

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final uiManagerPrintUsage()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "USAGE: ui showDialog DISPLAYID TYPE"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "       ui showNotification TYPE"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "       ui showOverlay WHERE TYPE"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "       ui startActivity DISPLAYID TYPE"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "       ui dismissDialog TYPE"

    .line 26
    .line 27
    const-string v1, "       ui dismissOverlay WHERE TYPE"

    .line 28
    .line 29
    const-string v2, "       ui removeNotification TYPE"

    .line 30
    .line 31
    const-string v3, "       ui finishActivity TYPE"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
