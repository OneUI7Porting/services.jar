.class public final Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_6

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    if-eq v0, v6, :cond_5

    .line 14
    .line 15
    if-eq v0, v5, :cond_2

    .line 16
    .line 17
    if-eq v0, v4, :cond_1

    .line 18
    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_b

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string p1, "SemGoodCatchService"

    .line 31
    .line 32
    const-string v0, "function LIKE ?"

    .line 33
    .line 34
    const-string/jumbo v1, "wakeup_done"

    .line 35
    .line 36
    .line 37
    filled-new-array {v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Landroid/content/ContentValues;

    .line 42
    .line 43
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v4, "module"

    .line 47
    .line 48
    .line 49
    const-string v5, "FeatureWakeUp"

    .line 50
    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v4, "function"

    .line 55
    .line 56
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v1, "value"

    .line 60
    .line 61
    .line 62
    const-string/jumbo v4, "on"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 75
    .line 76
    invoke-virtual {v1, p0, v3, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    sget p0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 80
    .line 81
    const-string p0, "doneTrigger()"

    .line 82
    .line 83
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_b

    .line 87
    .line 88
    :catch_0
    move-exception p0

    .line 89
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "doneTrigger error : "

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto/16 :goto_b

    .line 109
    .line 110
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 118
    .line 119
    const-string/jumbo p1, "setActiveState, false"

    .line 120
    .line 121
    .line 122
    const-string v0, "SemGoodCatchService"

    .line 123
    .line 124
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iput-boolean v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    .line 128
    .line 129
    goto/16 :goto_b

    .line 130
    .line 131
    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 134
    .line 135
    const-string v0, "SemGoodCatchService"

    .line 136
    .line 137
    if-nez p1, :cond_3

    .line 138
    .line 139
    const-string/jumbo p1, "mGoodCatchObserver is null, trying to createObserver."

    .line 140
    .line 141
    .line 142
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string/jumbo v1, "mFeatureSetting.getUri() : "

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 154
    .line 155
    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", mFeatureEvent.getUri() : "

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 166
    .line 167
    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string/jumbo v1, "mFeatureSettingsProvider.getUri() : "

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 179
    .line 180
    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 193
    .line 194
    if-nez p1, :cond_4

    .line 195
    .line 196
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 197
    .line 198
    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 199
    .line 200
    if-eqz p1, :cond_4

    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 203
    .line 204
    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 205
    .line 206
    if-eqz p1, :cond_4

    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 209
    .line 210
    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 211
    .line 212
    if-eqz p1, :cond_4

    .line 213
    .line 214
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 215
    .line 216
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 217
    .line 218
    .line 219
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 220
    .line 221
    const-string p0, "created GoodCatchObserver object"

    .line 222
    .line 223
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto/16 :goto_b

    .line 227
    .line 228
    :cond_4
    const-string p0, "does not create GoodCatchObserver"

    .line 229
    .line 230
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    goto/16 :goto_b

    .line 234
    .line 235
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p1, [Ljava/lang/String;

    .line 238
    .line 239
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 240
    .line 241
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 242
    .line 243
    aget-object v0, p1, v1

    .line 244
    .line 245
    aget-object v1, p1, v2

    .line 246
    .line 247
    aget-object v2, p1, v6

    .line 248
    .line 249
    aget-object v5, p1, v5

    .line 250
    .line 251
    aget-object v4, p1, v4

    .line 252
    .line 253
    aget-object v3, p1, v3

    .line 254
    .line 255
    const/4 v6, 0x6

    .line 256
    aget-object p1, p1, v6

    .line 257
    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    sget v6, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 262
    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string/jumbo v7, "update, "

    .line 266
    .line 267
    .line 268
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v7, ", "

    .line 275
    .line 276
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    const-string v7, "SemGoodCatchService"

    .line 287
    .line 288
    invoke-static {v7, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    new-instance v6, Landroid/content/ContentValues;

    .line 292
    .line 293
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 294
    .line 295
    .line 296
    const-string/jumbo v8, "module"

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const-string v0, "function"

    .line 303
    .line 304
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string/jumbo v0, "package"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-string/jumbo v0, "time"

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string/jumbo v0, "value"

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const-string/jumbo v0, "message"

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const-string v0, "extra"

    .line 332
    .line 333
    invoke-virtual {v6, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :try_start_1
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 337
    .line 338
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    .line 339
    .line 340
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 341
    .line 342
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 343
    .line 344
    invoke-virtual {p1, p0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    .line 346
    .line 347
    goto/16 :goto_b

    .line 348
    .line 349
    :catch_1
    move-exception p0

    .line 350
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 351
    .line 352
    new-instance p1, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v0, "insertGoodCatch error : "

    .line 355
    .line 356
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    invoke-static {v7, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    goto/16 :goto_b

    .line 370
    .line 371
    :cond_6
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 372
    .line 373
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 374
    .line 375
    const-string/jumbo p1, "query, cur.getCount() : "

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 379
    .line 380
    if-nez v0, :cond_7

    .line 381
    .line 382
    sget p0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 383
    .line 384
    const-string p0, "SemGoodCatchService"

    .line 385
    .line 386
    const-string/jumbo p1, "uri is null"

    .line 387
    .line 388
    .line 389
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    goto/16 :goto_b

    .line 393
    .line 394
    :cond_7
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 395
    .line 396
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 397
    .line 398
    monitor-enter v0

    .line 399
    const/4 v3, 0x0

    .line 400
    :try_start_2
    iget-object v4, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 401
    .line 402
    iget-object v5, v4, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    .line 403
    .line 404
    iget-object v6, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 405
    .line 406
    const/4 v9, 0x0

    .line 407
    const/4 v10, 0x0

    .line 408
    const/4 v7, 0x0

    .line 409
    const/4 v8, 0x0

    .line 410
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    if-eqz v3, :cond_8

    .line 415
    .line 416
    sget v4, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 417
    .line 418
    const-string v4, "SemGoodCatchService"

    .line 419
    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-static {v4, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    goto :goto_0

    .line 440
    :catchall_0
    move-exception p0

    .line 441
    goto/16 :goto_9

    .line 442
    .line 443
    :catch_2
    move-exception p0

    .line 444
    goto/16 :goto_7

    .line 445
    .line 446
    :cond_8
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 447
    .line 448
    const-string p1, "SemGoodCatchService"

    .line 449
    .line 450
    const-string/jumbo v4, "query, cur is null"

    .line 451
    .line 452
    .line 453
    invoke-static {p1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    :goto_0
    move p1, v1

    .line 457
    :cond_9
    :goto_1
    if-eqz v3, :cond_10

    .line 458
    .line 459
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    if-eqz v4, :cond_10

    .line 464
    .line 465
    const-string/jumbo v4, "module"

    .line 466
    .line 467
    .line 468
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    move-result v4

    .line 472
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    const-string v5, "function"

    .line 477
    .line 478
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    move-result v5

    .line 482
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    const-string/jumbo v6, "value"

    .line 487
    .line 488
    .line 489
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    sget v7, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 498
    .line 499
    const-string v7, "SemGoodCatchService"

    .line 500
    .line 501
    new-instance v8, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    const-string/jumbo v9, "module=\'"

    .line 507
    .line 508
    .line 509
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const-string v9, "\', function=\'"

    .line 516
    .line 517
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string v9, "\', value=\'"

    .line 524
    .line 525
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v9, "\'"

    .line 532
    .line 533
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v8

    .line 540
    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    if-eqz v4, :cond_f

    .line 544
    .line 545
    if-eqz v5, :cond_f

    .line 546
    .line 547
    if-nez v6, :cond_a

    .line 548
    .line 549
    goto/16 :goto_5

    .line 550
    .line 551
    :cond_a
    iget-object v7, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 552
    .line 553
    iget-object v7, v7, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 554
    .line 555
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 560
    .line 561
    .line 562
    move-result-object v7

    .line 563
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    .line 565
    .line 566
    move-result v8

    .line 567
    if-eqz v8, :cond_9

    .line 568
    .line 569
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v8

    .line 573
    check-cast v8, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    .line 574
    .line 575
    invoke-virtual {v8, v4, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->has(Ljava/lang/String;Ljava/lang/String;)Z

    .line 576
    .line 577
    .line 578
    move-result v9

    .line 579
    if-eqz v9, :cond_b

    .line 580
    .line 581
    const-string/jumbo v7, "on"

    .line 582
    .line 583
    .line 584
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v6

    .line 588
    if-eqz v6, :cond_c

    .line 589
    .line 590
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    if-nez v6, :cond_d

    .line 595
    .line 596
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->on(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    :goto_2
    move p1, v2

    .line 600
    goto :goto_3

    .line 601
    :cond_c
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    .line 602
    .line 603
    .line 604
    move-result v6

    .line 605
    if-eqz v6, :cond_d

    .line 606
    .line 607
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->off(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    goto :goto_2

    .line 611
    :cond_d
    :goto_3
    if-eqz p1, :cond_9

    .line 612
    .line 613
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 614
    .line 615
    const-string p1, "SemGoodCatchService"

    .line 616
    .line 617
    new-instance v6, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .line 621
    .line 622
    const-string v7, "GoodCatchClient has module=\'"

    .line 623
    .line 624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    const-string v4, "\', function=\'"

    .line 631
    .line 632
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    const-string v4, "\', value -> \'"

    .line 639
    .line 640
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    .line 644
    .line 645
    .line 646
    move-result v4

    .line 647
    if-eqz v4, :cond_e

    .line 648
    .line 649
    const-string/jumbo v4, "on"

    .line 650
    .line 651
    .line 652
    goto :goto_4

    .line 653
    :cond_e
    const-string/jumbo v4, "off"

    .line 654
    .line 655
    .line 656
    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v4, "\'"

    .line 660
    .line 661
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v4

    .line 668
    invoke-static {p1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    goto/16 :goto_0

    .line 672
    .line 673
    :cond_f
    :goto_5
    const-string v4, "SemGoodCatchService"

    .line 674
    .line 675
    const-string v5, "It is abnormal that query results have null string."

    .line 676
    .line 677
    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 678
    .line 679
    .line 680
    goto/16 :goto_1

    .line 681
    .line 682
    :cond_10
    if-eqz v3, :cond_11

    .line 683
    .line 684
    :goto_6
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 685
    .line 686
    .line 687
    goto :goto_8

    .line 688
    :catchall_1
    move-exception p0

    .line 689
    goto :goto_a

    .line 690
    :goto_7
    :try_start_4
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 691
    .line 692
    const-string p1, "SemGoodCatchService"

    .line 693
    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    const-string/jumbo v2, "update error "

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object p0

    .line 712
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 713
    .line 714
    .line 715
    if-eqz v3, :cond_11

    .line 716
    .line 717
    goto :goto_6

    .line 718
    :cond_11
    :goto_8
    :try_start_5
    monitor-exit v0

    .line 719
    goto :goto_b

    .line 720
    :goto_9
    if-eqz v3, :cond_12

    .line 721
    .line 722
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 723
    .line 724
    .line 725
    :cond_12
    throw p0

    .line 726
    :goto_a
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 727
    throw p0

    .line 728
    :cond_13
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 729
    .line 730
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 731
    .line 732
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 736
    .line 737
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 738
    .line 739
    .line 740
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 741
    .line 742
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 743
    .line 744
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 745
    .line 746
    .line 747
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 748
    .line 749
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 750
    .line 751
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 752
    .line 753
    .line 754
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 755
    .line 756
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 757
    .line 758
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 759
    .line 760
    .line 761
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 762
    .line 763
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 764
    .line 765
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 766
    .line 767
    .line 768
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 769
    .line 770
    :goto_b
    return-void
.end method
