.class public final Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    const-string v0, "AbsCocktailBarStatePolicy"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "handleMessage: entry what = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq v0, v1, :cond_14

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    if-eq v0, v2, :cond_11

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eq v0, v2, :cond_a

    .line 34
    .line 35
    const/16 v2, 0x31

    .line 36
    .line 37
    if-eq v0, v2, :cond_7

    .line 38
    .line 39
    const/16 v1, 0x33

    .line 40
    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    .line 43
    const/16 p1, 0x65

    .line 44
    .line 45
    if-eq v0, p1, :cond_0

    .line 46
    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 59
    .line 60
    .line 61
    iput-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    .line 62
    .line 63
    iput-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    monitor-exit v0

    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_2
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 74
    .line 75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Landroid/os/IBinder;

    .line 78
    .line 79
    check-cast p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    .line 80
    .line 81
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->DEBUG:Z

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    const-string v0, "OverlayCocktailBarStatePolicy"

    .line 89
    .line 90
    const-string/jumbo v1, "handleNotifyCurrentStateToBinder"

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 103
    .line 104
    const v2, 0xffff

    .line 105
    .line 106
    .line 107
    and-int/2addr v1, v2

    .line 108
    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 109
    .line 110
    const/16 v1, 0x4d

    .line 111
    .line 112
    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .line 115
    .line 116
    check-cast p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .line 117
    .line 118
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    .line 119
    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    const-string v1, "CocktailBarStatePolicyController"

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string/jumbo v3, "notifyCocktailBarStateToBinder: visibility = "

    .line 130
    .line 131
    .line 132
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget v3, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v3, " position = "

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget v3, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v3, " showtimeout = "

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v3, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 156
    .line 157
    invoke-static {v2, v3, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    .line 161
    .line 162
    monitor-enter v2

    .line 163
    :try_start_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_6

    .line 174
    .line 175
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 180
    .line 181
    iget-object v3, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    .line 182
    .line 183
    invoke-interface {p1, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_5

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catchall_1
    move-exception p0

    .line 194
    goto :goto_3

    .line 195
    :cond_6
    :goto_2
    monitor-exit v2

    .line 196
    goto/16 :goto_9

    .line 197
    .line 198
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    throw p0

    .line 200
    :cond_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 201
    .line 202
    if-ne p1, v1, :cond_8

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_8
    const/4 v1, 0x0

    .line 206
    :goto_4
    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 207
    .line 208
    check-cast p1, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    .line 209
    .line 210
    iget-object v0, p1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 211
    .line 212
    iget-boolean v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 213
    .line 214
    if-eq v0, v1, :cond_9

    .line 215
    .line 216
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 217
    .line 218
    iget-object v2, p1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 219
    .line 220
    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 221
    .line 222
    invoke-direct {v0, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 223
    .line 224
    .line 225
    iput-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 226
    .line 227
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 228
    .line 229
    or-int/lit8 v2, v2, 0x40

    .line 230
    .line 231
    iput v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 232
    .line 233
    iget-object p1, p1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .line 234
    .line 235
    check-cast p1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 238
    .line 239
    .line 240
    :cond_9
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 241
    .line 242
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 243
    .line 244
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 245
    .line 246
    goto/16 :goto_9

    .line 247
    .line 248
    :cond_a
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 249
    .line 250
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 251
    .line 252
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    .line 254
    if-eqz v2, :cond_b

    .line 255
    .line 256
    move-object v3, v2

    .line 257
    check-cast v3, Ljava/lang/String;

    .line 258
    .line 259
    :cond_b
    check-cast v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 265
    .line 266
    iget-object v4, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 267
    .line 268
    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 269
    .line 270
    invoke-direct {v2, v4}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 271
    .line 272
    .line 273
    iput v1, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 274
    .line 275
    iget v1, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 276
    .line 277
    const/16 v4, 0x80

    .line 278
    .line 279
    or-int/2addr v1, v4

    .line 280
    iput v1, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 281
    .line 282
    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .line 283
    .line 284
    check-cast v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .line 285
    .line 286
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    .line 287
    .line 288
    if-eqz v1, :cond_c

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    const-string v1, "CocktailBarStatePolicyController"

    .line 294
    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string/jumbo v6, "notifyCocktailBarStateExceptCallingPackage: visibility = "

    .line 298
    .line 299
    .line 300
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget v6, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 304
    .line 305
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v6, " windowType = "

    .line 309
    .line 310
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget v6, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 314
    .line 315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v6, " changeFlag = "

    .line 319
    .line 320
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget v6, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 324
    .line 325
    invoke-static {v5, v6, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :cond_c
    iget-object v1, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    .line 329
    .line 330
    monitor-enter v1

    .line 331
    :try_start_2
    iget v5, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 332
    .line 333
    if-ne v5, v4, :cond_f

    .line 334
    .line 335
    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    :cond_d
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    if-eqz v4, :cond_10

    .line 346
    .line 347
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    check-cast v4, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 352
    .line 353
    if-eqz v3, :cond_e

    .line 354
    .line 355
    iget-object v5, v4, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    .line 356
    .line 357
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-nez v5, :cond_d

    .line 366
    .line 367
    goto :goto_6

    .line 368
    :catchall_2
    move-exception p0

    .line 369
    goto :goto_8

    .line 370
    :cond_e
    :goto_6
    invoke-virtual {v4, v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_f
    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_10

    .line 385
    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    check-cast v3, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 391
    .line 392
    invoke-virtual {v3, v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 393
    .line 394
    .line 395
    goto :goto_7

    .line 396
    :cond_10
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 397
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 398
    .line 399
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 400
    .line 401
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 402
    .line 403
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 404
    .line 405
    goto/16 :goto_9

    .line 406
    .line 407
    :goto_8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 408
    throw p0

    .line 409
    :cond_11
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 410
    .line 411
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 412
    .line 413
    check-cast v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    .line 414
    .line 415
    sget-boolean v3, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->DEBUG:Z

    .line 416
    .line 417
    if-eqz v3, :cond_12

    .line 418
    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string/jumbo v4, "handleUpdatePosition: mPosition = "

    .line 422
    .line 423
    .line 424
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    iget-object v4, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 428
    .line 429
    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 430
    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    const-string v4, " position = "

    .line 435
    .line 436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    const-string v4, "OverlayCocktailBarStatePolicy"

    .line 447
    .line 448
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    :cond_12
    iget-object v3, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 452
    .line 453
    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 454
    .line 455
    if-eq v3, v1, :cond_13

    .line 456
    .line 457
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 458
    .line 459
    iget-object v4, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 460
    .line 461
    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 462
    .line 463
    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 464
    .line 465
    .line 466
    iput v1, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 467
    .line 468
    iget v1, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 469
    .line 470
    or-int/2addr v1, v2

    .line 471
    iput v1, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 472
    .line 473
    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .line 474
    .line 475
    check-cast v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .line 476
    .line 477
    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 478
    .line 479
    .line 480
    :cond_13
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 481
    .line 482
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 483
    .line 484
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 485
    .line 486
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 487
    .line 488
    goto :goto_9

    .line 489
    :cond_14
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 490
    .line 491
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 492
    .line 493
    check-cast p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    .line 494
    .line 495
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->DEBUG:Z

    .line 496
    .line 497
    if-eqz v0, :cond_15

    .line 498
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    const-string/jumbo v2, "handleUpdateVisibility: mVisibility = "

    .line 502
    .line 503
    .line 504
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 508
    .line 509
    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 510
    .line 511
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v2, " visibility = "

    .line 515
    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    const-string v2, "OverlayCocktailBarStatePolicy"

    .line 527
    .line 528
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    :cond_15
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 532
    .line 533
    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 534
    .line 535
    if-eq v0, p1, :cond_16

    .line 536
    .line 537
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 538
    .line 539
    invoke-direct {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 540
    .line 541
    .line 542
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 543
    .line 544
    or-int/2addr v1, v2

    .line 545
    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 546
    .line 547
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .line 548
    .line 549
    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .line 550
    .line 551
    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 552
    .line 553
    .line 554
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 555
    .line 556
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 557
    .line 558
    :cond_16
    :goto_9
    return-void
.end method
