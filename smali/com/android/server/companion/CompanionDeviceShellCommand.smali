.class public final Lcom/android/server/companion/CompanionDeviceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final mService:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/transport/CompanionTransportManager;Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/BackupRestoreProcessor;Lcom/android/server/companion/association/DisassociationProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getNextBooleanArgRequired()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "true"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string/jumbo v0, "false"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v1, "Expected a boolean argument but was: "

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final getNextIntArgRequired()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, " | "

    .line 6
    .line 7
    const-string v3, "Max ID: "

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x1

    .line 14
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/4 v7, 0x0

    .line 19
    sparse-switch v6, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    const-string/jumbo v6, "simulate-device-appeared"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    const/4 v6, 0x5

    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto/16 :goto_13

    .line 38
    .line 39
    :sswitch_1
    const-string/jumbo v6, "send-context-sync-call-control-message"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    const/16 v6, 0x13

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :sswitch_2
    const-string/jumbo v6, "simulate-device-event-device-locked"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    const/16 v6, 0x9

    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :sswitch_3
    const-string/jumbo v6, "simulate-device-uuid-event"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    const/16 v6, 0x8

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :sswitch_4
    const-string/jumbo v6, "associate"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_0

    .line 86
    .line 87
    move v6, v5

    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :sswitch_5
    const-string/jumbo v6, "disable-perm-sync"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_0

    .line 98
    .line 99
    const/16 v6, 0x1b

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :sswitch_6
    const-string/jumbo v6, "refresh-cache"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_0

    .line 111
    .line 112
    const/4 v6, 0x4

    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :sswitch_7
    const-string/jumbo v6, "disable-context-sync"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_0

    .line 123
    .line 124
    const/16 v6, 0x16

    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :sswitch_8
    const-string/jumbo v6, "stop-observing-device-presence-uuid"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_0

    .line 136
    .line 137
    const/16 v6, 0xc

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :sswitch_9
    const-string/jumbo v6, "disassociate"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_0

    .line 149
    .line 150
    const/4 v6, 0x2

    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :sswitch_a
    const-string/jumbo v6, "send-context-sync-empty-message"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_0

    .line 161
    .line 162
    const/16 v6, 0x11

    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :sswitch_b
    const-string/jumbo v6, "apply-restored-payload"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_0

    .line 174
    .line 175
    const/16 v6, 0xe

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :sswitch_c
    const-string/jumbo v6, "remove-perm-sync-state"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_0

    .line 187
    .line 188
    const/16 v6, 0x19

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :sswitch_d
    const-string/jumbo v6, "list"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_0

    .line 200
    .line 201
    move v6, v7

    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :sswitch_e
    const-string/jumbo v6, "simulate-device-disappeared"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_0

    .line 212
    .line 213
    const/4 v6, 0x6

    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :sswitch_f
    const-string/jumbo v6, "send-context-sync-call-create-message"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_0

    .line 224
    .line 225
    const/16 v6, 0x12

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :sswitch_10
    const-string/jumbo v6, "simulate-device-event-device-unlocked"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-eqz v6, :cond_0

    .line 237
    .line 238
    const/16 v6, 0xa

    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :sswitch_11
    const-string/jumbo v6, "start-observing-device-presence-uuid"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-eqz v6, :cond_0

    .line 250
    .line 251
    const/16 v6, 0xb

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :sswitch_12
    const-string/jumbo v6, "disassociate-all"

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-eqz v6, :cond_0

    .line 263
    .line 264
    const/4 v6, 0x3

    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :sswitch_13
    const-string/jumbo v6, "simulate-device-event"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-eqz v6, :cond_0

    .line 275
    .line 276
    const/4 v6, 0x7

    .line 277
    goto :goto_1

    .line 278
    :sswitch_14
    const-string/jumbo v6, "get-perm-sync-state"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-eqz v6, :cond_0

    .line 286
    .line 287
    const/16 v6, 0x18

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :sswitch_15
    const-string/jumbo v6, "create-emulated-transport"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    if-eqz v6, :cond_0

    .line 298
    .line 299
    const/16 v6, 0x10

    .line 300
    .line 301
    goto :goto_1

    .line 302
    :sswitch_16
    const-string/jumbo v6, "enable-context-sync"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-eqz v6, :cond_0

    .line 310
    .line 311
    const/16 v6, 0x17

    .line 312
    .line 313
    goto :goto_1

    .line 314
    :sswitch_17
    const-string/jumbo v6, "remove-inactive-associations"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    if-eqz v6, :cond_0

    .line 322
    .line 323
    const/16 v6, 0xf

    .line 324
    .line 325
    goto :goto_1

    .line 326
    :sswitch_18
    const-string/jumbo v6, "enable-perm-sync"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    if-eqz v6, :cond_0

    .line 334
    .line 335
    const/16 v6, 0x1a

    .line 336
    .line 337
    goto :goto_1

    .line 338
    :sswitch_19
    const-string/jumbo v6, "get-backup-payload"

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_0

    .line 346
    .line 347
    const/16 v6, 0xd

    .line 348
    .line 349
    goto :goto_1

    .line 350
    :sswitch_1a
    const-string/jumbo v6, "send-context-sync-call-facilitators-message"

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eqz v6, :cond_0

    .line 358
    .line 359
    const/16 v6, 0x14

    .line 360
    .line 361
    goto :goto_1

    .line 362
    :sswitch_1b
    const-string/jumbo v6, "send-context-sync-call-message"

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    if-eqz v6, :cond_0

    .line 370
    .line 371
    const/16 v6, 0x15

    .line 372
    .line 373
    goto :goto_1

    .line 374
    :cond_0
    :goto_0
    const/4 v6, -0x1

    .line 375
    :goto_1
    const-string v15, "UUID can not be null."

    .line 376
    .line 377
    const-string/jumbo v12, "null"

    .line 378
    .line 379
    .line 380
    const-string v8, " -> "

    .line 381
    .line 382
    const-wide v10, 0x10500000001L

    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    const-wide v13, 0x10900000001L

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    packed-switch v6, :pswitch_data_0

    .line 393
    .line 394
    .line 395
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    return v0

    .line 400
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 405
    .line 406
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    if-nez v3, :cond_1

    .line 411
    .line 412
    goto :goto_2

    .line 413
    :cond_1
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 418
    .line 419
    .line 420
    move-result-object v12

    .line 421
    :goto_2
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 425
    .line 426
    iget-object v6, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 427
    .line 428
    invoke-virtual {v6, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    new-instance v9, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 437
    .line 438
    invoke-direct {v9, v0}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v9, v7}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 442
    .line 443
    .line 444
    iget-object v3, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 445
    .line 446
    invoke-virtual {v3, v6, v9}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 447
    .line 448
    .line 449
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 450
    .line 451
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    :goto_3
    move v0, v7

    .line 475
    goto/16 :goto_12

    .line 476
    .line 477
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 482
    .line 483
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    if-nez v3, :cond_2

    .line 488
    .line 489
    goto :goto_4

    .line 490
    :cond_2
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 495
    .line 496
    .line 497
    move-result-object v12

    .line 498
    :goto_4
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 502
    .line 503
    iget-object v6, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 504
    .line 505
    invoke-virtual {v6, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    new-instance v9, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 514
    .line 515
    invoke-direct {v9, v0}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v9, v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 519
    .line 520
    .line 521
    iget-object v3, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 522
    .line 523
    invoke-virtual {v3, v6, v9}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 524
    .line 525
    .line 526
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 527
    .line 528
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    goto :goto_3

    .line 552
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 557
    .line 558
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    if-nez v3, :cond_3

    .line 563
    .line 564
    move-object v3, v12

    .line 565
    goto :goto_5

    .line 566
    :cond_3
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    :goto_5
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 578
    .line 579
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    new-instance v6, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;

    .line 583
    .line 584
    invoke-direct {v6, v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;I)V

    .line 585
    .line 586
    .line 587
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 588
    .line 589
    .line 590
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 591
    .line 592
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    if-nez v0, :cond_4

    .line 602
    .line 603
    goto :goto_6

    .line 604
    :cond_4
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 609
    .line 610
    .line 611
    move-result-object v12

    .line 612
    :goto_6
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_3

    .line 623
    .line 624
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 629
    .line 630
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    if-nez v0, :cond_5

    .line 635
    .line 636
    goto :goto_7

    .line 637
    :cond_5
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 642
    .line 643
    .line 644
    move-result-object v12

    .line 645
    :goto_7
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    goto/16 :goto_3

    .line 649
    .line 650
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 659
    .line 660
    iget-object v4, v4, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 661
    .line 662
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    .line 667
    .line 668
    invoke-direct {v6, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    or-int/2addr v0, v3

    .line 676
    invoke-virtual {v6, v0}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 685
    .line 686
    .line 687
    goto/16 :goto_3

    .line 688
    .line 689
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 698
    .line 699
    iget-object v4, v4, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 700
    .line 701
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    .line 706
    .line 707
    invoke-direct {v6, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    not-int v3, v3

    .line 715
    and-int/2addr v0, v3

    .line 716
    invoke-virtual {v6, v0}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 725
    .line 726
    .line 727
    goto/16 :goto_3

    .line 728
    .line 729
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v4

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 742
    .line 743
    .line 744
    move-result v6

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 746
    .line 747
    .line 748
    move-result v8

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 750
    .line 751
    .line 752
    move-result v12

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 754
    .line 755
    .line 756
    move-result v15

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 758
    .line 759
    .line 760
    move-result v18

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 762
    .line 763
    .line 764
    move-result v19

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 766
    .line 767
    .line 768
    move-result v20

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 770
    .line 771
    .line 772
    move-result v21

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 774
    .line 775
    .line 776
    move-result v22

    .line 777
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    .line 778
    .line 779
    invoke-direct {v7}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v7, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 783
    .line 784
    .line 785
    const-wide v10, 0x10b00000004L

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 791
    .line 792
    .line 793
    move-result-wide v10

    .line 794
    move-wide/from16 v16, v10

    .line 795
    .line 796
    const-wide v9, 0x20b00000001L

    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 802
    .line 803
    .line 804
    move-result-wide v9

    .line 805
    invoke-virtual {v7, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 806
    .line 807
    .line 808
    move v3, v6

    .line 809
    const-wide v5, 0x10b00000002L

    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 815
    .line 816
    .line 817
    move-result-wide v5

    .line 818
    const-string v11, "Caller Name"

    .line 819
    .line 820
    invoke-virtual {v7, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 821
    .line 822
    .line 823
    iget-object v11, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 824
    .line 825
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 826
    .line 827
    .line 828
    move-result-object v11

    .line 829
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 830
    .line 831
    .line 832
    move-result-object v11

    .line 833
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 834
    .line 835
    .line 836
    move-result-object v11

    .line 837
    invoke-static {v11}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    .line 838
    .line 839
    .line 840
    move-result-object v11

    .line 841
    const-wide v13, 0x10c00000002L

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    invoke-virtual {v7, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 847
    .line 848
    .line 849
    const-wide v13, 0x10b00000003L

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 855
    .line 856
    .line 857
    move-result-wide v13

    .line 858
    const-string v11, "Test App Name"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    .line 860
    move/from16 v23, v0

    .line 861
    .line 862
    const-wide v0, 0x10900000001L

    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    :try_start_2
    invoke-virtual {v7, v0, v1, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 868
    .line 869
    .line 870
    const-wide v0, 0x10900000002L

    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    invoke-virtual {v7, v0, v1, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 882
    .line 883
    .line 884
    const-wide v0, 0x10e00000003L

    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 890
    .line 891
    .line 892
    const-wide v0, 0x20e00000004L

    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    if-eqz v8, :cond_6

    .line 898
    .line 899
    const/4 v3, 0x1

    .line 900
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 901
    .line 902
    .line 903
    goto :goto_8

    .line 904
    :catchall_1
    move-exception v0

    .line 905
    move-object/from16 v1, p0

    .line 906
    .line 907
    goto/16 :goto_13

    .line 908
    .line 909
    :cond_6
    :goto_8
    if-eqz v12, :cond_7

    .line 910
    .line 911
    const/4 v3, 0x2

    .line 912
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 913
    .line 914
    .line 915
    :cond_7
    if-eqz v15, :cond_8

    .line 916
    .line 917
    const/4 v3, 0x3

    .line 918
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 919
    .line 920
    .line 921
    :cond_8
    if-eqz v18, :cond_9

    .line 922
    .line 923
    const/4 v3, 0x4

    .line 924
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 925
    .line 926
    .line 927
    :cond_9
    if-eqz v19, :cond_a

    .line 928
    .line 929
    const/4 v3, 0x5

    .line 930
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 931
    .line 932
    .line 933
    :cond_a
    if-eqz v20, :cond_b

    .line 934
    .line 935
    const/4 v3, 0x6

    .line 936
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 937
    .line 938
    .line 939
    :cond_b
    if-eqz v21, :cond_c

    .line 940
    .line 941
    const/4 v3, 0x7

    .line 942
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 943
    .line 944
    .line 945
    :cond_c
    if-eqz v22, :cond_d

    .line 946
    .line 947
    const/16 v3, 0x8

    .line 948
    .line 949
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 950
    .line 951
    .line 952
    :cond_d
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 953
    .line 954
    .line 955
    move-wide/from16 v0, v16

    .line 956
    .line 957
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 958
    .line 959
    .line 960
    move-object/from16 v1, p0

    .line 961
    .line 962
    :try_start_3
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 963
    .line 964
    move/from16 v3, v23

    .line 965
    .line 966
    invoke-virtual {v0, v3}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 971
    .line 972
    .line 973
    move-result-object v3

    .line 974
    const/4 v4, 0x0

    .line 975
    const v5, 0x63678883

    .line 976
    .line 977
    .line 978
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 979
    .line 980
    .line 981
    :cond_e
    :goto_9
    const/4 v0, 0x0

    .line 982
    goto/16 :goto_12

    .line 983
    .line 984
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 985
    .line 986
    .line 987
    move-result v0

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 989
    .line 990
    .line 991
    move-result v3

    .line 992
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v4

    .line 996
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v5

    .line 1000
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    .line 1001
    .line 1002
    invoke-direct {v6}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 1003
    .line 1004
    .line 1005
    const/4 v7, 0x1

    .line 1006
    invoke-virtual {v6, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1007
    .line 1008
    .line 1009
    const-wide v8, 0x10b00000004L

    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1015
    .line 1016
    .line 1017
    move-result-wide v8

    .line 1018
    const/4 v10, 0x0

    .line 1019
    :goto_a
    if-ge v10, v3, :cond_11

    .line 1020
    .line 1021
    const-wide v11, 0x20b00000003L

    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1027
    .line 1028
    .line 1029
    move-result-wide v11

    .line 1030
    if-ne v3, v7, :cond_f

    .line 1031
    .line 1032
    move-object v7, v4

    .line 1033
    :goto_b
    const-wide v13, 0x10900000001L

    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    goto :goto_c

    .line 1039
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v7

    .line 1054
    goto :goto_b

    .line 1055
    :goto_c
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    const/4 v7, 0x1

    .line 1059
    if-ne v3, v7, :cond_10

    .line 1060
    .line 1061
    move-object v7, v5

    .line 1062
    :goto_d
    const-wide v13, 0x10900000002L

    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    goto :goto_e

    .line 1068
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v7

    .line 1083
    goto :goto_d

    .line 1084
    :goto_e
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1088
    .line 1089
    .line 1090
    add-int/lit8 v10, v10, 0x1

    .line 1091
    .line 1092
    const/4 v7, 0x1

    .line 1093
    goto :goto_a

    .line 1094
    :cond_11
    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1095
    .line 1096
    .line 1097
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1098
    .line 1099
    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    const/4 v4, 0x0

    .line 1108
    const v5, 0x63678883

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1112
    .line 1113
    .line 1114
    goto/16 :goto_9

    .line 1115
    .line 1116
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1117
    .line 1118
    .line 1119
    move-result v0

    .line 1120
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v3

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1125
    .line 1126
    .line 1127
    move-result v4

    .line 1128
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1129
    .line 1130
    invoke-virtual {v5, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    invoke-static {v4, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    .line 1135
    .line 1136
    .line 1137
    move-result-object v3

    .line 1138
    const/4 v4, 0x0

    .line 1139
    const v5, 0x63678883

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1143
    .line 1144
    .line 1145
    goto/16 :goto_9

    .line 1146
    .line 1147
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1148
    .line 1149
    .line 1150
    move-result v0

    .line 1151
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v3

    .line 1155
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v4

    .line 1159
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v5

    .line 1163
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1164
    .line 1165
    invoke-virtual {v6, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    invoke-static {v3, v4, v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 1170
    .line 1171
    .line 1172
    move-result-object v3

    .line 1173
    const/4 v4, 0x0

    .line 1174
    const v5, 0x63678883

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1178
    .line 1179
    .line 1180
    goto/16 :goto_9

    .line 1181
    .line 1182
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1183
    .line 1184
    .line 1185
    move-result v0

    .line 1186
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1187
    .line 1188
    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    .line 1193
    .line 1194
    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 1195
    .line 1196
    .line 1197
    const/4 v4, 0x1

    .line 1198
    invoke-virtual {v3, v10, v11, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 1202
    .line 1203
    .line 1204
    move-result-object v3

    .line 1205
    const/4 v4, 0x0

    .line 1206
    const v5, 0x63678883

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1210
    .line 1211
    .line 1212
    goto/16 :goto_9

    .line 1213
    .line 1214
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1215
    .line 1216
    .line 1217
    move-result v0

    .line 1218
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1219
    .line 1220
    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1221
    .line 1222
    .line 1223
    goto/16 :goto_9

    .line 1224
    .line 1225
    :pswitch_c
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 1226
    .line 1227
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    .line 1229
    .line 1230
    new-instance v3, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;

    .line 1231
    .line 1232
    invoke-direct {v3, v0}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 1233
    .line 1234
    .line 1235
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1236
    .line 1237
    .line 1238
    goto/16 :goto_9

    .line 1239
    .line 1240
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1241
    .line 1242
    .line 1243
    move-result v0

    .line 1244
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v3

    .line 1248
    const/4 v4, 0x2

    .line 1249
    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 1250
    .line 1251
    .line 1252
    move-result-object v3

    .line 1253
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 1254
    .line 1255
    invoke-virtual {v4, v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V

    .line 1256
    .line 1257
    .line 1258
    goto/16 :goto_9

    .line 1259
    .line 1260
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1261
    .line 1262
    .line 1263
    move-result v0

    .line 1264
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 1265
    .line 1266
    invoke-virtual {v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    .line 1267
    .line 1268
    .line 1269
    move-result-object v0

    .line 1270
    const/4 v3, 0x2

    .line 1271
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    goto/16 :goto_9

    .line 1279
    .line 1280
    :pswitch_f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    if-eqz v0, :cond_e

    .line 1285
    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v3

    .line 1294
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v5

    .line 1298
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v6

    .line 1302
    if-eqz v6, :cond_12

    .line 1303
    .line 1304
    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    goto/16 :goto_9

    .line 1308
    .line 1309
    :cond_12
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v4

    .line 1313
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1314
    .line 1315
    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v4

    .line 1322
    invoke-virtual {v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v4

    .line 1326
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1327
    .line 1328
    const/4 v6, 0x0

    .line 1329
    invoke-virtual {v5, v4, v3, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 1330
    .line 1331
    .line 1332
    goto/16 :goto_9

    .line 1333
    .line 1334
    :pswitch_10
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1335
    .line 1336
    .line 1337
    move-result v0

    .line 1338
    if-eqz v0, :cond_e

    .line 1339
    .line 1340
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1341
    .line 1342
    .line 1343
    move-result v0

    .line 1344
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v3

    .line 1348
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v5

    .line 1352
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v6

    .line 1356
    if-eqz v6, :cond_13

    .line 1357
    .line 1358
    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    goto/16 :goto_9

    .line 1362
    .line 1363
    :cond_13
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v4

    .line 1367
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1368
    .line 1369
    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v4

    .line 1376
    invoke-virtual {v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v4

    .line 1380
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1381
    .line 1382
    const/4 v6, 0x0

    .line 1383
    invoke-virtual {v5, v4, v3, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 1384
    .line 1385
    .line 1386
    goto/16 :goto_9

    .line 1387
    .line 1388
    :pswitch_11
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1389
    .line 1390
    .line 1391
    move-result v0

    .line 1392
    if-eqz v0, :cond_e

    .line 1393
    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1395
    .line 1396
    .line 1397
    move-result v0

    .line 1398
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1399
    .line 1400
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1401
    .line 1402
    .line 1403
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->sendDevicePresenceEventOnUnlocked(I)V

    .line 1407
    .line 1408
    .line 1409
    goto/16 :goto_9

    .line 1410
    .line 1411
    :pswitch_12
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1412
    .line 1413
    .line 1414
    move-result v0

    .line 1415
    if-eqz v0, :cond_e

    .line 1416
    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1418
    .line 1419
    .line 1420
    move-result v0

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1422
    .line 1423
    .line 1424
    move-result v3

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1426
    .line 1427
    .line 1428
    move-result v4

    .line 1429
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v5

    .line 1433
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1434
    .line 1435
    .line 1436
    move-result v6

    .line 1437
    if-eqz v6, :cond_14

    .line 1438
    .line 1439
    const/4 v5, 0x0

    .line 1440
    goto :goto_f

    .line 1441
    :cond_14
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v5

    .line 1445
    :goto_f
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1446
    .line 1447
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1448
    .line 1449
    .line 1450
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    .line 1454
    .line 1455
    .line 1456
    goto/16 :goto_9

    .line 1457
    .line 1458
    :pswitch_13
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1459
    .line 1460
    .line 1461
    move-result v0

    .line 1462
    if-eqz v0, :cond_e

    .line 1463
    .line 1464
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v0

    .line 1468
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v3

    .line 1472
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1473
    .line 1474
    .line 1475
    move-result v4

    .line 1476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1477
    .line 1478
    .line 1479
    move-result v5

    .line 1480
    new-instance v6, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 1481
    .line 1482
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v0

    .line 1486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1487
    .line 1488
    .line 1489
    move-result-wide v7

    .line 1490
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v7

    .line 1494
    invoke-direct {v6, v4, v0, v3, v7}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1495
    .line 1496
    .line 1497
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1498
    .line 1499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1500
    .line 1501
    .line 1502
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v0, v6, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    .line 1506
    .line 1507
    .line 1508
    goto/16 :goto_9

    .line 1509
    .line 1510
    :pswitch_14
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1511
    .line 1512
    .line 1513
    move-result v0

    .line 1514
    if-eqz v0, :cond_e

    .line 1515
    .line 1516
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1517
    .line 1518
    .line 1519
    move-result v0

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1521
    .line 1522
    .line 1523
    move-result v3

    .line 1524
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1525
    .line 1526
    invoke-virtual {v4, v0, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 1527
    .line 1528
    .line 1529
    goto/16 :goto_9

    .line 1530
    .line 1531
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1532
    .line 1533
    .line 1534
    move-result v0

    .line 1535
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1536
    .line 1537
    const/4 v4, 0x1

    .line 1538
    invoke-virtual {v3, v0, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 1539
    .line 1540
    .line 1541
    goto/16 :goto_9

    .line 1542
    .line 1543
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1544
    .line 1545
    .line 1546
    move-result v0

    .line 1547
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1548
    .line 1549
    const/4 v4, 0x0

    .line 1550
    invoke-virtual {v3, v0, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 1551
    .line 1552
    .line 1553
    goto/16 :goto_9

    .line 1554
    .line 1555
    :pswitch_17
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1556
    .line 1557
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1558
    .line 1559
    .line 1560
    new-instance v3, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    .line 1561
    .line 1562
    invoke-direct {v3, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    .line 1563
    .line 1564
    .line 1565
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1566
    .line 1567
    .line 1568
    goto/16 :goto_9

    .line 1569
    .line 1570
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1571
    .line 1572
    .line 1573
    move-result v0

    .line 1574
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1575
    .line 1576
    invoke-virtual {v3, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v0

    .line 1580
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v0

    .line 1584
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1585
    .line 1586
    .line 1587
    move-result v3

    .line 1588
    if-eqz v3, :cond_e

    .line 1589
    .line 1590
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v3

    .line 1594
    check-cast v3, Landroid/companion/AssociationInfo;

    .line 1595
    .line 1596
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 1597
    .line 1598
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    .line 1599
    .line 1600
    .line 1601
    move-result v3

    .line 1602
    invoke-virtual {v4, v3}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 1603
    .line 1604
    .line 1605
    goto :goto_10

    .line 1606
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1607
    .line 1608
    .line 1609
    move-result v0

    .line 1610
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v3

    .line 1614
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v5

    .line 1618
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1619
    .line 1620
    invoke-virtual {v6, v0, v3, v5}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v0

    .line 1624
    if-nez v0, :cond_15

    .line 1625
    .line 1626
    const-string v0, "Association doesn\'t exist."

    .line 1627
    .line 1628
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    .line 1630
    .line 1631
    goto/16 :goto_9

    .line 1632
    .line 1633
    :cond_15
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 1634
    .line 1635
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 1636
    .line 1637
    .line 1638
    move-result v0

    .line 1639
    invoke-virtual {v3, v0}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 1640
    .line 1641
    .line 1642
    goto/16 :goto_9

    .line 1643
    .line 1644
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1645
    .line 1646
    .line 1647
    move-result v5

    .line 1648
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v6

    .line 1652
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v0

    .line 1656
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v9

    .line 1660
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v7

    .line 1664
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 1665
    .line 1666
    const/4 v10, 0x0

    .line 1667
    const/4 v11, 0x0

    .line 1668
    const/4 v12, 0x0

    .line 1669
    const/4 v13, 0x0

    .line 1670
    move-object v8, v9

    .line 1671
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 1672
    .line 1673
    .line 1674
    goto/16 :goto_9

    .line 1675
    .line 1676
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1677
    .line 1678
    .line 1679
    move-result v5

    .line 1680
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1681
    .line 1682
    invoke-virtual {v6, v5}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v5

    .line 1686
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1687
    .line 1688
    iget-object v7, v6, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 1689
    .line 1690
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1691
    :try_start_4
    iget v6, v6, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 1692
    .line 1693
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1694
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1697
    .line 1698
    .line 1699
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1700
    .line 1701
    .line 1702
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v3

    .line 1706
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1707
    .line 1708
    .line 1709
    const-string v3, "Association ID | Package Name | Mac Address"

    .line 1710
    .line 1711
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    .line 1713
    .line 1714
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v3

    .line 1718
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1719
    .line 1720
    .line 1721
    move-result v5

    .line 1722
    if-eqz v5, :cond_e

    .line 1723
    .line 1724
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v5

    .line 1728
    check-cast v5, Landroid/companion/AssociationInfo;

    .line 1729
    .line 1730
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1731
    .line 1732
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    .line 1736
    .line 1737
    .line 1738
    move-result v7

    .line 1739
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v7

    .line 1749
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v5

    .line 1759
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1760
    .line 1761
    .line 1762
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v5

    .line 1766
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1767
    .line 1768
    .line 1769
    goto :goto_11

    .line 1770
    :goto_12
    return v0

    .line 1771
    :catchall_2
    move-exception v0

    .line 1772
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1773
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1774
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v1

    .line 1778
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1779
    .line 1780
    .line 1781
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1782
    .line 1783
    const-string v4, "Exception occurred while executing \'"

    .line 1784
    .line 1785
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1786
    .line 1787
    .line 1788
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    .line 1790
    .line 1791
    const-string v2, "\':"

    .line 1792
    .line 1793
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    .line 1795
    .line 1796
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v2

    .line 1800
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1804
    .line 1805
    .line 1806
    const/4 v1, 0x1

    .line 1807
    return v1

    .line 1808
    nop

    .line 1809
    :sswitch_data_0
    .sparse-switch
        -0x78de6919 -> :sswitch_1b
        -0x76d9e39f -> :sswitch_1a
        -0x7196e026 -> :sswitch_19
        -0x6ee6a072 -> :sswitch_18
        -0x6e9ef255 -> :sswitch_17
        -0x48f877fd -> :sswitch_16
        -0x3aaa3162 -> :sswitch_15
        -0x2d23c69b -> :sswitch_14
        -0x25c83694 -> :sswitch_13
        -0x25b7ef5c -> :sswitch_12
        -0x20ae7cab -> :sswitch_11
        -0x1ed53de7 -> :sswitch_10
        -0x13014aaa -> :sswitch_f
        -0xb6faf2c -> :sswitch_e
        0x32b09e -> :sswitch_d
        0x13b98693 -> :sswitch_c
        0x20e05ad6 -> :sswitch_b
        0x27a53e18 -> :sswitch_a
        0x2ebfca50 -> :sswitch_9
        0x2f25cbb5 -> :sswitch_8
        0x3fc236be -> :sswitch_7
        0x545c8610 -> :sswitch_6
        0x5b04a2b3 -> :sswitch_5
        0x5e900f1e -> :sswitch_4
        0x72009e76 -> :sswitch_3
        0x761c1fc0 -> :sswitch_2
        0x77005277 -> :sswitch_1
        0x774e28e2 -> :sswitch_0
    .end sparse-switch

    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Companion Device Manager (companiondevice) commands:"

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
    const-string v0, "      Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  list USER_ID"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "      List all Associations for a user."

    .line 26
    .line 27
    const-string v1, "  associate USER_ID PACKAGE MAC_ADDRESS [DEVICE_PROFILE]"

    .line 28
    .line 29
    const-string v2, "      Create a new Association."

    .line 30
    .line 31
    const-string v3, "  disassociate USER_ID PACKAGE MAC_ADDRESS"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "      Remove an existing Association."

    .line 37
    .line 38
    const-string v1, "  disassociate-all USER_ID"

    .line 39
    .line 40
    const-string v2, "      Remove all Associations for a user."

    .line 41
    .line 42
    const-string v3, "  refresh-cache"

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "      Clear the in-memory association cache and reload all association "

    .line 48
    .line 49
    const-string v1, "      information from disk. USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 50
    .line 51
    const-string v2, "  simulate-device-appeared ASSOCIATION_ID"

    .line 52
    .line 53
    const-string v3, "      Make CDM act as if the given companion device has appeared."

    .line 54
    .line 55
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "      I.e. bind the associated companion application\'s"

    .line 59
    .line 60
    const-string v1, "      CompanionDeviceService(s) and trigger onDeviceAppeared() callback."

    .line 61
    .line 62
    const-string v2, "      The CDM will consider the devices as present for 60 seconds and then"

    .line 63
    .line 64
    const-string v4, "      will act as if device disappeared, unless \'simulate-device-disappeared\'"

    .line 65
    .line 66
    invoke-static {p0, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "      or \'simulate-device-appeared\' is called again before 60 seconds run out."

    .line 70
    .line 71
    const-string v4, "      USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 72
    .line 73
    const-string v5, "  simulate-device-disappeared ASSOCIATION_ID"

    .line 74
    .line 75
    const-string v6, "      Make CDM act as if the given companion device has disappeared."

    .line 76
    .line 77
    invoke-static {p0, v2, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "      I.e. unbind the associated companion application\'s"

    .line 81
    .line 82
    const-string v5, "      CompanionDeviceService(s) and trigger onDeviceDisappeared() callback."

    .line 83
    .line 84
    const-string v7, "      NOTE: This will only have effect if \'simulate-device-appeared\' was"

    .line 85
    .line 86
    const-string v8, "      invoked for the same device (same ASSOCIATION_ID) no longer than"

    .line 87
    .line 88
    invoke-static {p0, v2, v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v5, "      60 seconds ago."

    .line 92
    .line 93
    const-string v9, "  get-backup-payload USER_ID"

    .line 94
    .line 95
    const-string v10, "      Generate backup payload for the given user and print its content"

    .line 96
    .line 97
    const-string v11, "      encoded to a Base64 string."

    .line 98
    .line 99
    invoke-static {p0, v5, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v9, "  apply-restored-payload USER_ID PAYLOAD"

    .line 106
    .line 107
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v9, "      Apply restored backup payload for the given user."

    .line 111
    .line 112
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_0

    .line 123
    .line 124
    const-string v9, "  simulate-device-event ASSOCIATION_ID EVENT"

    .line 125
    .line 126
    const-string v10, "  Simulate the companion device event changes:"

    .line 127
    .line 128
    const-string v11, "    Case(0): "

    .line 129
    .line 130
    invoke-static {p0, v9, v10, v11, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v3, "      The CDM will consider the devices as present for60 seconds and then"

    .line 134
    .line 135
    const-string v9, "      will act as if device disappeared, unless\'simulate-device-disappeared\'"

    .line 136
    .line 137
    invoke-static {p0, v0, v1, v3, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v0, "      or \'simulate-device-appeared\' is called again before 60 secondsrun out."

    .line 141
    .line 142
    const-string v1, "    Case(1): "

    .line 143
    .line 144
    invoke-static {p0, v0, v1, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v0, "      CompanionDeviceService(s) and trigger onDeviceDisappeared()callback."

    .line 148
    .line 149
    invoke-static {p0, v0, v7, v8, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v0, "    Case(2): "

    .line 153
    .line 154
    const-string v1, "      Make CDM act as if the given companion device is BT connected "

    .line 155
    .line 156
    const-string v2, "    Case(3): "

    .line 157
    .line 158
    const-string v3, "      Make CDM act as if the given companion device is BT disconnected "

    .line 159
    .line 160
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v1, "  simulate-device-uuid-event UUID PACKAGE USERID EVENT"

    .line 164
    .line 165
    invoke-static {p0, v4, v1, v10, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v0, "      Make CDM act as if the given DEVICE is BT connected baseon the UUID"

    .line 169
    .line 170
    const-string v1, "      Make CDM act as if the given DEVICE is BT disconnected baseon the UUID"

    .line 171
    .line 172
    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v0, "  simulate-device-event-device-locked ASSOCIATION_ID USER_ID DEVICE_EVENT PARCEL_UUID"

    .line 176
    .line 177
    const-string v1, "  Simulate device event when the device is locked"

    .line 178
    .line 179
    const-string v2, "  USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 180
    .line 181
    const-string v3, "  simulate-device-event-device-unlocked USER_ID"

    .line 182
    .line 183
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v0, "  Simulate device unlocked for given user. This will send corresponding"

    .line 187
    .line 188
    const-string v1, "  callback after simulate-device-event-device-locked"

    .line 189
    .line 190
    const-string v3, "  command has been called."

    .line 191
    .line 192
    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v0, "  start-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    .line 196
    .line 197
    const-string v1, "  Start observing device presence base on the UUID."

    .line 198
    .line 199
    const-string v3, "  stop-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    .line 200
    .line 201
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v0, "  Stop observing device presence base on the UUID."

    .line 205
    .line 206
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_0
    const-string v0, "  remove-inactive-associations"

    .line 213
    .line 214
    const-string v1, "      Remove self-managed associations that have not been active "

    .line 215
    .line 216
    const-string v2, "      for a long time (90 days or as configured via "

    .line 217
    .line 218
    const-string v3, "      \"debug.cdm.cdmservice.removal_time_window\" system property). "

    .line 219
    .line 220
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v0, "  create-emulated-transport <ASSOCIATION_ID>"

    .line 224
    .line 225
    const-string v1, "      Create an EmulatedTransport for testing purposes only"

    .line 226
    .line 227
    const-string v2, "  enable-perm-sync <ASSOCIATION_ID>"

    .line 228
    .line 229
    invoke-static {p0, v4, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v0, "      Enable perm sync for the association."

    .line 233
    .line 234
    const-string v1, "  disable-perm-sync <ASSOCIATION_ID>"

    .line 235
    .line 236
    const-string v2, "      Disable perm sync for the association."

    .line 237
    .line 238
    const-string v3, "  get-perm-sync-state <ASSOCIATION_ID>"

    .line 239
    .line 240
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v0, "      Get perm sync state for the association."

    .line 244
    .line 245
    const-string v1, "  remove-perm-sync-state <ASSOCIATION_ID>"

    .line 246
    .line 247
    const-string v2, "      Remove perm sync state for the association."

    .line 248
    .line 249
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method
