.class public final synthetic Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "url is "

    .line 7
    .line 8
    .line 9
    const-string v1, "https://dynamicfeature.dvc.samsung.com/dynamic-feature/features"

    .line 10
    .line 11
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v3, "Update is blocked "

    .line 14
    .line 15
    const-class v4, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 16
    .line 17
    monitor-enter v4

    .line 18
    :try_start_0
    sget v5, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 19
    .line 20
    if-lez v5, :cond_0

    .line 21
    .line 22
    const-string v5, "dynamicfeature_HttpConnector"

    .line 23
    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x5

    .line 30
    invoke-static {v3}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->getCallers(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto/16 :goto_16

    .line 47
    .line 48
    :cond_0
    :goto_0
    sget v3, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v3, v5

    .line 56
    :goto_1
    monitor-exit v4

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    new-instance p0, Landroid/util/Pair;

    .line 60
    .line 61
    const-string v0, ""

    .line 62
    .line 63
    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_12

    .line 67
    .line 68
    :cond_2
    const/4 v3, 0x0

    .line 69
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->getParams(Z)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v4, "dynamicfeature_HttpConnector"

    .line 86
    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v4, Lorg/json/JSONObject;

    .line 107
    .line 108
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v6, Lorg/json/JSONArray;

    .line 112
    .line 113
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v7, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mFeatures:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_6

    .line 127
    .line 128
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    check-cast v8, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 133
    .line 134
    iget-object v9, v8, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v9, :cond_3

    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_4

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    new-instance v9, Lorg/json/JSONObject;

    .line 146
    .line 147
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string/jumbo v10, "namespace"

    .line 151
    .line 152
    .line 153
    iget-object v11, v8, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    const-string/jumbo v10, "name"

    .line 159
    .line 160
    .line 161
    iget-object v11, v8, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    const-string v10, "abType"

    .line 167
    .line 168
    iget-object v11, v8, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    const-string/jumbo v10, "version"

    .line 174
    .line 175
    .line 176
    iget v11, v8, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 177
    .line 178
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getCommentJSONArray()Lorg/json/JSONArray;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-lez v10, :cond_5

    .line 190
    .line 191
    const-string v10, "logs"

    .line 192
    .line 193
    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :catchall_1
    move-exception p0

    .line 198
    move-object v0, v3

    .line 199
    goto/16 :goto_13

    .line 200
    .line 201
    :catch_0
    move-exception p0

    .line 202
    move-object v0, v3

    .line 203
    goto/16 :goto_c

    .line 204
    .line 205
    :catch_1
    move-exception p0

    .line 206
    move-object v0, v3

    .line 207
    goto/16 :goto_f

    .line 208
    .line 209
    :cond_5
    :goto_3
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_6
    const-string v7, "abTest"

    .line 214
    .line 215
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    const-string/jumbo v6, "virtualId"

    .line 219
    .line 220
    .line 221
    sget-object v7, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 222
    .line 223
    iget-object v8, v7, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    .line 227
    .line 228
    iget-object v6, v7, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;

    .line 229
    .line 230
    sget-boolean v7, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 231
    .line 232
    if-eqz v7, :cond_7

    .line 233
    .line 234
    const-string v6, ""

    .line 235
    .line 236
    :cond_7
    const-string/jumbo v7, "updatedAt"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    .line 241
    .line 242
    const-string v6, "dynamicfeature_HttpConnector"

    .line 243
    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string/jumbo v8, "payload : "

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string/jumbo v7, "payload : "

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    filled-new-array {v6}, [Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-static {v6}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 299
    .line 300
    .line 301
    move-result-object v6
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    const-string/jumbo v7, "utf-8"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    array-length v7, v4

    .line 314
    invoke-virtual {v6, v4, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    iput v4, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mLastResultCode:I

    .line 330
    .line 331
    const/16 p0, 0xc8

    .line 332
    .line 333
    if-eq v4, p0, :cond_8

    .line 334
    .line 335
    const/16 p0, 0x130

    .line 336
    .line 337
    if-eq v4, p0, :cond_a

    .line 338
    .line 339
    const-string p0, "dynamicfeature_HttpConnector"

    .line 340
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    const-string v7, "Error on connection : "

    .line 347
    .line 348
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    goto :goto_8

    .line 362
    :goto_4
    move-object v0, v3

    .line 363
    move-object v3, v6

    .line 364
    goto/16 :goto_13

    .line 365
    .line 366
    :goto_5
    move-object v0, v3

    .line 367
    move-object v3, v6

    .line 368
    goto/16 :goto_c

    .line 369
    .line 370
    :goto_6
    move-object v0, v3

    .line 371
    move-object v3, v6

    .line 372
    goto/16 :goto_f

    .line 373
    .line 374
    :catchall_2
    move-exception p0

    .line 375
    goto :goto_4

    .line 376
    :catch_2
    move-exception p0

    .line 377
    goto :goto_5

    .line 378
    :catch_3
    move-exception p0

    .line 379
    goto :goto_6

    .line 380
    :cond_8
    new-instance p0, Ljava/io/InputStreamReader;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    const-string/jumbo v7, "utf-8"

    .line 387
    .line 388
    .line 389
    invoke-direct {p0, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 390
    .line 391
    .line 392
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    .line 393
    .line 394
    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 395
    .line 396
    .line 397
    :goto_7
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    if-eqz v3, :cond_9

    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 408
    .line 409
    .line 410
    goto :goto_7

    .line 411
    :catchall_3
    move-exception v1

    .line 412
    goto/16 :goto_a

    .line 413
    .line 414
    :cond_9
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 415
    .line 416
    .line 417
    move-object v3, p0

    .line 418
    :cond_a
    :try_start_6
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 419
    .line 420
    :goto_8
    const-string p0, "dynamicfeature_HttpConnector"

    .line 421
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string/jumbo v7, "post result : "

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v7, " requestCode "

    .line 437
    .line 438
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    new-instance p0, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    const-string v0, " :: "

    .line 460
    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object p0

    .line 471
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p0

    .line 479
    invoke-static {p0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    new-instance p0, Landroid/util/Pair;

    .line 483
    .line 484
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 489
    .line 490
    .line 491
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 492
    .line 493
    .line 494
    goto :goto_9

    .line 495
    :catch_4
    move-exception v0

    .line 496
    const-string v1, "dynamicfeature_HttpConnector"

    .line 497
    .line 498
    const-string v2, "Cannot close handle : "

    .line 499
    .line 500
    invoke-static {v2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    :goto_9
    if-eqz v3, :cond_e

    .line 504
    .line 505
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 506
    .line 507
    .line 508
    goto/16 :goto_12

    .line 509
    .line 510
    :catch_5
    move-exception v0

    .line 511
    const-string v1, "dynamicfeature_HttpConnector"

    .line 512
    .line 513
    const-string v2, "Cannot close handle : "

    .line 514
    .line 515
    invoke-static {v2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_12

    .line 519
    .line 520
    :catchall_4
    move-exception v0

    .line 521
    move-object v3, v6

    .line 522
    move-object v12, v0

    .line 523
    move-object v0, p0

    .line 524
    move-object p0, v12

    .line 525
    goto/16 :goto_13

    .line 526
    .line 527
    :catch_6
    move-exception v0

    .line 528
    move-object v3, v6

    .line 529
    move-object v12, v0

    .line 530
    move-object v0, p0

    .line 531
    move-object p0, v12

    .line 532
    goto :goto_c

    .line 533
    :catch_7
    move-exception v0

    .line 534
    move-object v3, v6

    .line 535
    move-object v12, v0

    .line 536
    move-object v0, p0

    .line 537
    move-object p0, v12

    .line 538
    goto :goto_f

    .line 539
    :goto_a
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 540
    .line 541
    .line 542
    goto :goto_b

    .line 543
    :catchall_5
    move-exception v0

    .line 544
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 545
    .line 546
    .line 547
    :goto_b
    throw v1
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 548
    :goto_c
    :try_start_b
    const-string v1, "dynamicfeature_HttpConnector"

    .line 549
    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .line 554
    .line 555
    const-string v5, "Fail to send + "

    .line 556
    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p0

    .line 564
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p0

    .line 571
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 572
    .line 573
    .line 574
    if-eqz v3, :cond_b

    .line 575
    .line 576
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 577
    .line 578
    .line 579
    goto :goto_d

    .line 580
    :catch_8
    move-exception p0

    .line 581
    const-string v1, "dynamicfeature_HttpConnector"

    .line 582
    .line 583
    const-string v3, "Cannot close handle : "

    .line 584
    .line 585
    invoke-static {v3, p0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    :cond_b
    :goto_d
    if-eqz v0, :cond_d

    .line 589
    .line 590
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 591
    .line 592
    .line 593
    goto :goto_11

    .line 594
    :catch_9
    move-exception p0

    .line 595
    :goto_e
    const-string v0, "dynamicfeature_HttpConnector"

    .line 596
    .line 597
    const-string v1, "Cannot close handle : "

    .line 598
    .line 599
    invoke-static {v1, p0, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    goto :goto_11

    .line 603
    :catchall_6
    move-exception p0

    .line 604
    goto :goto_13

    .line 605
    :goto_f
    :try_start_e
    const-string v1, "dynamicfeature_HttpConnector"

    .line 606
    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    .line 612
    const-string v5, "Fail to send + "

    .line 613
    .line 614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object p0

    .line 621
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object p0

    .line 628
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 629
    .line 630
    .line 631
    if-eqz v3, :cond_c

    .line 632
    .line 633
    :try_start_f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 634
    .line 635
    .line 636
    goto :goto_10

    .line 637
    :catch_a
    move-exception p0

    .line 638
    const-string v1, "dynamicfeature_HttpConnector"

    .line 639
    .line 640
    const-string v3, "Cannot close handle : "

    .line 641
    .line 642
    invoke-static {v3, p0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    :cond_c
    :goto_10
    if-eqz v0, :cond_d

    .line 646
    .line 647
    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 648
    .line 649
    .line 650
    goto :goto_11

    .line 651
    :catch_b
    move-exception p0

    .line 652
    goto :goto_e

    .line 653
    :cond_d
    :goto_11
    new-instance p0, Landroid/util/Pair;

    .line 654
    .line 655
    const-string v0, ""

    .line 656
    .line 657
    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    :cond_e
    :goto_12
    return-object p0

    .line 661
    :goto_13
    if-eqz v3, :cond_f

    .line 662
    .line 663
    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 664
    .line 665
    .line 666
    goto :goto_14

    .line 667
    :catch_c
    move-exception v1

    .line 668
    const-string v2, "dynamicfeature_HttpConnector"

    .line 669
    .line 670
    const-string v3, "Cannot close handle : "

    .line 671
    .line 672
    invoke-static {v3, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    :cond_f
    :goto_14
    if-eqz v0, :cond_10

    .line 676
    .line 677
    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 678
    .line 679
    .line 680
    goto :goto_15

    .line 681
    :catch_d
    move-exception v0

    .line 682
    const-string v1, "dynamicfeature_HttpConnector"

    .line 683
    .line 684
    const-string v2, "Cannot close handle : "

    .line 685
    .line 686
    invoke-static {v2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    :cond_10
    :goto_15
    throw p0

    .line 690
    :goto_16
    monitor-exit v4

    .line 691
    throw p0
.end method
