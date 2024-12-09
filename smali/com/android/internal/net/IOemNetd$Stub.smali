.class public abstract Lcom/android/internal/net/IOemNetd$Stub;
.super Landroid/os/Binder;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/net/IOemNetd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "com.android.internal.net.IOemNetd"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string/jumbo v0, "com.android.internal.net.IOemNetd"

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    instance-of v1, v0, Lcom/android/internal/net/IOemNetd;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/android/internal/net/IOemNetd;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/internal/net/IOemNetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string/jumbo v3, "com.android.internal.net.IOemNetd"

    .line 2
    .line 3
    .line 4
    const/4 v7, 0x1

    .line 5
    if-lt p1, v7, :cond_0

    .line 6
    .line 7
    const v4, 0xffffff

    .line 8
    .line 9
    .line 10
    if-gt p1, v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const v4, 0x5f4e5446

    .line 16
    .line 17
    .line 18
    if-ne p1, v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v7

    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 54
    .line 55
    .line 56
    move-object v0, p0

    .line 57
    move-object v2, v3

    .line 58
    move v3, v4

    .line 59
    move-object v4, v5

    .line 60
    move-object v5, v6

    .line 61
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    .line 106
    .line 107
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    .line 137
    .line 138
    move-object v0, p0

    .line 139
    move-object v2, v3

    .line 140
    move-object v3, v4

    .line 141
    move v4, v5

    .line 142
    move v5, v6

    .line 143
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    .line 165
    .line 166
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setMptcpPrivateIpRoute(ZLjava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    .line 188
    .line 189
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    .line 207
    .line 208
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setMtuValueMptcp(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    .line 226
    .line 227
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_2

    .line 234
    .line 235
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    .line 272
    .line 273
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    .line 303
    .line 304
    move-object v0, p0

    .line 305
    move-object v2, v3

    .line 306
    move-object v3, v4

    .line 307
    move v4, v5

    .line 308
    move-object v5, v6

    .line 309
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_2

    .line 316
    .line 317
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    .line 339
    .line 340
    move-object v0, p0

    .line 341
    move-object v2, v3

    .line 342
    move-object v3, v4

    .line 343
    move v4, v5

    .line 344
    move-object v5, v6

    .line 345
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_2

    .line 352
    .line 353
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    .line 367
    .line 368
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_2

    .line 375
    .line 376
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    .line 390
    .line 391
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_2

    .line 398
    .line 399
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    .line 413
    .line 414
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_2

    .line 421
    .line 422
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    .line 436
    .line 437
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_2

    .line 444
    .line 445
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    .line 471
    .line 472
    move-object v0, p0

    .line 473
    move-object v2, v3

    .line 474
    move-object v3, v4

    .line 475
    move v4, v5

    .line 476
    move v5, v6

    .line 477
    move-object v6, v8

    .line 478
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/net/IOemNetd;->removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_2

    .line 485
    .line 486
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    .line 512
    .line 513
    move-object v0, p0

    .line 514
    move-object v2, v3

    .line 515
    move-object v3, v4

    .line 516
    move v4, v5

    .line 517
    move v5, v6

    .line 518
    move-object v6, v8

    .line 519
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/net/IOemNetd;->addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_2

    .line 526
    .line 527
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    .line 537
    .line 538
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_2

    .line 545
    .line 546
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    .line 556
    .line 557
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_2

    .line 564
    .line 565
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    .line 571
    .line 572
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeMptcpLinkIface(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_2

    .line 579
    .line 580
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    .line 586
    .line 587
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->addMptcpLinkIface(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_2

    .line 594
    .line 595
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v4

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v6

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    .line 617
    .line 618
    move-object v0, p0

    .line 619
    move-object v2, v3

    .line 620
    move-object v3, v4

    .line 621
    move v4, v5

    .line 622
    move-object v5, v6

    .line 623
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_2

    .line 630
    .line 631
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 644
    .line 645
    .line 646
    move-result v5

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v6

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    .line 653
    .line 654
    move-object v0, p0

    .line 655
    move-object v2, v3

    .line 656
    move-object v3, v4

    .line 657
    move v4, v5

    .line 658
    move-object v5, v6

    .line 659
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    .line 664
    .line 665
    goto/16 :goto_2

    .line 666
    .line 667
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    .line 681
    .line 682
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_2

    .line 689
    .line 690
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    .line 704
    .line 705
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    .line 710
    .line 711
    goto/16 :goto_2

    .line 712
    .line 713
    :pswitch_1a
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->disableMptcpMode()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    .line 718
    .line 719
    goto/16 :goto_2

    .line 720
    .line 721
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    .line 727
    .line 728
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableMptcpModes(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_2

    .line 735
    .line 736
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    .line 742
    .line 743
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->updateGroPshOption(I)V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_2

    .line 747
    .line 748
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 749
    .line 750
    .line 751
    move-result-wide v3

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    .line 754
    .line 755
    invoke-interface {p0, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateGroFlushTime(J)V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_2

    .line 759
    .line 760
    :pswitch_1e
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterCloEventListener()V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    .line 765
    .line 766
    goto/16 :goto_2

    .line 767
    .line 768
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-static {v1}, Landroid/net/ICloEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICloEventObserver;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    .line 778
    .line 779
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->registerCloEventListener(Landroid/net/ICloEventObserver;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    .line 784
    .line 785
    goto/16 :goto_2

    .line 786
    .line 787
    :pswitch_20
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->deactivateCloGro()V

    .line 788
    .line 789
    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_2

    .line 794
    .line 795
    :pswitch_21
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->activateCloGro()V

    .line 796
    .line 797
    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    .line 800
    .line 801
    goto/16 :goto_2

    .line 802
    .line 803
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    .line 809
    .line 810
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->deactivateClo(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    .line 815
    .line 816
    goto/16 :goto_2

    .line 817
    .line 818
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    .line 824
    .line 825
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->activateClo(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_2

    .line 832
    .line 833
    :pswitch_24
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->l4StatsGet()[J

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_2

    .line 844
    .line 845
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 846
    .line 847
    .line 848
    move-result v1

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    .line 851
    .line 852
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAdvertiseWindowSize(I)V

    .line 853
    .line 854
    .line 855
    goto/16 :goto_2

    .line 856
    .line 857
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 862
    .line 863
    .line 864
    move-result v3

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 866
    .line 867
    .line 868
    move-result v4

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    .line 871
    .line 872
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->replaceMnxbRule(Ljava/lang/String;II)I

    .line 873
    .line 874
    .line 875
    move-result v0

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    .line 878
    .line 879
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    .line 881
    .line 882
    goto/16 :goto_2

    .line 883
    .line 884
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v3

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 893
    .line 894
    .line 895
    move-result v4

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    .line 898
    .line 899
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMnxbRule(ZLjava/lang/String;I)I

    .line 900
    .line 901
    .line 902
    move-result v0

    .line 903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    .line 905
    .line 906
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    .line 908
    .line 909
    goto/16 :goto_2

    .line 910
    .line 911
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 912
    .line 913
    .line 914
    move-result v1

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 916
    .line 917
    .line 918
    move-result v3

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    .line 921
    .line 922
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioritizeMnxbApp(ZI)I

    .line 923
    .line 924
    .line 925
    move-result v0

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    .line 928
    .line 929
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_2

    .line 933
    .line 934
    :pswitch_29
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanOnlyAllowIPs()V

    .line 935
    .line 936
    .line 937
    goto/16 :goto_2

    .line 938
    .line 939
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    .line 945
    .line 946
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setOnlyAllowIPs(Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    goto/16 :goto_2

    .line 950
    .line 951
    :pswitch_2b
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanBlockPorts()V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_2

    .line 955
    .line 956
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v1

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v4

    .line 968
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    .line 970
    .line 971
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V

    .line 972
    .line 973
    .line 974
    goto/16 :goto_2

    .line 975
    .line 976
    :pswitch_2d
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->setBlockAllPackets()V

    .line 977
    .line 978
    .line 979
    goto/16 :goto_2

    .line 980
    .line 981
    :pswitch_2e
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanAllBlock()V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_2

    .line 985
    .line 986
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    .line 992
    .line 993
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAllowHostAlone(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    goto/16 :goto_2

    .line 997
    .line 998
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    .line 1004
    .line 1005
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockHostAlone(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    goto/16 :goto_2

    .line 1009
    .line 1010
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v1

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    .line 1016
    .line 1017
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAllowListIPs(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    goto/16 :goto_2

    .line 1021
    .line 1022
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v1

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    .line 1028
    .line 1029
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockListIPs(Ljava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_2

    .line 1033
    .line 1034
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1035
    .line 1036
    .line 1037
    move-result v1

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    .line 1040
    .line 1041
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockAllDNSPackets(Z)V

    .line 1042
    .line 1043
    .line 1044
    goto/16 :goto_2

    .line 1045
    .line 1046
    :pswitch_34
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->makeBlockChildChain()V

    .line 1047
    .line 1048
    .line 1049
    goto/16 :goto_2

    .line 1050
    .line 1051
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1052
    .line 1053
    .line 1054
    move-result v1

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v3

    .line 1059
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v4

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v5

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1068
    .line 1069
    .line 1070
    move-result v6

    .line 1071
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    .line 1073
    .line 1074
    move-object v0, p0

    .line 1075
    move-object v2, v3

    .line 1076
    move-object v3, v4

    .line 1077
    move-object v4, v5

    .line 1078
    move v5, v6

    .line 1079
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    .line 1084
    .line 1085
    goto/16 :goto_2

    .line 1086
    .line 1087
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1088
    .line 1089
    .line 1090
    move-result v1

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v3

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v4

    .line 1099
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v5

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1104
    .line 1105
    .line 1106
    move-result v6

    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    .line 1109
    .line 1110
    move-object v0, p0

    .line 1111
    move-object v2, v3

    .line 1112
    move-object v3, v4

    .line 1113
    move-object v4, v5

    .line 1114
    move v5, v6

    .line 1115
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    .line 1120
    .line 1121
    goto/16 :goto_2

    .line 1122
    .line 1123
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1128
    .line 1129
    .line 1130
    move-result v3

    .line 1131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    .line 1133
    .line 1134
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->interfaceSetAutoConf(Ljava/lang/String;Z)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_2

    .line 1138
    .line 1139
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v1

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v3

    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v4

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    .line 1153
    .line 1154
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setEpdgInterfaceDropRule(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1155
    .line 1156
    .line 1157
    goto/16 :goto_2

    .line 1158
    .line 1159
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1160
    .line 1161
    .line 1162
    move-result v1

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v3

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v4

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v5

    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    .line 1177
    .line 1178
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/android/internal/net/IOemNetd;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1179
    .line 1180
    .line 1181
    goto/16 :goto_2

    .line 1182
    .line 1183
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1184
    .line 1185
    .line 1186
    move-result v1

    .line 1187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v3

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v4

    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    .line 1197
    .line 1198
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    goto/16 :goto_2

    .line 1209
    .line 1210
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v1

    .line 1214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v3

    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v4

    .line 1222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v5

    .line 1226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1227
    .line 1228
    .line 1229
    move-result v6

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    .line 1232
    .line 1233
    move-object v0, p0

    .line 1234
    move-object v2, v3

    .line 1235
    move-object v3, v4

    .line 1236
    move-object v4, v5

    .line 1237
    move v5, v6

    .line 1238
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1239
    .line 1240
    .line 1241
    goto/16 :goto_2

    .line 1242
    .line 1243
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1244
    .line 1245
    .line 1246
    move-result v1

    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1248
    .line 1249
    .line 1250
    move-result v3

    .line 1251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    .line 1253
    .line 1254
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->spegRestrictNetworkConnection(IZ)V

    .line 1255
    .line 1256
    .line 1257
    goto/16 :goto_2

    .line 1258
    .line 1259
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v1

    .line 1263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v3

    .line 1267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    .line 1269
    .line 1270
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v0

    .line 1274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    goto/16 :goto_2

    .line 1281
    .line 1282
    :pswitch_3e
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getTrafficTimeStats()Landroid/net/TrafficTimeStatsParcel;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0

    .line 1286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1290
    .line 1291
    .line 1292
    goto/16 :goto_2

    .line 1293
    .line 1294
    :pswitch_3f
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getMhsTrafficStats()[Landroid/net/UidStatsParcel;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1302
    .line 1303
    .line 1304
    goto/16 :goto_2

    .line 1305
    .line 1306
    :pswitch_40
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getUidTrafficStats()[Landroid/net/UidStatsParcel;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1314
    .line 1315
    .line 1316
    goto/16 :goto_2

    .line 1317
    .line 1318
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v1

    .line 1322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    .line 1324
    .line 1325
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->stopTrafficStatsController(Ljava/lang/String;)I

    .line 1326
    .line 1327
    .line 1328
    move-result v0

    .line 1329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    .line 1334
    .line 1335
    goto/16 :goto_2

    .line 1336
    .line 1337
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v1

    .line 1341
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1342
    .line 1343
    .line 1344
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startTrafficStatsController(Ljava/lang/String;)I

    .line 1345
    .line 1346
    .line 1347
    move-result v0

    .line 1348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    .line 1353
    .line 1354
    goto/16 :goto_2

    .line 1355
    .line 1356
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v1

    .line 1360
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v3

    .line 1364
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v4

    .line 1368
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v5

    .line 1372
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v6

    .line 1376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1377
    .line 1378
    .line 1379
    move-object v0, p0

    .line 1380
    move-object v2, v3

    .line 1381
    move-object v3, v4

    .line 1382
    move-object v4, v5

    .line 1383
    move-object v5, v6

    .line 1384
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->delIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 1385
    .line 1386
    .line 1387
    move-result v0

    .line 1388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    .line 1393
    .line 1394
    goto/16 :goto_2

    .line 1395
    .line 1396
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v1

    .line 1400
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v3

    .line 1404
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v4

    .line 1408
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v5

    .line 1412
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v6

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    .line 1418
    .line 1419
    move-object v0, p0

    .line 1420
    move-object v2, v3

    .line 1421
    move-object v3, v4

    .line 1422
    move-object v4, v5

    .line 1423
    move-object v5, v6

    .line 1424
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 1425
    .line 1426
    .line 1427
    move-result v0

    .line 1428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    .line 1433
    .line 1434
    goto/16 :goto_2

    .line 1435
    .line 1436
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1437
    .line 1438
    .line 1439
    move-result v1

    .line 1440
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v3

    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v4

    .line 1448
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v5

    .line 1452
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v6

    .line 1456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1457
    .line 1458
    .line 1459
    move-object v0, p0

    .line 1460
    move-object v2, v3

    .line 1461
    move-object v3, v4

    .line 1462
    move-object v4, v5

    .line 1463
    move-object v5, v6

    .line 1464
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->prioDevice(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 1465
    .line 1466
    .line 1467
    move-result v0

    .line 1468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    .line 1473
    .line 1474
    goto/16 :goto_2

    .line 1475
    .line 1476
    :pswitch_46
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearPriorityMap()I

    .line 1477
    .line 1478
    .line 1479
    move-result v0

    .line 1480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1484
    .line 1485
    .line 1486
    goto/16 :goto_2

    .line 1487
    .line 1488
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v1

    .line 1492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1493
    .line 1494
    .line 1495
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->prioDisable(Ljava/lang/String;)I

    .line 1496
    .line 1497
    .line 1498
    move-result v0

    .line 1499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    .line 1504
    .line 1505
    goto/16 :goto_2

    .line 1506
    .line 1507
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v1

    .line 1511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1512
    .line 1513
    .line 1514
    move-result v3

    .line 1515
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1516
    .line 1517
    .line 1518
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioUpdate(Ljava/lang/String;I)I

    .line 1519
    .line 1520
    .line 1521
    move-result v0

    .line 1522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1526
    .line 1527
    .line 1528
    goto/16 :goto_2

    .line 1529
    .line 1530
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v1

    .line 1534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1535
    .line 1536
    .line 1537
    move-result v3

    .line 1538
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1539
    .line 1540
    .line 1541
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioEnable(Ljava/lang/String;I)I

    .line 1542
    .line 1543
    .line 1544
    move-result v0

    .line 1545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1549
    .line 1550
    .line 1551
    goto/16 :goto_2

    .line 1552
    .line 1553
    :pswitch_4a
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->isMBBPathsPresent()I

    .line 1554
    .line 1555
    .line 1556
    move-result v0

    .line 1557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    .line 1562
    .line 1563
    goto/16 :goto_2

    .line 1564
    .line 1565
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v1

    .line 1569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1570
    .line 1571
    .line 1572
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->flushArpEntry(Ljava/lang/String;)I

    .line 1573
    .line 1574
    .line 1575
    move-result v0

    .line 1576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    .line 1581
    .line 1582
    goto/16 :goto_2

    .line 1583
    .line 1584
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v1

    .line 1588
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1589
    .line 1590
    .line 1591
    move-result v3

    .line 1592
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v4

    .line 1596
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1597
    .line 1598
    .line 1599
    move-result-wide v5

    .line 1600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1601
    .line 1602
    .line 1603
    move-object v0, p0

    .line 1604
    move v2, v3

    .line 1605
    move-object v3, v4

    .line 1606
    move-wide v4, v5

    .line 1607
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->pauseDevice(Ljava/lang/String;ZLjava/lang/String;J)I

    .line 1608
    .line 1609
    .line 1610
    move-result v0

    .line 1611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    .line 1616
    .line 1617
    goto/16 :goto_2

    .line 1618
    .line 1619
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v1

    .line 1623
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1624
    .line 1625
    .line 1626
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOff(Ljava/lang/String;)I

    .line 1627
    .line 1628
    .line 1629
    move-result v0

    .line 1630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    .line 1632
    .line 1633
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    .line 1635
    .line 1636
    goto/16 :goto_2

    .line 1637
    .line 1638
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v1

    .line 1642
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1643
    .line 1644
    .line 1645
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOn(Ljava/lang/String;)I

    .line 1646
    .line 1647
    .line 1648
    move-result v0

    .line 1649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    .line 1654
    .line 1655
    goto/16 :goto_2

    .line 1656
    .line 1657
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v1

    .line 1661
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1662
    .line 1663
    .line 1664
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->getTotalDataUsage(Ljava/lang/String;)J

    .line 1665
    .line 1666
    .line 1667
    move-result-wide v0

    .line 1668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1672
    .line 1673
    .line 1674
    goto/16 :goto_2

    .line 1675
    .line 1676
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v1

    .line 1680
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v3

    .line 1684
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1685
    .line 1686
    .line 1687
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getDataUsage(Ljava/lang/String;Ljava/util/List;)[Landroid/net/MBBStatsParcel;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v0

    .line 1691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1695
    .line 1696
    .line 1697
    goto/16 :goto_2

    .line 1698
    .line 1699
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1700
    .line 1701
    .line 1702
    move-result-object v1

    .line 1703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1704
    .line 1705
    .line 1706
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->getTcpLocalPorts([I)[I

    .line 1707
    .line 1708
    .line 1709
    move-result-object v0

    .line 1710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1714
    .line 1715
    .line 1716
    goto/16 :goto_2

    .line 1717
    .line 1718
    :pswitch_52
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearTosMap()V

    .line 1719
    .line 1720
    .line 1721
    goto/16 :goto_2

    .line 1722
    .line 1723
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1724
    .line 1725
    .line 1726
    move-result v1

    .line 1727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1728
    .line 1729
    .line 1730
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeTosPolicy(I)V

    .line 1731
    .line 1732
    .line 1733
    goto/16 :goto_2

    .line 1734
    .line 1735
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1736
    .line 1737
    .line 1738
    move-result v1

    .line 1739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1740
    .line 1741
    .line 1742
    move-result v3

    .line 1743
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1744
    .line 1745
    .line 1746
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->addTosPolicy(II)V

    .line 1747
    .line 1748
    .line 1749
    goto/16 :goto_2

    .line 1750
    .line 1751
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v1

    .line 1755
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1756
    .line 1757
    .line 1758
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->stopTosMarker(Ljava/lang/String;)V

    .line 1759
    .line 1760
    .line 1761
    goto/16 :goto_2

    .line 1762
    .line 1763
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v1

    .line 1767
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1768
    .line 1769
    .line 1770
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startTosMarker(Ljava/lang/String;)V

    .line 1771
    .line 1772
    .line 1773
    goto/16 :goto_2

    .line 1774
    .line 1775
    :pswitch_57
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getL4sConnCount()I

    .line 1776
    .line 1777
    .line 1778
    move-result v0

    .line 1779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    .line 1781
    .line 1782
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    .line 1784
    .line 1785
    goto/16 :goto_2

    .line 1786
    .line 1787
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v1

    .line 1791
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1792
    .line 1793
    .line 1794
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->stopL4s(Ljava/lang/String;)I

    .line 1795
    .line 1796
    .line 1797
    move-result v0

    .line 1798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    .line 1800
    .line 1801
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    .line 1803
    .line 1804
    goto/16 :goto_2

    .line 1805
    .line 1806
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v1

    .line 1810
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1811
    .line 1812
    .line 1813
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startL4s(Ljava/lang/String;)I

    .line 1814
    .line 1815
    .line 1816
    move-result v0

    .line 1817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    .line 1819
    .line 1820
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1821
    .line 1822
    .line 1823
    goto/16 :goto_2

    .line 1824
    .line 1825
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1826
    .line 1827
    .line 1828
    move-result v1

    .line 1829
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1830
    .line 1831
    .line 1832
    move-result v3

    .line 1833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1834
    .line 1835
    .line 1836
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setQboxUid(IZ)I

    .line 1837
    .line 1838
    .line 1839
    move-result v0

    .line 1840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    .line 1845
    .line 1846
    goto/16 :goto_2

    .line 1847
    .line 1848
    :pswitch_5b
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->stopQbox()I

    .line 1849
    .line 1850
    .line 1851
    move-result v0

    .line 1852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    .line 1854
    .line 1855
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    .line 1857
    .line 1858
    goto/16 :goto_2

    .line 1859
    .line 1860
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v1

    .line 1864
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1865
    .line 1866
    .line 1867
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startQbox(Ljava/lang/String;)I

    .line 1868
    .line 1869
    .line 1870
    move-result v0

    .line 1871
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1872
    .line 1873
    .line 1874
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    .line 1876
    .line 1877
    goto/16 :goto_2

    .line 1878
    .line 1879
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1880
    .line 1881
    .line 1882
    move-result v1

    .line 1883
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v3

    .line 1887
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v4

    .line 1891
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1892
    .line 1893
    .line 1894
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    .line 1899
    .line 1900
    goto/16 :goto_2

    .line 1901
    .line 1902
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v1

    .line 1906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1907
    .line 1908
    .line 1909
    move-result v3

    .line 1910
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1911
    .line 1912
    .line 1913
    move-result v4

    .line 1914
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1915
    .line 1916
    .line 1917
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->replaceApeRule(Ljava/lang/String;II)I

    .line 1918
    .line 1919
    .line 1920
    move-result v0

    .line 1921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1922
    .line 1923
    .line 1924
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    .line 1926
    .line 1927
    goto/16 :goto_2

    .line 1928
    .line 1929
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1930
    .line 1931
    .line 1932
    move-result v1

    .line 1933
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v3

    .line 1937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1938
    .line 1939
    .line 1940
    move-result v4

    .line 1941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1942
    .line 1943
    .line 1944
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addApeRule(ZLjava/lang/String;I)I

    .line 1945
    .line 1946
    .line 1947
    move-result v0

    .line 1948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    .line 1950
    .line 1951
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1952
    .line 1953
    .line 1954
    goto/16 :goto_2

    .line 1955
    .line 1956
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1957
    .line 1958
    .line 1959
    move-result v1

    .line 1960
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1961
    .line 1962
    .line 1963
    move-result v3

    .line 1964
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1965
    .line 1966
    .line 1967
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioritizeApp(ZI)I

    .line 1968
    .line 1969
    .line 1970
    move-result v0

    .line 1971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    .line 1973
    .line 1974
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    .line 1976
    .line 1977
    goto/16 :goto_2

    .line 1978
    .line 1979
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1980
    .line 1981
    .line 1982
    move-result v1

    .line 1983
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v3

    .line 1987
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1988
    .line 1989
    .line 1990
    move-result v4

    .line 1991
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1992
    .line 1993
    .line 1994
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V

    .line 1995
    .line 1996
    .line 1997
    goto/16 :goto_2

    .line 1998
    .line 1999
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2000
    .line 2001
    .line 2002
    move-result v1

    .line 2003
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v3

    .line 2007
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2008
    .line 2009
    .line 2010
    move-result v4

    .line 2011
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2012
    .line 2013
    .line 2014
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V

    .line 2015
    .line 2016
    .line 2017
    goto/16 :goto_2

    .line 2018
    .line 2019
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2020
    .line 2021
    .line 2022
    move-result v1

    .line 2023
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2024
    .line 2025
    .line 2026
    move-result v3

    .line 2027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2028
    .line 2029
    .line 2030
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleMobileData(IZ)V

    .line 2031
    .line 2032
    .line 2033
    goto/16 :goto_2

    .line 2034
    .line 2035
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2036
    .line 2037
    .line 2038
    move-result v1

    .line 2039
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2040
    .line 2041
    .line 2042
    move-result v3

    .line 2043
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2044
    .line 2045
    .line 2046
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleWifi(IZ)V

    .line 2047
    .line 2048
    .line 2049
    goto/16 :goto_2

    .line 2050
    .line 2051
    :pswitch_65
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->firewallBuild()V

    .line 2052
    .line 2053
    .line 2054
    goto/16 :goto_2

    .line 2055
    .line 2056
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v1

    .line 2060
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2061
    .line 2062
    .line 2063
    move-result v3

    .line 2064
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2065
    .line 2066
    .line 2067
    move-result v4

    .line 2068
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2069
    .line 2070
    .line 2071
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v0

    .line 2075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    .line 2077
    .line 2078
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2079
    .line 2080
    .line 2081
    goto/16 :goto_2

    .line 2082
    .line 2083
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v1

    .line 2087
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2088
    .line 2089
    .line 2090
    move-result v3

    .line 2091
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2092
    .line 2093
    .line 2094
    move-result v4

    .line 2095
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2096
    .line 2097
    .line 2098
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->stopVideoStats(Ljava/lang/String;II)V

    .line 2099
    .line 2100
    .line 2101
    goto/16 :goto_2

    .line 2102
    .line 2103
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v1

    .line 2107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2108
    .line 2109
    .line 2110
    move-result v3

    .line 2111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2112
    .line 2113
    .line 2114
    move-result v4

    .line 2115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2116
    .line 2117
    .line 2118
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->startVideoStats(Ljava/lang/String;II)V

    .line 2119
    .line 2120
    .line 2121
    goto/16 :goto_2

    .line 2122
    .line 2123
    :pswitch_69
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->makeVideoCallChain()V

    .line 2124
    .line 2125
    .line 2126
    goto/16 :goto_2

    .line 2127
    .line 2128
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2129
    .line 2130
    .line 2131
    move-result-object v1

    .line 2132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2133
    .line 2134
    .line 2135
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->disableTlsPacketTracing(Ljava/lang/String;)I

    .line 2136
    .line 2137
    .line 2138
    move-result v0

    .line 2139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2140
    .line 2141
    .line 2142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2143
    .line 2144
    .line 2145
    goto/16 :goto_2

    .line 2146
    .line 2147
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v1

    .line 2151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2152
    .line 2153
    .line 2154
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableTlsPacketTracing(Ljava/lang/String;)I

    .line 2155
    .line 2156
    .line 2157
    move-result v0

    .line 2158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    .line 2160
    .line 2161
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    .line 2163
    .line 2164
    goto/16 :goto_2

    .line 2165
    .line 2166
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2167
    .line 2168
    .line 2169
    move-result-object v1

    .line 2170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2171
    .line 2172
    .line 2173
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->isIptablesMatchEnabled(Ljava/lang/String;)I

    .line 2174
    .line 2175
    .line 2176
    move-result v0

    .line 2177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2178
    .line 2179
    .line 2180
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2181
    .line 2182
    .line 2183
    goto/16 :goto_2

    .line 2184
    .line 2185
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2186
    .line 2187
    .line 2188
    move-result v1

    .line 2189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2190
    .line 2191
    .line 2192
    move-result v3

    .line 2193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2194
    .line 2195
    .line 2196
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V

    .line 2197
    .line 2198
    .line 2199
    goto/16 :goto_2

    .line 2200
    .line 2201
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2202
    .line 2203
    .line 2204
    move-result v1

    .line 2205
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2206
    .line 2207
    .line 2208
    move-result v3

    .line 2209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2210
    .line 2211
    .line 2212
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setDnsCacheStatus(IZ)V

    .line 2213
    .line 2214
    .line 2215
    goto/16 :goto_2

    .line 2216
    .line 2217
    :pswitch_6f
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearKnoxNwFilterProxyEntries()V

    .line 2218
    .line 2219
    .line 2220
    goto/16 :goto_2

    .line 2221
    .line 2222
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2223
    .line 2224
    .line 2225
    move-result v1

    .line 2226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2227
    .line 2228
    .line 2229
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V

    .line 2230
    .line 2231
    .line 2232
    goto/16 :goto_2

    .line 2233
    .line 2234
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2235
    .line 2236
    .line 2237
    move-result v1

    .line 2238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2239
    .line 2240
    .line 2241
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setKnoxNwFilterProxyApp(I)V

    .line 2242
    .line 2243
    .line 2244
    goto/16 :goto_2

    .line 2245
    .line 2246
    :pswitch_72
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2247
    .line 2248
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2249
    .line 2250
    .line 2251
    move-result-object v1

    .line 2252
    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 2253
    .line 2254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2255
    .line 2256
    .line 2257
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeExemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V

    .line 2258
    .line 2259
    .line 2260
    goto/16 :goto_2

    .line 2261
    .line 2262
    :pswitch_73
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2263
    .line 2264
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v1

    .line 2268
    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 2269
    .line 2270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2271
    .line 2272
    .line 2273
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->exemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V

    .line 2274
    .line 2275
    .line 2276
    goto/16 :goto_2

    .line 2277
    .line 2278
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2279
    .line 2280
    .line 2281
    move-result v1

    .line 2282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2283
    .line 2284
    .line 2285
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    .line 2286
    .line 2287
    .line 2288
    goto/16 :goto_2

    .line 2289
    .line 2290
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2291
    .line 2292
    .line 2293
    move-result v1

    .line 2294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2295
    .line 2296
    .line 2297
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->addUserToNwFilterRange(I)V

    .line 2298
    .line 2299
    .line 2300
    goto/16 :goto_2

    .line 2301
    .line 2302
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2303
    .line 2304
    .line 2305
    move-result v1

    .line 2306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2307
    .line 2308
    .line 2309
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    .line 2310
    .line 2311
    .line 2312
    move-result v0

    .line 2313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2314
    .line 2315
    .line 2316
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    .line 2318
    .line 2319
    goto/16 :goto_2

    .line 2320
    .line 2321
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2322
    .line 2323
    .line 2324
    move-result v1

    .line 2325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2326
    .line 2327
    .line 2328
    move-result v3

    .line 2329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2330
    .line 2331
    .line 2332
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    .line 2333
    .line 2334
    .line 2335
    goto/16 :goto_2

    .line 2336
    .line 2337
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2338
    .line 2339
    .line 2340
    move-result v1

    .line 2341
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2342
    .line 2343
    .line 2344
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V

    .line 2345
    .line 2346
    .line 2347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2348
    .line 2349
    .line 2350
    goto/16 :goto_2

    .line 2351
    .line 2352
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2353
    .line 2354
    .line 2355
    move-result v1

    .line 2356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2357
    .line 2358
    .line 2359
    move-result v3

    .line 2360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2361
    .line 2362
    .line 2363
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterUdpV6Entry(II)Ljava/lang/String;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v0

    .line 2367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    .line 2369
    .line 2370
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2371
    .line 2372
    .line 2373
    goto/16 :goto_2

    .line 2374
    .line 2375
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2376
    .line 2377
    .line 2378
    move-result v1

    .line 2379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2380
    .line 2381
    .line 2382
    move-result v3

    .line 2383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2384
    .line 2385
    .line 2386
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV6Entry(II)Ljava/lang/String;

    .line 2387
    .line 2388
    .line 2389
    move-result-object v0

    .line 2390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2391
    .line 2392
    .line 2393
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2394
    .line 2395
    .line 2396
    goto/16 :goto_2

    .line 2397
    .line 2398
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2399
    .line 2400
    .line 2401
    move-result v1

    .line 2402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2403
    .line 2404
    .line 2405
    move-result v3

    .line 2406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2407
    .line 2408
    .line 2409
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV4Entry(II)Ljava/lang/String;

    .line 2410
    .line 2411
    .line 2412
    move-result-object v0

    .line 2413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2414
    .line 2415
    .line 2416
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2417
    .line 2418
    .line 2419
    goto/16 :goto_2

    .line 2420
    .line 2421
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2422
    .line 2423
    .line 2424
    move-result v1

    .line 2425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2426
    .line 2427
    .line 2428
    move-result v3

    .line 2429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2430
    .line 2431
    .line 2432
    move-result v4

    .line 2433
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2434
    .line 2435
    .line 2436
    move-result v5

    .line 2437
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2438
    .line 2439
    .line 2440
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 2441
    .line 2442
    .line 2443
    goto/16 :goto_2

    .line 2444
    .line 2445
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2446
    .line 2447
    .line 2448
    move-result v1

    .line 2449
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2450
    .line 2451
    .line 2452
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableIpOptionModification(Z)V

    .line 2453
    .line 2454
    .line 2455
    goto/16 :goto_2

    .line 2456
    .line 2457
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2458
    .line 2459
    .line 2460
    move-result v1

    .line 2461
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2462
    .line 2463
    .line 2464
    move-result-object v3

    .line 2465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2466
    .line 2467
    .line 2468
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;

    .line 2469
    .line 2470
    .line 2471
    move-result-object v0

    .line 2472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2473
    .line 2474
    .line 2475
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2476
    .line 2477
    .line 2478
    goto/16 :goto_2

    .line 2479
    .line 2480
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2481
    .line 2482
    .line 2483
    move-result v1

    .line 2484
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2485
    .line 2486
    .line 2487
    move-result-object v3

    .line 2488
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2489
    .line 2490
    .line 2491
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->updateDomainFilterCache(I[Ljava/lang/String;)V

    .line 2492
    .line 2493
    .line 2494
    goto/16 :goto_2

    .line 2495
    .line 2496
    :pswitch_80
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterDomainFilterEventListener()V

    .line 2497
    .line 2498
    .line 2499
    goto/16 :goto_2

    .line 2500
    .line 2501
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v1

    .line 2505
    if-nez v1, :cond_2

    .line 2506
    .line 2507
    goto :goto_0

    .line 2508
    :cond_2
    const-string/jumbo v3, "com.android.internal.net.IDomainFilterEventListener"

    .line 2509
    .line 2510
    .line 2511
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 2512
    .line 2513
    .line 2514
    move-result-object v3

    .line 2515
    if-eqz v3, :cond_3

    .line 2516
    .line 2517
    instance-of v4, v3, Lcom/android/internal/net/IDomainFilterEventListener;

    .line 2518
    .line 2519
    if-eqz v4, :cond_3

    .line 2520
    .line 2521
    check-cast v3, Lcom/android/internal/net/IDomainFilterEventListener;

    .line 2522
    .line 2523
    goto :goto_0

    .line 2524
    :cond_3
    new-instance v3, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;

    .line 2525
    .line 2526
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2527
    .line 2528
    .line 2529
    iput-object v1, v3, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2530
    .line 2531
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2532
    .line 2533
    .line 2534
    invoke-interface {p0, v3}, Lcom/android/internal/net/IOemNetd;->registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V

    .line 2535
    .line 2536
    .line 2537
    goto/16 :goto_2

    .line 2538
    .line 2539
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2540
    .line 2541
    .line 2542
    move-result v1

    .line 2543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2544
    .line 2545
    .line 2546
    move-result v3

    .line 2547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2548
    .line 2549
    .line 2550
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockUserWideDnsQuery(ZI)V

    .line 2551
    .line 2552
    .line 2553
    goto/16 :goto_2

    .line 2554
    .line 2555
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2556
    .line 2557
    .line 2558
    move-result v1

    .line 2559
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2560
    .line 2561
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2562
    .line 2563
    .line 2564
    move-result-object v3

    .line 2565
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2566
    .line 2567
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2568
    .line 2569
    .line 2570
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 2571
    .line 2572
    .line 2573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2574
    .line 2575
    .line 2576
    goto/16 :goto_2

    .line 2577
    .line 2578
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2579
    .line 2580
    .line 2581
    move-result v1

    .line 2582
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2583
    .line 2584
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2585
    .line 2586
    .line 2587
    move-result-object v3

    .line 2588
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2589
    .line 2590
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2591
    .line 2592
    .line 2593
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 2594
    .line 2595
    .line 2596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    .line 2598
    .line 2599
    goto/16 :goto_2

    .line 2600
    .line 2601
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2602
    .line 2603
    .line 2604
    move-result v1

    .line 2605
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2606
    .line 2607
    .line 2608
    move-result v3

    .line 2609
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2610
    .line 2611
    .line 2612
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setKnoxVpn(IZ)V

    .line 2613
    .line 2614
    .line 2615
    goto/16 :goto_2

    .line 2616
    .line 2617
    :pswitch_86
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterNetdTetherEventListener()V

    .line 2618
    .line 2619
    .line 2620
    goto/16 :goto_2

    .line 2621
    .line 2622
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v1

    .line 2626
    if-nez v1, :cond_4

    .line 2627
    .line 2628
    goto :goto_1

    .line 2629
    :cond_4
    const-string/jumbo v3, "com.android.internal.net.INetdTetherEventListener"

    .line 2630
    .line 2631
    .line 2632
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 2633
    .line 2634
    .line 2635
    move-result-object v3

    .line 2636
    if-eqz v3, :cond_5

    .line 2637
    .line 2638
    instance-of v4, v3, Lcom/android/internal/net/INetdTetherEventListener;

    .line 2639
    .line 2640
    if-eqz v4, :cond_5

    .line 2641
    .line 2642
    check-cast v3, Lcom/android/internal/net/INetdTetherEventListener;

    .line 2643
    .line 2644
    goto :goto_1

    .line 2645
    :cond_5
    new-instance v3, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;

    .line 2646
    .line 2647
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2648
    .line 2649
    .line 2650
    iput-object v1, v3, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2651
    .line 2652
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2653
    .line 2654
    .line 2655
    invoke-interface {p0, v3}, Lcom/android/internal/net/IOemNetd;->registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V

    .line 2656
    .line 2657
    .line 2658
    goto/16 :goto_2

    .line 2659
    .line 2660
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2661
    .line 2662
    .line 2663
    move-result v1

    .line 2664
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2665
    .line 2666
    .line 2667
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableKnoxVpnFlagForTether(Z)V

    .line 2668
    .line 2669
    .line 2670
    goto/16 :goto_2

    .line 2671
    .line 2672
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2673
    .line 2674
    .line 2675
    move-result v1

    .line 2676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v3

    .line 2680
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2681
    .line 2682
    .line 2683
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 2684
    .line 2685
    .line 2686
    move-result-object v0

    .line 2687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    .line 2689
    .line 2690
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2691
    .line 2692
    .line 2693
    goto/16 :goto_2

    .line 2694
    .line 2695
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2696
    .line 2697
    .line 2698
    move-result v1

    .line 2699
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2700
    .line 2701
    .line 2702
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->clearEbpfMap(I)V

    .line 2703
    .line 2704
    .line 2705
    goto/16 :goto_2

    .line 2706
    .line 2707
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2708
    .line 2709
    .line 2710
    move-result-object v1

    .line 2711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2712
    .line 2713
    .line 2714
    move-result v3

    .line 2715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2716
    .line 2717
    .line 2718
    move-result v4

    .line 2719
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2720
    .line 2721
    .line 2722
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateInputFilterAppWideRules([III)V

    .line 2723
    .line 2724
    .line 2725
    goto/16 :goto_2

    .line 2726
    .line 2727
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2728
    .line 2729
    .line 2730
    move-result-object v1

    .line 2731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2732
    .line 2733
    .line 2734
    move-result v3

    .line 2735
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2736
    .line 2737
    .line 2738
    move-result v4

    .line 2739
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2740
    .line 2741
    .line 2742
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateInputFilterUserWideRules([III)V

    .line 2743
    .line 2744
    .line 2745
    goto/16 :goto_2

    .line 2746
    .line 2747
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2748
    .line 2749
    .line 2750
    move-result v1

    .line 2751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2752
    .line 2753
    .line 2754
    move-result v3

    .line 2755
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2756
    .line 2757
    .line 2758
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterExemptRules(II)V

    .line 2759
    .line 2760
    .line 2761
    goto/16 :goto_2

    .line 2762
    .line 2763
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2764
    .line 2765
    .line 2766
    move-result v1

    .line 2767
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2768
    .line 2769
    .line 2770
    move-result v3

    .line 2771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2772
    .line 2773
    .line 2774
    move-result v4

    .line 2775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2776
    .line 2777
    .line 2778
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setNetworkInfo(IZI)V

    .line 2779
    .line 2780
    .line 2781
    goto/16 :goto_2

    .line 2782
    .line 2783
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2784
    .line 2785
    .line 2786
    move-result-object v1

    .line 2787
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2788
    .line 2789
    .line 2790
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->knoxVpnInsertUidForDnsAuthorization([I)V

    .line 2791
    .line 2792
    .line 2793
    goto/16 :goto_2

    .line 2794
    .line 2795
    :pswitch_90
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveUidFromDnsAuthorization()V

    .line 2796
    .line 2797
    .line 2798
    goto/16 :goto_2

    .line 2799
    .line 2800
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2801
    .line 2802
    .line 2803
    move-result v1

    .line 2804
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2805
    .line 2806
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2807
    .line 2808
    .line 2809
    move-result-object v3

    .line 2810
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2811
    .line 2812
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2813
    .line 2814
    .line 2815
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    .line 2816
    .line 2817
    .line 2818
    goto/16 :goto_2

    .line 2819
    .line 2820
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2821
    .line 2822
    .line 2823
    move-result v1

    .line 2824
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2825
    .line 2826
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2827
    .line 2828
    .line 2829
    move-result-object v3

    .line 2830
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2831
    .line 2832
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2833
    .line 2834
    .line 2835
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    .line 2836
    .line 2837
    .line 2838
    goto :goto_2

    .line 2839
    :pswitch_93
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnDestroyBlockedKnoxNetwork()V

    .line 2840
    .line 2841
    .line 2842
    goto :goto_2

    .line 2843
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2844
    .line 2845
    .line 2846
    move-result v1

    .line 2847
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2848
    .line 2849
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2850
    .line 2851
    .line 2852
    move-result-object v3

    .line 2853
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2854
    .line 2855
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2856
    .line 2857
    .line 2858
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2859
    .line 2860
    .line 2861
    goto :goto_2

    .line 2862
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2863
    .line 2864
    .line 2865
    move-result v1

    .line 2866
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2867
    .line 2868
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2869
    .line 2870
    .line 2871
    move-result-object v3

    .line 2872
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2873
    .line 2874
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2875
    .line 2876
    .line 2877
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2878
    .line 2879
    .line 2880
    goto :goto_2

    .line 2881
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2882
    .line 2883
    .line 2884
    move-result v1

    .line 2885
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2886
    .line 2887
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2888
    .line 2889
    .line 2890
    move-result-object v3

    .line 2891
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2892
    .line 2893
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2894
    .line 2895
    .line 2896
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2897
    .line 2898
    .line 2899
    goto :goto_2

    .line 2900
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2901
    .line 2902
    .line 2903
    move-result v1

    .line 2904
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2905
    .line 2906
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2907
    .line 2908
    .line 2909
    move-result-object v3

    .line 2910
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2911
    .line 2912
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2913
    .line 2914
    .line 2915
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2916
    .line 2917
    .line 2918
    goto :goto_2

    .line 2919
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2920
    .line 2921
    .line 2922
    move-result-object v1

    .line 2923
    invoke-static {v1}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    .line 2924
    .line 2925
    .line 2926
    move-result-object v1

    .line 2927
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2928
    .line 2929
    .line 2930
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V

    .line 2931
    .line 2932
    .line 2933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    .line 2935
    .line 2936
    goto :goto_2

    .line 2937
    :pswitch_99
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->isAlive()Z

    .line 2938
    .line 2939
    .line 2940
    move-result v0

    .line 2941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2942
    .line 2943
    .line 2944
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2945
    .line 2946
    .line 2947
    :goto_2
    return v7

    .line 2948
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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
