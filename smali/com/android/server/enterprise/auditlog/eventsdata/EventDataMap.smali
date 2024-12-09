.class public abstract Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final EVENT_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/16 v0, 0x74

    .line 2
    .line 3
    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

    .line 11
    .line 12
    const-string v4, "CertificatePolicy"

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-static {v5, v2, v3, v4}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"

    .line 26
    .line 27
    invoke-static {v5, v2, v3, v4}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    aput-object v2, v0, v5

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v7, 0x5

    .line 39
    const/4 v8, 0x0

    .line 40
    const-string v9, "Enabling Wifi"

    .line 41
    .line 42
    const-string v10, "WifiPolicy"

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v11, 0x0

    .line 46
    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    aput-object v3, v0, v2

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v9, "Disabling Wifi"

    .line 62
    .line 63
    const-string v10, "WifiPolicy"

    .line 64
    .line 65
    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    aput-object v3, v0, v2

    .line 74
    .line 75
    const/4 v2, 0x5

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const/4 v8, 0x2

    .line 81
    const-string v9, "Package %s has been activated as admin."

    .line 82
    .line 83
    const-string v10, "DevicePolicyManager"

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v4, 0x4

    .line 95
    aput-object v3, v0, v4

    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v9, "Package %s has been removed as admin."

    .line 102
    .line 103
    const-string v10, "DevicePolicyManager"

    .line 104
    .line 105
    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    aput-object v3, v0, v2

    .line 114
    .line 115
    const/4 v2, 0x6

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const-string v4, "Admin %d has added %s to app signature blocklist."

    .line 121
    .line 122
    const-string v6, "ApplicationPolicy"

    .line 123
    .line 124
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    aput-object v3, v0, v2

    .line 129
    .line 130
    const/4 v2, 0x7

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const-string v4, "Admin %d has removed %s from app signature blocklist."

    .line 136
    .line 137
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    aput-object v3, v0, v2

    .line 142
    .line 143
    const/16 v2, 0x8

    .line 144
    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    const-string v4, "Admin %d has added %s to app signature allowlist."

    .line 150
    .line 151
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    aput-object v3, v0, v2

    .line 156
    .line 157
    const/16 v2, 0x9

    .line 158
    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    const-string v4, "Admin %d has removed %s from app signature allowlist."

    .line 164
    .line 165
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    aput-object v3, v0, v2

    .line 170
    .line 171
    const/16 v2, 0xa

    .line 172
    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string v4, "Admin %d has allowed to install application %s"

    .line 178
    .line 179
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    aput-object v3, v0, v2

    .line 184
    .line 185
    const/16 v2, 0xb

    .line 186
    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    const-string v4, "Admin %d has disallowed to install application %s"

    .line 192
    .line 193
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    aput-object v3, v0, v2

    .line 198
    .line 199
    const/16 v2, 0xc

    .line 200
    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    const/4 v8, 0x5

    .line 206
    const/4 v9, 0x0

    .line 207
    const-string v10, "Application %s installation is not allowed by admin %s %s blocklist."

    .line 208
    .line 209
    const-string v11, "ApplicationPolicy"

    .line 210
    .line 211
    const/4 v7, 0x0

    .line 212
    const/4 v12, 0x0

    .line 213
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    aput-object v3, v0, v2

    .line 222
    .line 223
    const/16 v2, 0xd

    .line 224
    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    const-string v10, "Application %s installation is allowed by admin %s %s allowlist."

    .line 230
    .line 231
    const-string v11, "ApplicationPolicy"

    .line 232
    .line 233
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    aput-object v3, v0, v2

    .line 242
    .line 243
    const/16 v2, 0x35

    .line 244
    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    const/4 v9, 0x1

    .line 250
    const-string v10, "Application %s installation is not allowed because it is signed by untrusted CA"

    .line 251
    .line 252
    const-string v11, "ApplicationPolicy"

    .line 253
    .line 254
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const/16 v4, 0xe

    .line 263
    .line 264
    aput-object v3, v0, v4

    .line 265
    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    const/4 v9, 0x0

    .line 271
    const-string v10, "Disconnecting from VPN network to server address %s from type %s succeeded"

    .line 272
    .line 273
    const-string v11, "Vpn"

    .line 274
    .line 275
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    const/16 v4, 0xf

    .line 284
    .line 285
    aput-object v3, v0, v4

    .line 286
    .line 287
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    const-string v10, "Connecting to VPN network to server address %s from type %s succeeded"

    .line 292
    .line 293
    const-string v11, "Vpn"

    .line 294
    .line 295
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    const/16 v4, 0x10

    .line 304
    .line 305
    aput-object v3, v0, v4

    .line 306
    .line 307
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const-string v10, "Connecting to VPN network to server address %s from type %s failed"

    .line 312
    .line 313
    const-string v11, "Vpn"

    .line 314
    .line 315
    const/4 v12, 0x1

    .line 316
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    const/16 v4, 0x11

    .line 325
    .line 326
    aput-object v3, v0, v4

    .line 327
    .line 328
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    const/4 v8, 0x3

    .line 333
    const-string v10, "Bind to vpn failed. Could not find package %s"

    .line 334
    .line 335
    const-string v11, "KnoxVpnEngineService"

    .line 336
    .line 337
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    const/16 v4, 0x12

    .line 346
    .line 347
    aput-object v3, v0, v4

    .line 348
    .line 349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    const/4 v8, 0x5

    .line 354
    const-string v10, "Bind to vpn vendor service %s successfully"

    .line 355
    .line 356
    const-string v11, "KnoxVpnEngineService"

    .line 357
    .line 358
    const/4 v12, 0x0

    .line 359
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    const/16 v4, 0x13

    .line 368
    .line 369
    aput-object v3, v0, v4

    .line 370
    .line 371
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    const/4 v8, 0x3

    .line 376
    const-string v10, "Bind to vpn vendor service %s failed"

    .line 377
    .line 378
    const-string v11, "KnoxVpnEngineService"

    .line 379
    .line 380
    const/4 v12, 0x1

    .line 381
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    const/16 v4, 0x14

    .line 390
    .line 391
    aput-object v3, v0, v4

    .line 392
    .line 393
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    const-string v10, "Error occurred while validating profile information for vendor %s"

    .line 398
    .line 399
    const-string v11, "KnoxVpnEngineService"

    .line 400
    .line 401
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    const/16 v4, 0x15

    .line 410
    .line 411
    aput-object v3, v0, v4

    .line 412
    .line 413
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    const/4 v8, 0x5

    .line 418
    const-string v10, "Application %s installation is not allowed by admin %s installer blocklist"

    .line 419
    .line 420
    const-string v11, "ApplicationPolicy"

    .line 421
    .line 422
    const/4 v12, 0x0

    .line 423
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    const/16 v4, 0x16

    .line 432
    .line 433
    aput-object v3, v0, v4

    .line 434
    .line 435
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    const-string v10, "Application %s installation is allowed by admin %s installer allowlist"

    .line 440
    .line 441
    const-string v11, "ApplicationPolicy"

    .line 442
    .line 443
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    const/16 v4, 0x17

    .line 452
    .line 453
    aput-object v3, v0, v4

    .line 454
    .line 455
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    const-string v10, "User Interaction: enabling bluetooth succeeded"

    .line 460
    .line 461
    const-string v11, "BluetoothEnabler"

    .line 462
    .line 463
    const/4 v7, 0x1

    .line 464
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    const/16 v4, 0x18

    .line 473
    .line 474
    aput-object v3, v0, v4

    .line 475
    .line 476
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    const-string v10, "User Interaction: disabling bluetooth succeeded"

    .line 481
    .line 482
    const-string v11, "BluetoothEnabler"

    .line 483
    .line 484
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    const/16 v4, 0x19

    .line 493
    .line 494
    aput-object v3, v0, v4

    .line 495
    .line 496
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    const-string v10, "Setting bluetooth device as discoverable succeeded"

    .line 501
    .line 502
    const-string v11, "AdapterProperties"

    .line 503
    .line 504
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    const/16 v4, 0x1a

    .line 513
    .line 514
    aput-object v3, v0, v4

    .line 515
    .line 516
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    const-string v10, "User Interaction: Discoverable mode status has successfully changed to discoverable"

    .line 521
    .line 522
    const-string v11, "BluetoothSettings"

    .line 523
    .line 524
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    const/16 v4, 0x1b

    .line 533
    .line 534
    aput-object v3, v0, v4

    .line 535
    .line 536
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    const-string v10, "User Interaction: Discoverable mode status has successfully changed to not discoverable"

    .line 541
    .line 542
    const-string v11, "BluetoothSettings"

    .line 543
    .line 544
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    const/16 v4, 0x1c

    .line 553
    .line 554
    aput-object v3, v0, v4

    .line 555
    .line 556
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    const-string v4, "Admin %d has enabled Bluetooth discoverable state."

    .line 561
    .line 562
    const-string v7, "BluetoothPolicy"

    .line 563
    .line 564
    invoke-static {v5, v3, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    const/16 v4, 0x1d

    .line 569
    .line 570
    aput-object v3, v0, v4

    .line 571
    .line 572
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    const-string v4, "Admin %d has disabled Bluetooth discoverable state."

    .line 577
    .line 578
    invoke-static {v5, v3, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    const/16 v4, 0x1e

    .line 583
    .line 584
    aput-object v3, v0, v4

    .line 585
    .line 586
    const/16 v3, 0x46

    .line 587
    .line 588
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object v7

    .line 592
    const/4 v9, 0x5

    .line 593
    const/4 v10, 0x0

    .line 594
    const-string v11, "User Interaction: Discoverable mode status has failed to change to discoverable. Reason: MDM policy"

    .line 595
    .line 596
    const-string v12, "BluetoothSettings"

    .line 597
    .line 598
    const/4 v8, 0x1

    .line 599
    const/4 v13, 0x1

    .line 600
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 601
    .line 602
    .line 603
    move-result-object v8

    .line 604
    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    const/16 v8, 0x1f

    .line 609
    .line 610
    aput-object v7, v0, v8

    .line 611
    .line 612
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    const/4 v10, 0x5

    .line 617
    const/4 v11, 0x0

    .line 618
    const-string v12, "Enabling Cellular Data"

    .line 619
    .line 620
    const-string v13, "PhoneInterfaceManager"

    .line 621
    .line 622
    const/4 v9, 0x1

    .line 623
    const/4 v14, 0x0

    .line 624
    invoke-static/range {v9 .. v14}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    invoke-static {v4, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 629
    .line 630
    .line 631
    move-result-object v4

    .line 632
    const/16 v7, 0x20

    .line 633
    .line 634
    aput-object v4, v0, v7

    .line 635
    .line 636
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    const/4 v9, 0x5

    .line 641
    const/4 v10, 0x0

    .line 642
    const-string v11, "Disabling Cellular Data"

    .line 643
    .line 644
    const-string v12, "PhoneInterfaceManager"

    .line 645
    .line 646
    const/4 v8, 0x1

    .line 647
    const/4 v13, 0x0

    .line 648
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 649
    .line 650
    .line 651
    move-result-object v8

    .line 652
    invoke-static {v4, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    const/16 v8, 0x21

    .line 657
    .line 658
    aput-object v4, v0, v8

    .line 659
    .line 660
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 661
    .line 662
    .line 663
    move-result-object v4

    .line 664
    const-string v7, "Admin %d has added %s : %s to camera allowlist."

    .line 665
    .line 666
    invoke-static {v5, v4, v7, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    const/16 v7, 0x22

    .line 671
    .line 672
    aput-object v4, v0, v7

    .line 673
    .line 674
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    const-string v8, "Admin %d has removed %s : %s from camera allowlist."

    .line 679
    .line 680
    invoke-static {v5, v4, v8, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    const/16 v6, 0x23

    .line 685
    .line 686
    aput-object v4, v0, v6

    .line 687
    .line 688
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    const-string v6, "Admin %d has allowed camera."

    .line 693
    .line 694
    const-string v7, "RestrictionPolicy"

    .line 695
    .line 696
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    const/16 v6, 0x24

    .line 701
    .line 702
    aput-object v4, v0, v6

    .line 703
    .line 704
    const/16 v4, 0x23

    .line 705
    .line 706
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 707
    .line 708
    .line 709
    move-result-object v4

    .line 710
    const-string v6, "Admin %d has disallowed camera."

    .line 711
    .line 712
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    const/16 v6, 0x25

    .line 717
    .line 718
    aput-object v4, v0, v6

    .line 719
    .line 720
    const/16 v4, 0x24

    .line 721
    .line 722
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    const-string v11, "Microphone enabled."

    .line 727
    .line 728
    const-string v12, "AudioPolicyManager"

    .line 729
    .line 730
    const/4 v8, 0x1

    .line 731
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 732
    .line 733
    .line 734
    move-result-object v6

    .line 735
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 736
    .line 737
    .line 738
    move-result-object v4

    .line 739
    const/16 v6, 0x26

    .line 740
    .line 741
    aput-object v4, v0, v6

    .line 742
    .line 743
    const/16 v4, 0x25

    .line 744
    .line 745
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    const-string v11, "Microphone disabled."

    .line 750
    .line 751
    const-string v12, "AudioPolicyManager"

    .line 752
    .line 753
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 754
    .line 755
    .line 756
    move-result-object v6

    .line 757
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 758
    .line 759
    .line 760
    move-result-object v4

    .line 761
    const/16 v6, 0x27

    .line 762
    .line 763
    aput-object v4, v0, v6

    .line 764
    .line 765
    const/16 v4, 0x26

    .line 766
    .line 767
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    const-string v6, "Admin %d has allowed microphone."

    .line 772
    .line 773
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    const/16 v6, 0x28

    .line 778
    .line 779
    aput-object v4, v0, v6

    .line 780
    .line 781
    const/16 v4, 0x27

    .line 782
    .line 783
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    const-string v6, "Admin %d has disallowed microphone."

    .line 788
    .line 789
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 790
    .line 791
    .line 792
    move-result-object v4

    .line 793
    const/16 v6, 0x29

    .line 794
    .line 795
    aput-object v4, v0, v6

    .line 796
    .line 797
    const/16 v4, 0x28

    .line 798
    .line 799
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 800
    .line 801
    .line 802
    move-result-object v4

    .line 803
    const-string v6, "Admin %d has started GPS"

    .line 804
    .line 805
    const-string v8, "LocationPolicy"

    .line 806
    .line 807
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 808
    .line 809
    .line 810
    move-result-object v4

    .line 811
    const/16 v6, 0x2a

    .line 812
    .line 813
    aput-object v4, v0, v6

    .line 814
    .line 815
    const/16 v4, 0x29

    .line 816
    .line 817
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    const-string v6, "Admin %d has stopped GPS"

    .line 822
    .line 823
    const-string v8, "LocationPolicy"

    .line 824
    .line 825
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    const/16 v6, 0x2b

    .line 830
    .line 831
    aput-object v4, v0, v6

    .line 832
    .line 833
    const/16 v4, 0x2a

    .line 834
    .line 835
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 836
    .line 837
    .line 838
    move-result-object v4

    .line 839
    const/4 v10, 0x1

    .line 840
    const-string v11, "Failed to wipe user data (factory reset). Reason: %s"

    .line 841
    .line 842
    const-string v12, "RecoverySystem"

    .line 843
    .line 844
    const/4 v8, 0x1

    .line 845
    const/4 v13, 0x1

    .line 846
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 847
    .line 848
    .line 849
    move-result-object v6

    .line 850
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 851
    .line 852
    .line 853
    move-result-object v4

    .line 854
    const/16 v6, 0x2c

    .line 855
    .line 856
    aput-object v4, v0, v6

    .line 857
    .line 858
    const/16 v4, 0x2b

    .line 859
    .line 860
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    new-instance v6, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 865
    .line 866
    new-instance v9, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    .line 867
    .line 868
    const/4 v8, 0x0

    .line 869
    const-string v10, "Wiping data (factory reset) is not allowed for this user."

    .line 870
    .line 871
    invoke-direct {v9, v10, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;-><init>(Ljava/lang/String;I)V

    .line 872
    .line 873
    .line 874
    new-instance v10, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    .line 875
    .line 876
    const/4 v8, 0x0

    .line 877
    const/4 v11, 0x1

    .line 878
    invoke-direct {v10, v8, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;-><init>(Ljava/lang/String;I)V

    .line 879
    .line 880
    .line 881
    new-instance v12, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    .line 882
    .line 883
    invoke-direct {v12, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;-><init>(I)V

    .line 884
    .line 885
    .line 886
    new-instance v13, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    .line 887
    .line 888
    const/4 v8, 0x5

    .line 889
    invoke-direct {v13, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;-><init>(I)V

    .line 890
    .line 891
    .line 892
    new-instance v14, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    .line 893
    .line 894
    invoke-direct {v14, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;-><init>(I)V

    .line 895
    .line 896
    .line 897
    new-instance v15, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    .line 898
    .line 899
    invoke-direct {v15, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;-><init>(I)V

    .line 900
    .line 901
    .line 902
    move-object v8, v6

    .line 903
    move-object v11, v12

    .line 904
    move-object v12, v13

    .line 905
    move-object v13, v14

    .line 906
    move-object v14, v15

    .line 907
    invoke-direct/range {v8 .. v14}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;-><init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;)V

    .line 908
    .line 909
    .line 910
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 911
    .line 912
    .line 913
    move-result-object v4

    .line 914
    const/16 v6, 0x2d

    .line 915
    .line 916
    aput-object v4, v0, v6

    .line 917
    .line 918
    const/16 v4, 0x2c

    .line 919
    .line 920
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 921
    .line 922
    .line 923
    move-result-object v4

    .line 924
    const-string v6, "Admin %d has requested full wipe of device."

    .line 925
    .line 926
    const-string v8, "SecurityPolicy"

    .line 927
    .line 928
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    const/16 v6, 0x2e

    .line 933
    .line 934
    aput-object v4, v0, v6

    .line 935
    .line 936
    const/16 v4, 0x2d

    .line 937
    .line 938
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    const-string v6, "Admin %d has requested wipe of device external memory."

    .line 943
    .line 944
    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->buildMessage(Ljava/lang/String;)Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    .line 945
    .line 946
    .line 947
    move-result-object v9

    .line 948
    new-instance v6, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 949
    .line 950
    new-instance v10, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    .line 951
    .line 952
    const-string v8, "SecurityPolicy"

    .line 953
    .line 954
    const/4 v11, 0x0

    .line 955
    invoke-direct {v10, v8, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;-><init>(Ljava/lang/String;I)V

    .line 956
    .line 957
    .line 958
    new-instance v12, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    .line 959
    .line 960
    const/4 v8, 0x2

    .line 961
    invoke-direct {v12, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;-><init>(I)V

    .line 962
    .line 963
    .line 964
    new-instance v13, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    .line 965
    .line 966
    const/4 v8, 0x5

    .line 967
    invoke-direct {v13, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;-><init>(I)V

    .line 968
    .line 969
    .line 970
    new-instance v14, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    .line 971
    .line 972
    const/4 v8, 0x1

    .line 973
    invoke-direct {v14, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;-><init>(I)V

    .line 974
    .line 975
    .line 976
    new-instance v15, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    .line 977
    .line 978
    invoke-direct {v15, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;-><init>(I)V

    .line 979
    .line 980
    .line 981
    move-object v8, v6

    .line 982
    move-object v11, v12

    .line 983
    move-object v12, v13

    .line 984
    move-object v13, v14

    .line 985
    move-object v14, v15

    .line 986
    invoke-direct/range {v8 .. v14}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;-><init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;)V

    .line 987
    .line 988
    .line 989
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 990
    .line 991
    .line 992
    move-result-object v4

    .line 993
    const/16 v6, 0x2f

    .line 994
    .line 995
    aput-object v4, v0, v6

    .line 996
    .line 997
    const/16 v4, 0x2e

    .line 998
    .line 999
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v4

    .line 1003
    const-string v6, "Admin %d has locked Workspace."

    .line 1004
    .line 1005
    const-string v8, "KnoxMUMContainerPolicy"

    .line 1006
    .line 1007
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v4

    .line 1011
    const/16 v6, 0x30

    .line 1012
    .line 1013
    aput-object v4, v0, v6

    .line 1014
    .line 1015
    const/16 v4, 0x2f

    .line 1016
    .line 1017
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v4

    .line 1021
    const-string v6, "Admin %d has unlocked Workspace."

    .line 1022
    .line 1023
    const-string v8, "KnoxMUMContainerPolicy"

    .line 1024
    .line 1025
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v4

    .line 1029
    const/16 v6, 0x31

    .line 1030
    .line 1031
    aput-object v4, v0, v6

    .line 1032
    .line 1033
    const/16 v4, 0x30

    .line 1034
    .line 1035
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v4

    .line 1039
    const-string v6, "Admin %d has successfully locked Workspace"

    .line 1040
    .line 1041
    const-string v8, "PasswordPolicy"

    .line 1042
    .line 1043
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v4

    .line 1047
    const/16 v6, 0x32

    .line 1048
    .line 1049
    aput-object v4, v0, v6

    .line 1050
    .line 1051
    const/16 v4, 0x31

    .line 1052
    .line 1053
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v4

    .line 1057
    const-string v6, "Admin %d has successfully unlocked Workspace"

    .line 1058
    .line 1059
    const-string v8, "PasswordPolicy"

    .line 1060
    .line 1061
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v4

    .line 1065
    const/16 v6, 0x33

    .line 1066
    .line 1067
    aput-object v4, v0, v6

    .line 1068
    .line 1069
    const/16 v4, 0x32

    .line 1070
    .line 1071
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v4

    .line 1075
    const-string v6, "Admin %d has changed lock screen state to enabled"

    .line 1076
    .line 1077
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v4

    .line 1081
    const/16 v6, 0x34

    .line 1082
    .line 1083
    aput-object v4, v0, v6

    .line 1084
    .line 1085
    const/16 v4, 0x33

    .line 1086
    .line 1087
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v4

    .line 1091
    const-string v6, "Admin %d has changed lock screen state to disabled"

    .line 1092
    .line 1093
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v4

    .line 1097
    aput-object v4, v0, v2

    .line 1098
    .line 1099
    const/16 v2, 0x34

    .line 1100
    .line 1101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    const/4 v9, 0x5

    .line 1106
    const/4 v10, 0x1

    .line 1107
    const-string v11, "Admin %s has changed screen lock time out to %d"

    .line 1108
    .line 1109
    const-string v12, "DevicePolicyManager"

    .line 1110
    .line 1111
    const/4 v8, 0x2

    .line 1112
    const/4 v13, 0x0

    .line 1113
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v4

    .line 1117
    invoke-static {v2, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v2

    .line 1121
    const/16 v4, 0x36

    .line 1122
    .line 1123
    aput-object v2, v0, v4

    .line 1124
    .line 1125
    const/16 v2, 0x36

    .line 1126
    .line 1127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v2

    .line 1131
    const/4 v9, 0x3

    .line 1132
    const/4 v10, 0x0

    .line 1133
    const-string v11, "Application %s (action %s) failed because of signature verification failure"

    .line 1134
    .line 1135
    const-string v12, "PackageManagerService"

    .line 1136
    .line 1137
    const/4 v8, 0x0

    .line 1138
    const/4 v13, 0x1

    .line 1139
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v4

    .line 1143
    invoke-static {v2, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v2

    .line 1147
    const/16 v4, 0x37

    .line 1148
    .line 1149
    aput-object v2, v0, v4

    .line 1150
    .line 1151
    const/16 v2, 0x37

    .line 1152
    .line 1153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v2

    .line 1157
    const-string v4, "Admin %d has enabled Wifi Tethering setting."

    .line 1158
    .line 1159
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2

    .line 1163
    const/16 v4, 0x38

    .line 1164
    .line 1165
    aput-object v2, v0, v4

    .line 1166
    .line 1167
    const/16 v2, 0x38

    .line 1168
    .line 1169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    const-string v4, "Admin %d has disabled Wifi Tethering setting."

    .line 1174
    .line 1175
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v2

    .line 1179
    const/16 v4, 0x39

    .line 1180
    .line 1181
    aput-object v2, v0, v4

    .line 1182
    .line 1183
    const/16 v2, 0x39

    .line 1184
    .line 1185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v2

    .line 1189
    const-string v4, "Admin %d has enabled Wifi Direct."

    .line 1190
    .line 1191
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    const/16 v4, 0x3a

    .line 1196
    .line 1197
    aput-object v2, v0, v4

    .line 1198
    .line 1199
    const/16 v2, 0x3a

    .line 1200
    .line 1201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    const-string v4, "Admin %d has disabled Wifi Direct."

    .line 1206
    .line 1207
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v2

    .line 1211
    const/16 v4, 0x3b

    .line 1212
    .line 1213
    aput-object v2, v0, v4

    .line 1214
    .line 1215
    const/16 v2, 0x3b

    .line 1216
    .line 1217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v2

    .line 1221
    const-string v4, "Admin %d has set a new wifi profile: SSID: %s Security type: %s %s %s"

    .line 1222
    .line 1223
    const-string v6, "WifiPolicy"

    .line 1224
    .line 1225
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    const/16 v4, 0x3c

    .line 1230
    .line 1231
    aput-object v2, v0, v4

    .line 1232
    .line 1233
    const/16 v2, 0x3c

    .line 1234
    .line 1235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v2

    .line 1239
    const-string v4, "Admin %d has allowed access to Wifi SSID: %s"

    .line 1240
    .line 1241
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v2

    .line 1245
    const/16 v4, 0x3d

    .line 1246
    .line 1247
    aput-object v2, v0, v4

    .line 1248
    .line 1249
    const/16 v2, 0x3d

    .line 1250
    .line 1251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    const-string v4, "Admin %d has changed Wifi allowed to %s"

    .line 1256
    .line 1257
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    const/16 v4, 0x3e

    .line 1262
    .line 1263
    aput-object v2, v0, v4

    .line 1264
    .line 1265
    const/16 v2, 0x44

    .line 1266
    .line 1267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    const-string v4, "Admin %d has changed Wifi SSID restriction to %s"

    .line 1272
    .line 1273
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v2

    .line 1277
    const/16 v4, 0x3f

    .line 1278
    .line 1279
    aput-object v2, v0, v4

    .line 1280
    .line 1281
    const/16 v2, 0x45

    .line 1282
    .line 1283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v2

    .line 1287
    const-string v4, "Admin %d has changed Wifi state change allowed to %s"

    .line 1288
    .line 1289
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v2

    .line 1293
    const/16 v4, 0x40

    .line 1294
    .line 1295
    aput-object v2, v0, v4

    .line 1296
    .line 1297
    const/16 v2, 0x3e

    .line 1298
    .line 1299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v2

    .line 1303
    const-string v4, "Admin %d has added SSID %s to the restriction blocklist."

    .line 1304
    .line 1305
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v2

    .line 1309
    const/16 v4, 0x41

    .line 1310
    .line 1311
    aput-object v2, v0, v4

    .line 1312
    .line 1313
    const/16 v2, 0x3f

    .line 1314
    .line 1315
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v2

    .line 1319
    const-string v4, "Admin %d has removed SSID %s from the restriction blocklist."

    .line 1320
    .line 1321
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v2

    .line 1325
    const/16 v4, 0x42

    .line 1326
    .line 1327
    aput-object v2, v0, v4

    .line 1328
    .line 1329
    const/16 v2, 0x40

    .line 1330
    .line 1331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v2

    .line 1335
    const-string v4, "Admin %d has removed all SSIDs from the restriction blocklist."

    .line 1336
    .line 1337
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v2

    .line 1341
    const/16 v4, 0x43

    .line 1342
    .line 1343
    aput-object v2, v0, v4

    .line 1344
    .line 1345
    const/16 v2, 0x41

    .line 1346
    .line 1347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v2

    .line 1351
    const-string v4, "Admin %d has added SSID %s to the restriction allowlist."

    .line 1352
    .line 1353
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v2

    .line 1357
    const/16 v4, 0x44

    .line 1358
    .line 1359
    aput-object v2, v0, v4

    .line 1360
    .line 1361
    const/16 v2, 0x42

    .line 1362
    .line 1363
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v2

    .line 1367
    const-string v4, "Admin %d has removed SSID %s from the restriction allowlist."

    .line 1368
    .line 1369
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v2

    .line 1373
    const/16 v4, 0x45

    .line 1374
    .line 1375
    aput-object v2, v0, v4

    .line 1376
    .line 1377
    const/16 v2, 0x43

    .line 1378
    .line 1379
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v2

    .line 1383
    const-string v4, "Admin %d has removed all SSIDs from the restriction allowlist."

    .line 1384
    .line 1385
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v2

    .line 1389
    aput-object v2, v0, v3

    .line 1390
    .line 1391
    const/16 v2, 0x47

    .line 1392
    .line 1393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v2

    .line 1397
    const-string v3, "Admin %d has changed NFC state change to %s"

    .line 1398
    .line 1399
    const-string v4, "MiscPolicy"

    .line 1400
    .line 1401
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v1

    .line 1405
    const/16 v2, 0x47

    .line 1406
    .line 1407
    aput-object v1, v0, v2

    .line 1408
    .line 1409
    const v1, 0x33479

    .line 1410
    .line 1411
    .line 1412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v1

    .line 1416
    const/4 v3, 0x5

    .line 1417
    const/4 v4, 0x0

    .line 1418
    const-string v5, "TAG_PACKAGE_INSTALLED: package name = %s - package version code = %d - user id = %d"

    .line 1419
    .line 1420
    const-string v6, "SecurityLog"

    .line 1421
    .line 1422
    const/4 v2, 0x0

    .line 1423
    const/4 v7, 0x0

    .line 1424
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v2

    .line 1428
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v1

    .line 1432
    const/16 v2, 0x48

    .line 1433
    .line 1434
    aput-object v1, v0, v2

    .line 1435
    .line 1436
    const v1, 0x3347b

    .line 1437
    .line 1438
    .line 1439
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v1

    .line 1443
    const-string v5, "TAG_PACKAGE_UNINSTALLED: package name = %s - package version code = %d - user id = %d"

    .line 1444
    .line 1445
    const-string v6, "SecurityLog"

    .line 1446
    .line 1447
    const/4 v2, 0x0

    .line 1448
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v2

    .line 1452
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v1

    .line 1456
    const/16 v2, 0x49

    .line 1457
    .line 1458
    aput-object v1, v0, v2

    .line 1459
    .line 1460
    const v1, 0x3347a

    .line 1461
    .line 1462
    .line 1463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v1

    .line 1467
    const-string v5, "TAG_PACKAGE_UPDATED: package name = %s - package version code = %d - user id = %d"

    .line 1468
    .line 1469
    const-string v6, "SecurityLog"

    .line 1470
    .line 1471
    const/4 v2, 0x0

    .line 1472
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v2

    .line 1476
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v1

    .line 1480
    const/16 v2, 0x4a

    .line 1481
    .line 1482
    aput-object v1, v0, v2

    .line 1483
    .line 1484
    const v1, 0x33477

    .line 1485
    .line 1486
    .line 1487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v1

    .line 1491
    const/4 v3, 0x6

    .line 1492
    const-string v5, "TAG_BLUETOOTH_CONNECTION: MAC address = %s - connection successful = %b - reason = %s"

    .line 1493
    .line 1494
    const-string v6, "SecurityLog"

    .line 1495
    .line 1496
    const/4 v2, 0x1

    .line 1497
    const/4 v7, 0x2

    .line 1498
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v2

    .line 1502
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v1

    .line 1506
    const/16 v2, 0x4b

    .line 1507
    .line 1508
    aput-object v1, v0, v2

    .line 1509
    .line 1510
    const v1, 0x33478

    .line 1511
    .line 1512
    .line 1513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v1

    .line 1517
    const/4 v3, 0x5

    .line 1518
    const-string v5, "TAG_BLUETOOTH_DISCONNECTION: MAC address = %s - reason = %s"

    .line 1519
    .line 1520
    const-string v6, "SecurityLog"

    .line 1521
    .line 1522
    const/4 v2, 0x1

    .line 1523
    const/4 v7, 0x0

    .line 1524
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v2

    .line 1528
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v1

    .line 1532
    const/16 v2, 0x4c

    .line 1533
    .line 1534
    aput-object v1, v0, v2

    .line 1535
    .line 1536
    const v1, 0x33475

    .line 1537
    .line 1538
    .line 1539
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v1

    .line 1543
    const-string v5, "TAG_WIFI_CONNECTION: attempt of connection BSSID = %s - eventType = %s - reason = %s"

    .line 1544
    .line 1545
    const-string v6, "SecurityLog"

    .line 1546
    .line 1547
    const/4 v2, 0x1

    .line 1548
    const/4 v7, 0x2

    .line 1549
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v2

    .line 1553
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    const/16 v2, 0x4d

    .line 1558
    .line 1559
    aput-object v1, v0, v2

    .line 1560
    .line 1561
    const v1, 0x33476

    .line 1562
    .line 1563
    .line 1564
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v1

    .line 1568
    const-string v5, "TAG_WIFI_DISCONNECTION: disconnected from BSSID = %s - reason = %s"

    .line 1569
    .line 1570
    const-string v6, "SecurityLog"

    .line 1571
    .line 1572
    const/4 v2, 0x1

    .line 1573
    const/4 v7, 0x0

    .line 1574
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v2

    .line 1578
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v1

    .line 1582
    const/16 v2, 0x4e

    .line 1583
    .line 1584
    aput-object v1, v0, v2

    .line 1585
    .line 1586
    const v1, 0x33474

    .line 1587
    .line 1588
    .line 1589
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v1

    .line 1593
    const/4 v4, 0x1

    .line 1594
    const-string v5, "TAG_PASSWORD_CHANGED: new password complexity = %d - target user ID = %d"

    .line 1595
    .line 1596
    const-string v6, "SecurityLog"

    .line 1597
    .line 1598
    const/4 v2, 0x0

    .line 1599
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v2

    .line 1603
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v1

    .line 1607
    const/16 v2, 0x4f

    .line 1608
    .line 1609
    aput-object v1, v0, v2

    .line 1610
    .line 1611
    const v1, 0x33473

    .line 1612
    .line 1613
    .line 1614
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v1

    .line 1618
    const-string v5, "TAG_PASSWORD_COMPLEXITY_REQUIRED: admin package name = %s - admin user ID = %d - target user ID = %d - password complexity = %d"

    .line 1619
    .line 1620
    const-string v6, "SecurityLog"

    .line 1621
    .line 1622
    const/4 v2, 0x1

    .line 1623
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v2

    .line 1627
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v1

    .line 1631
    const/16 v2, 0x50

    .line 1632
    .line 1633
    aput-object v1, v0, v2

    .line 1634
    .line 1635
    const v1, 0x33472

    .line 1636
    .line 1637
    .line 1638
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v1

    .line 1642
    const-string v5, "TAG_CAMERA_POLICY_SET: admin package name = %s - admin user ID = %d - target user ID = %d - camera is disabled = %b"

    .line 1643
    .line 1644
    const-string v6, "SecurityLog"

    .line 1645
    .line 1646
    const/4 v2, 0x1

    .line 1647
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v2

    .line 1651
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v1

    .line 1655
    const/16 v2, 0x51

    .line 1656
    .line 1657
    aput-object v1, v0, v2

    .line 1658
    .line 1659
    const v1, 0x33471

    .line 1660
    .line 1661
    .line 1662
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v1

    .line 1666
    const/4 v3, 0x4

    .line 1667
    const-string v5, "TAG_CERT_VALIDATION_FAILURE: failed to validate X.509v3 certificate - reason = %s"

    .line 1668
    .line 1669
    const-string v6, "SecurityLog"

    .line 1670
    .line 1671
    const/4 v2, 0x1

    .line 1672
    const/4 v7, 0x1

    .line 1673
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v2

    .line 1677
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v1

    .line 1681
    const/16 v2, 0x52

    .line 1682
    .line 1683
    aput-object v1, v0, v2

    .line 1684
    .line 1685
    const v1, 0x33470

    .line 1686
    .line 1687
    .line 1688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v1

    .line 1692
    const/4 v3, 0x3

    .line 1693
    const-string v5, "TAG_KEY_INTEGRITY_VIOLATION: cryptographic key integrity check failed - key alias = %s - uid owner = %d"

    .line 1694
    .line 1695
    const-string v6, "SecurityLog"

    .line 1696
    .line 1697
    const/4 v2, 0x0

    .line 1698
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v2

    .line 1702
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v1

    .line 1706
    const/16 v2, 0x53

    .line 1707
    .line 1708
    aput-object v1, v0, v2

    .line 1709
    .line 1710
    const v1, 0x3346f

    .line 1711
    .line 1712
    .line 1713
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v1

    .line 1717
    const/4 v3, 0x6

    .line 1718
    const-string v5, "TAG_CRYPTO_SELF_TEST_COMPLETED: result = %b"

    .line 1719
    .line 1720
    const-string v6, "SecurityLog"

    .line 1721
    .line 1722
    const/4 v2, 0x1

    .line 1723
    const/4 v7, 0x2

    .line 1724
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v2

    .line 1728
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v1

    .line 1732
    const/16 v2, 0x54

    .line 1733
    .line 1734
    aput-object v1, v0, v2

    .line 1735
    .line 1736
    const v1, 0x3346b

    .line 1737
    .line 1738
    .line 1739
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v1

    .line 1743
    const/4 v3, 0x5

    .line 1744
    const-string v5, "TAG_USER_RESTRICTION_ADDED: admin package name = %s - user id = %d - user restriction = %s"

    .line 1745
    .line 1746
    const-string v6, "SecurityLog"

    .line 1747
    .line 1748
    const/4 v2, 0x1

    .line 1749
    const/4 v7, 0x0

    .line 1750
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v2

    .line 1754
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v1

    .line 1758
    const/16 v2, 0x55

    .line 1759
    .line 1760
    aput-object v1, v0, v2

    .line 1761
    .line 1762
    const v1, 0x3346c

    .line 1763
    .line 1764
    .line 1765
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v1

    .line 1769
    const-string v5, "TAG_USER_RESTRICTION_REMOVED: admin package name = %s - user id = %d - user restriction = %s"

    .line 1770
    .line 1771
    const-string v6, "SecurityLog"

    .line 1772
    .line 1773
    const/4 v2, 0x1

    .line 1774
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v2

    .line 1778
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v1

    .line 1782
    const/16 v2, 0x56

    .line 1783
    .line 1784
    aput-object v1, v0, v2

    .line 1785
    .line 1786
    const v1, 0x3346d

    .line 1787
    .line 1788
    .line 1789
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v1

    .line 1793
    const/4 v3, 0x6

    .line 1794
    const-string v5, "TAG_CERT_AUTHORITY_INSTALLED: result = %b - certificate subject = %s - user id = %d"

    .line 1795
    .line 1796
    const-string v6, "SecurityLog"

    .line 1797
    .line 1798
    const/4 v2, 0x0

    .line 1799
    const/4 v7, 0x2

    .line 1800
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v2

    .line 1804
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v1

    .line 1808
    const/16 v2, 0x57

    .line 1809
    .line 1810
    aput-object v1, v0, v2

    .line 1811
    .line 1812
    const v1, 0x3346e

    .line 1813
    .line 1814
    .line 1815
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v1

    .line 1819
    const-string v5, "TAG_CERT_AUTHORITY_REMOVED: result = %b - certificate subject = %s - user id = %d"

    .line 1820
    .line 1821
    const-string v6, "SecurityLog"

    .line 1822
    .line 1823
    const/4 v2, 0x0

    .line 1824
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v2

    .line 1828
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v1

    .line 1832
    const/16 v2, 0x58

    .line 1833
    .line 1834
    aput-object v1, v0, v2

    .line 1835
    .line 1836
    const v1, 0x33468

    .line 1837
    .line 1838
    .line 1839
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v1

    .line 1843
    const-string v5, "TAG_KEY_GENERATED: cryptographic key was generated - result = %b - key alias = %s - request process uid = %d"

    .line 1844
    .line 1845
    const-string v6, "SecurityLog"

    .line 1846
    .line 1847
    const/4 v2, 0x0

    .line 1848
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v2

    .line 1852
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v1

    .line 1856
    const/16 v2, 0x59

    .line 1857
    .line 1858
    aput-object v1, v0, v2

    .line 1859
    .line 1860
    const v1, 0x33469

    .line 1861
    .line 1862
    .line 1863
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v1

    .line 1867
    const-string v5, "TAG_KEY_IMPORT: cryptographic key was imported - result = %b - key alias = %s - request process uid = %d"

    .line 1868
    .line 1869
    const-string v6, "SecurityLog"

    .line 1870
    .line 1871
    const/4 v2, 0x0

    .line 1872
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v2

    .line 1876
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v1

    .line 1880
    const/16 v2, 0x5a

    .line 1881
    .line 1882
    aput-object v1, v0, v2

    .line 1883
    .line 1884
    const v1, 0x3346a

    .line 1885
    .line 1886
    .line 1887
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v1

    .line 1891
    const-string v5, "TAG_KEY_DESTRUCTION: cryptographic key was destroyed - result = %b - key alias = %s - process uid = %d"

    .line 1892
    .line 1893
    const-string v6, "SecurityLog"

    .line 1894
    .line 1895
    const/4 v2, 0x0

    .line 1896
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v2

    .line 1900
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v1

    .line 1904
    const/16 v2, 0x5b

    .line 1905
    .line 1906
    aput-object v1, v0, v2

    .line 1907
    .line 1908
    const v1, 0x33467

    .line 1909
    .line 1910
    .line 1911
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v1

    .line 1915
    const/4 v3, 0x3

    .line 1916
    const/4 v4, 0x2

    .line 1917
    const-string v5, "TAG_WIPE_FAILURE"

    .line 1918
    .line 1919
    const-string v6, "SecurityLog"

    .line 1920
    .line 1921
    const/4 v2, 0x1

    .line 1922
    const/4 v7, 0x1

    .line 1923
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1924
    .line 1925
    .line 1926
    move-result-object v2

    .line 1927
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v1

    .line 1931
    const/16 v2, 0x5c

    .line 1932
    .line 1933
    aput-object v1, v0, v2

    .line 1934
    .line 1935
    const v1, 0x33466

    .line 1936
    .line 1937
    .line 1938
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v1

    .line 1942
    const/4 v3, 0x5

    .line 1943
    const/4 v4, 0x1

    .line 1944
    const-string v5, "TAG_REMOTE_LOCK: admin package name = %s - admin user ID = %d - target user ID = %d"

    .line 1945
    .line 1946
    const-string v6, "SecurityLog"

    .line 1947
    .line 1948
    const/4 v2, 0x1

    .line 1949
    const/4 v7, 0x0

    .line 1950
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1951
    .line 1952
    .line 1953
    move-result-object v2

    .line 1954
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v1

    .line 1958
    const/16 v2, 0x5d

    .line 1959
    .line 1960
    aput-object v1, v0, v2

    .line 1961
    .line 1962
    const v1, 0x33465

    .line 1963
    .line 1964
    .line 1965
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v1

    .line 1969
    const-string v5, "TAG_KEYGUARD_DISABLED_FEATURES_SET: admin package name = %s - admin user ID = %d - target user ID = %d - disabled keyguard feature mask = %d"

    .line 1970
    .line 1971
    const-string v6, "SecurityLog"

    .line 1972
    .line 1973
    const/4 v2, 0x1

    .line 1974
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v2

    .line 1978
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v1

    .line 1982
    const/16 v2, 0x5e

    .line 1983
    .line 1984
    aput-object v1, v0, v2

    .line 1985
    .line 1986
    const v1, 0x33464

    .line 1987
    .line 1988
    .line 1989
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v1

    .line 1993
    const-string v5, "TAG_MAX_PASSWORD_ATTEMPTS_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new maximum of failed attempts = %d"

    .line 1994
    .line 1995
    const-string v6, "SecurityLog"

    .line 1996
    .line 1997
    const/4 v2, 0x1

    .line 1998
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v2

    .line 2002
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v1

    .line 2006
    const/16 v2, 0x5f

    .line 2007
    .line 2008
    aput-object v1, v0, v2

    .line 2009
    .line 2010
    const v1, 0x33463

    .line 2011
    .line 2012
    .line 2013
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v1

    .line 2017
    const-string v5, "TAG_MAX_SCREEN_LOCK_TIMEOUT_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new screen lock timeout = %d"

    .line 2018
    .line 2019
    const-string v6, "SecurityLog"

    .line 2020
    .line 2021
    const/4 v2, 0x1

    .line 2022
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v2

    .line 2026
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v1

    .line 2030
    const/16 v2, 0x60

    .line 2031
    .line 2032
    aput-object v1, v0, v2

    .line 2033
    .line 2034
    const v1, 0x33462

    .line 2035
    .line 2036
    .line 2037
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v1

    .line 2041
    const-string v5, "TAG_PASSWORD_HISTORY_LENGTH_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new password history length = %d"

    .line 2042
    .line 2043
    const-string v6, "SecurityLog"

    .line 2044
    .line 2045
    const/4 v2, 0x1

    .line 2046
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v2

    .line 2050
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v1

    .line 2054
    const/16 v2, 0x61

    .line 2055
    .line 2056
    aput-object v1, v0, v2

    .line 2057
    .line 2058
    const v1, 0x33461

    .line 2059
    .line 2060
    .line 2061
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v1

    .line 2065
    const-string v5, "TAG_PASSWORD_COMPLEXITY_SET: admin package name = %s - admin user ID = %d - target user ID = %d - minimum password length = %d - password quality constraint = %d - minimum of letters = %d - minimum of non-letters = %d - minimum of digits = %d - minimum of uppercase letters = %d - minimum of lowercase letters = %d - minimum of symbols = %d"

    .line 2066
    .line 2067
    const-string v6, "SecurityLog"

    .line 2068
    .line 2069
    const/4 v2, 0x1

    .line 2070
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v2

    .line 2074
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v1

    .line 2078
    const/16 v2, 0x62

    .line 2079
    .line 2080
    aput-object v1, v0, v2

    .line 2081
    .line 2082
    const v1, 0x33460

    .line 2083
    .line 2084
    .line 2085
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v1

    .line 2089
    const-string v5, "TAG_PASSWORD_EXPIRATION_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new timeout = %d"

    .line 2090
    .line 2091
    const-string v6, "SecurityLog"

    .line 2092
    .line 2093
    const/4 v2, 0x1

    .line 2094
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v2

    .line 2098
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v1

    .line 2102
    const/16 v2, 0x63

    .line 2103
    .line 2104
    aput-object v1, v0, v2

    .line 2105
    .line 2106
    const v1, 0x3345f

    .line 2107
    .line 2108
    .line 2109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v1

    .line 2113
    const/4 v3, 0x1

    .line 2114
    const/4 v4, 0x3

    .line 2115
    const-string v5, "TAG_LOG_BUFFER_SIZE_CRITICAL"

    .line 2116
    .line 2117
    const-string v6, "SecurityLog"

    .line 2118
    .line 2119
    const/4 v2, 0x1

    .line 2120
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v2

    .line 2124
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v1

    .line 2128
    const/16 v2, 0x64

    .line 2129
    .line 2130
    aput-object v1, v0, v2

    .line 2131
    .line 2132
    const v1, 0x3345d

    .line 2133
    .line 2134
    .line 2135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v1

    .line 2139
    const/4 v3, 0x5

    .line 2140
    const/4 v4, 0x2

    .line 2141
    const-string v5, "TAG_MEDIA_MOUNT: mount point: %s - volume label: %s"

    .line 2142
    .line 2143
    const-string v6, "SecurityLog"

    .line 2144
    .line 2145
    const/4 v2, 0x3

    .line 2146
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v2

    .line 2150
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v1

    .line 2154
    const/16 v2, 0x65

    .line 2155
    .line 2156
    aput-object v1, v0, v2

    .line 2157
    .line 2158
    const v1, 0x3345e

    .line 2159
    .line 2160
    .line 2161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v1

    .line 2165
    const-string v5, "TAG_MEDIA_UNMOUNT: mount point: %s - volume label: %s"

    .line 2166
    .line 2167
    const-string v6, "SecurityLog"

    .line 2168
    .line 2169
    const/4 v2, 0x3

    .line 2170
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v2

    .line 2174
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2175
    .line 2176
    .line 2177
    move-result-object v1

    .line 2178
    const/16 v2, 0x66

    .line 2179
    .line 2180
    aput-object v1, v0, v2

    .line 2181
    .line 2182
    const v1, 0x3345b

    .line 2183
    .line 2184
    .line 2185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v1

    .line 2189
    const/4 v4, 0x3

    .line 2190
    const-string v5, "TAG_LOGGING_STARTED"

    .line 2191
    .line 2192
    const-string v6, "SecurityLog"

    .line 2193
    .line 2194
    const/4 v2, 0x1

    .line 2195
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v2

    .line 2199
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v1

    .line 2203
    const/16 v2, 0x67

    .line 2204
    .line 2205
    aput-object v1, v0, v2

    .line 2206
    .line 2207
    const v1, 0x3345c

    .line 2208
    .line 2209
    .line 2210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v1

    .line 2214
    const-string v5, "TAG_LOGGING_STOPPED"

    .line 2215
    .line 2216
    const-string v6, "SecurityLog"

    .line 2217
    .line 2218
    const/4 v2, 0x1

    .line 2219
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v2

    .line 2223
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v1

    .line 2227
    const/16 v2, 0x68

    .line 2228
    .line 2229
    aput-object v1, v0, v2

    .line 2230
    .line 2231
    const v1, 0x3345a

    .line 2232
    .line 2233
    .line 2234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v1

    .line 2238
    const/4 v4, 0x2

    .line 2239
    const-string v5, "TAG_OS_SHUTDOWN"

    .line 2240
    .line 2241
    const-string v6, "SecurityLog"

    .line 2242
    .line 2243
    const/4 v2, 0x1

    .line 2244
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2245
    .line 2246
    .line 2247
    move-result-object v2

    .line 2248
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2249
    .line 2250
    .line 2251
    move-result-object v1

    .line 2252
    const/16 v2, 0x69

    .line 2253
    .line 2254
    aput-object v1, v0, v2

    .line 2255
    .line 2256
    const v1, 0x33459

    .line 2257
    .line 2258
    .line 2259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2260
    .line 2261
    .line 2262
    move-result-object v1

    .line 2263
    const-string v5, "TAG_OS_STARTUP: Verified Boot state: %s - dm-verity mode: %s"

    .line 2264
    .line 2265
    const-string v6, "SecurityLog"

    .line 2266
    .line 2267
    const/4 v2, 0x1

    .line 2268
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v2

    .line 2272
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v1

    .line 2276
    const/16 v2, 0x6a

    .line 2277
    .line 2278
    aput-object v1, v0, v2

    .line 2279
    .line 2280
    const v1, 0x33458

    .line 2281
    .line 2282
    .line 2283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2284
    .line 2285
    .line 2286
    move-result-object v1

    .line 2287
    const/4 v4, 0x1

    .line 2288
    const-string v5, "TAG_KEYGUARD_SECURED"

    .line 2289
    .line 2290
    const-string v6, "SecurityLog"

    .line 2291
    .line 2292
    const/4 v2, 0x1

    .line 2293
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2294
    .line 2295
    .line 2296
    move-result-object v2

    .line 2297
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v1

    .line 2301
    const/16 v2, 0x6b

    .line 2302
    .line 2303
    aput-object v1, v0, v2

    .line 2304
    .line 2305
    const v1, 0x33457

    .line 2306
    .line 2307
    .line 2308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2309
    .line 2310
    .line 2311
    move-result-object v1

    .line 2312
    const/4 v3, 0x6

    .line 2313
    const-string v5, "TAG_KEYGUARD_DISMISS_AUTH_ATTEMPT: result: %b - strong authentication: %b"

    .line 2314
    .line 2315
    const-string v6, "SecurityLog"

    .line 2316
    .line 2317
    const/4 v2, 0x1

    .line 2318
    const/4 v7, 0x2

    .line 2319
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v2

    .line 2323
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v1

    .line 2327
    const/16 v2, 0x6c

    .line 2328
    .line 2329
    aput-object v1, v0, v2

    .line 2330
    .line 2331
    const v1, 0x33456

    .line 2332
    .line 2333
    .line 2334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v1

    .line 2338
    const/4 v3, 0x5

    .line 2339
    const-string v5, "TAG_KEYGUARD_DISMISSED"

    .line 2340
    .line 2341
    const-string v6, "SecurityLog"

    .line 2342
    .line 2343
    const/4 v2, 0x1

    .line 2344
    const/4 v7, 0x0

    .line 2345
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v2

    .line 2349
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v1

    .line 2353
    const/16 v2, 0x6d

    .line 2354
    .line 2355
    aput-object v1, v0, v2

    .line 2356
    .line 2357
    const v1, 0x33455

    .line 2358
    .line 2359
    .line 2360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v1

    .line 2364
    const/4 v4, 0x0

    .line 2365
    const-string v5, "TAG_APP_PROCESS_START: process name = %s - start time = %d - uid = %d - pid = %d - SE info tag = %s - SHA256 hash = %s"

    .line 2366
    .line 2367
    const-string v6, "SecurityLog"

    .line 2368
    .line 2369
    const/4 v2, 0x0

    .line 2370
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2371
    .line 2372
    .line 2373
    move-result-object v2

    .line 2374
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v1

    .line 2378
    const/16 v2, 0x6e

    .line 2379
    .line 2380
    aput-object v1, v0, v2

    .line 2381
    .line 2382
    const v1, 0x33454

    .line 2383
    .line 2384
    .line 2385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2386
    .line 2387
    .line 2388
    move-result-object v1

    .line 2389
    const/4 v4, 0x1

    .line 2390
    const-string v5, "TAG_SYNC_SEND_FILE: file pushed to device file destination path= %s"

    .line 2391
    .line 2392
    const-string v6, "SecurityLog"

    .line 2393
    .line 2394
    const/4 v2, 0x1

    .line 2395
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2396
    .line 2397
    .line 2398
    move-result-object v2

    .line 2399
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v1

    .line 2403
    const/16 v2, 0x6f

    .line 2404
    .line 2405
    aput-object v1, v0, v2

    .line 2406
    .line 2407
    const v1, 0x33453

    .line 2408
    .line 2409
    .line 2410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v1

    .line 2414
    const-string v5, "TAG_SYNC_RECV_FILE: file pulled from device file source path = %s"

    .line 2415
    .line 2416
    const-string v6, "SecurityLog"

    .line 2417
    .line 2418
    const/4 v2, 0x1

    .line 2419
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2420
    .line 2421
    .line 2422
    move-result-object v2

    .line 2423
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v1

    .line 2427
    const/16 v2, 0x70

    .line 2428
    .line 2429
    aput-object v1, v0, v2

    .line 2430
    .line 2431
    const v1, 0x33452

    .line 2432
    .line 2433
    .line 2434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2435
    .line 2436
    .line 2437
    move-result-object v1

    .line 2438
    const-string v5, "TAG_ADB_SHELL_CMD: shell command issued over ADB - command = %s"

    .line 2439
    .line 2440
    const-string v6, "SecurityLog"

    .line 2441
    .line 2442
    const/4 v2, 0x3

    .line 2443
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v2

    .line 2447
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2448
    .line 2449
    .line 2450
    move-result-object v1

    .line 2451
    const/16 v2, 0x71

    .line 2452
    .line 2453
    aput-object v1, v0, v2

    .line 2454
    .line 2455
    const v1, 0x33451

    .line 2456
    .line 2457
    .line 2458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2459
    .line 2460
    .line 2461
    move-result-object v1

    .line 2462
    const-string v5, "TAG_ADB_SHELL_INTERACTIVE: ADB interactive shell was open"

    .line 2463
    .line 2464
    const-string v6, "SecurityLog"

    .line 2465
    .line 2466
    const/4 v2, 0x1

    .line 2467
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v2

    .line 2471
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2472
    .line 2473
    .line 2474
    move-result-object v1

    .line 2475
    const/16 v2, 0x72

    .line 2476
    .line 2477
    aput-object v1, v0, v2

    .line 2478
    .line 2479
    const v1, 0x3347c

    .line 2480
    .line 2481
    .line 2482
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2483
    .line 2484
    .line 2485
    move-result-object v1

    .line 2486
    const-string v5, "TAG_BACKUP_SERVICE_TOGGLED: admin package name = %s - admin user ID = %d - backup service state = %d"

    .line 2487
    .line 2488
    const-string v6, "SecurityLog"

    .line 2489
    .line 2490
    const/4 v2, 0x1

    .line 2491
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v2

    .line 2495
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v1

    .line 2499
    const/16 v2, 0x73

    .line 2500
    .line 2501
    aput-object v1, v0, v2

    .line 2502
    .line 2503
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    .line 2504
    .line 2505
    .line 2506
    move-result-object v0

    .line 2507
    sput-object v0, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap;->EVENT_MAP:Ljava/util/Map;

    .line 2508
    .line 2509
    return-void
.end method
