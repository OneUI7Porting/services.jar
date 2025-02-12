.class public final Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG:Z

.field public static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPhoneApp:Landroid/content/ComponentName;

.field public final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 13
    .line 14
    return-void
.end method

.method public static audienceMatches(FI)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    .line 10
    const-string p0, "Encountered unknown source: "

    .line 11
    .line 12
    const-string v1, "ZenModeHelper"

    .line 13
    .line 14
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpl-float p0, p0, p1

    .line 21
    .line 22
    if-ltz p0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, v1

    .line 26
    :goto_0
    return v0

    .line 27
    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    .line 28
    .line 29
    cmpl-float p0, p0, p1

    .line 30
    .line 31
    if-ltz p0, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    move v0, v1

    .line 35
    :cond_4
    :goto_1
    return v0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;I)Z
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v3, p5

    .line 10
    .line 11
    move/from16 v10, p6

    .line 12
    .line 13
    const-string v11, ". Returning timeoutAffinity=1.0"

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v12, 0x0

    .line 17
    if-ne v0, v4, :cond_0

    .line 18
    .line 19
    const-string/jumbo v0, "no interruptions"

    .line 20
    .line 21
    .line 22
    invoke-static {v10, v0, v12}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return v12

    .line 26
    :cond_0
    const/4 v4, 0x3

    .line 27
    if-ne v0, v4, :cond_1

    .line 28
    .line 29
    const-string v0, "alarms only"

    .line 30
    .line 31
    invoke-static {v10, v0, v12}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return v12

    .line 35
    :cond_1
    const/4 v4, 0x1

    .line 36
    if-ne v0, v4, :cond_d

    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    iget v5, v1, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    .line 47
    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-lez v5, :cond_2

    .line 55
    .line 56
    invoke-virtual {v3, v2, v9, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->isInExceptionContacts(Landroid/os/UserHandle;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    const-string v0, "contact matched (allowed)"

    .line 63
    .line 64
    invoke-static {v10, v0, v4}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    return v4

    .line 68
    :cond_2
    iget v5, v1, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    .line 69
    .line 70
    if-ne v5, v4, :cond_4

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-lez v5, :cond_4

    .line 83
    .line 84
    invoke-virtual {v3, v2, v9, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->isInExceptionContacts(Landroid/os/UserHandle;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    :cond_3
    const-string v0, "contact matched (disallowed)"

    .line 91
    .line 92
    invoke-static {v10, v0, v4}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    return v4

    .line 96
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    move-object/from16 v6, p0

    .line 106
    .line 107
    invoke-static {v0, v6, v9, v5}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    const-string/jumbo v0, "repeat caller"

    .line 114
    .line 115
    .line 116
    invoke-static {v10, v0, v4}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    return v4

    .line 120
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    const-string v0, "calls not allowed"

    .line 127
    .line 128
    invoke-static {v10, v0, v12}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    return v12

    .line 132
    :cond_6
    if-eqz v3, :cond_d

    .line 133
    .line 134
    const-string v0, "Timeout while waiting for affinity: "

    .line 135
    .line 136
    sget-boolean v5, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 137
    .line 138
    const-string v13, "ValidateNoPeople"

    .line 139
    .line 140
    if-eqz v5, :cond_7

    .line 141
    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v6, "checking affinity for "

    .line 145
    .line 146
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-static {v13, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :cond_7
    const/4 v5, 0x0

    .line 160
    if-nez v9, :cond_8

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 165
    .line 166
    .line 167
    move-result-wide v6

    .line 168
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    new-array v15, v4, [F

    .line 173
    .line 174
    new-instance v8, Landroid/util/ArraySet;

    .line 175
    .line 176
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v2}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-nez v4, :cond_9

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_9
    const/4 v6, 0x0

    .line 187
    move-object/from16 v2, p5

    .line 188
    .line 189
    move-object v3, v4

    .line 190
    move-object v4, v14

    .line 191
    move-object/from16 v5, p4

    .line 192
    .line 193
    move-object v7, v15

    .line 194
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[FLandroid/util/ArraySet;)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    aget v5, v15, v12

    .line 199
    .line 200
    if-eqz v2, :cond_b

    .line 201
    .line 202
    new-instance v3, Ljava/util/concurrent/Semaphore;

    .line 203
    .line 204
    invoke-direct {v3, v12}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 205
    .line 206
    .line 207
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 208
    .line 209
    new-instance v6, Lcom/android/server/notification/ValidateNotificationPeople$2;

    .line 210
    .line 211
    invoke-direct {v6, v2, v3}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    const/16 v4, 0xbb8

    .line 218
    .line 219
    int-to-long v6, v4

    .line 220
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 221
    .line 222
    invoke-virtual {v3, v6, v7, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-nez v3, :cond_a

    .line 227
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 245
    .line 246
    const/high16 v5, 0x3f800000    # 1.0f

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    goto :goto_0

    .line 251
    :cond_a
    iget v0, v2, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 252
    .line 253
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    move v5, v0

    .line 258
    goto :goto_1

    .line 259
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v3, "InterruptedException while waiting for affinity: "

    .line 262
    .line 263
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v3, ". Returning affinity="

    .line 270
    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-static {v13, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .line 283
    .line 284
    :cond_b
    :goto_1
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const/16 v2, 0x16

    .line 289
    .line 290
    if-nez v9, :cond_c

    .line 291
    .line 292
    const-string v0, "extra is null"

    .line 293
    .line 294
    invoke-static {v2, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_c
    sget-object v3, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    .line 299
    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v4, ", contactAffinity: "

    .line 313
    .line 314
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {v2, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    invoke-static {v5, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(FI)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v2, "contact affinity "

    .line 338
    .line 339
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v10, v1, v0}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    .line 350
    .line 351
    .line 352
    return v0

    .line 353
    :cond_d
    const-string/jumbo v0, "no restrictions"

    .line 354
    .line 355
    .line 356
    invoke-static {v10, v0, v4}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    .line 357
    .line 358
    .line 359
    return v4
.end method

.method public static maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mInterceptSet:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    const-string/jumbo v0, "new:"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-eq v0, p1, :cond_2

    .line 21
    .line 22
    const-string/jumbo v0, "updated:"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 30
    .line 31
    sget-object p1, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ","

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {p0, p2}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method public static shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(FI)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "!audienceMatches,affinity="

    .line 12
    .line 13
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {p0, v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "affinity="

    .line 31
    .line 32
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v0
.end method


# virtual methods
.method public final isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string/jumbo v2, "telecom"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/telecom/TelecomManager;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    iput-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 33
    .line 34
    sget-boolean v1, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Default phone app: "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "ZenModeHelper"

    .line 55
    .line 56
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const-string p0, "call"

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    :goto_1
    const/4 p0, 0x1

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    const/4 p0, 0x0

    .line 87
    :goto_2
    return p0
.end method

.method public final matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 11

    .line 1
    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_18

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string/jumbo v0, "phone"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 16
    .line 17
    const-string v0, "ZenModeHelper"

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p0, "cannot get a TelephonyManager."

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    return v1

    .line 62
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v3, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/4 v5, 0x1

    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const-string v6, ";"

    .line 97
    .line 98
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    move v6, v1

    .line 103
    :goto_2
    array-length v7, v4

    .line 104
    if-ge v6, v7, :cond_3

    .line 105
    .line 106
    if-nez v6, :cond_5

    .line 107
    .line 108
    aget-object v7, v4, v1

    .line 109
    .line 110
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_5
    if-ne v6, v5, :cond_6

    .line 114
    .line 115
    aget-object v7, v4, v5

    .line 116
    .line 117
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    iget-object p0, p2, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 124
    .line 125
    if-eqz p0, :cond_c

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_c

    .line 136
    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Ljava/lang/String;

    .line 142
    .line 143
    if-nez v4, :cond_9

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_9
    move v6, v1

    .line 147
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-ge v6, v7, :cond_8

    .line 152
    .line 153
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    if-nez v7, :cond_a

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_a
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    check-cast v7, Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v4, v7, v2}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_b

    .line 171
    .line 172
    return v5

    .line 173
    :cond_b
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_c
    iget-object p0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 183
    .line 184
    invoke-static {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    if-eqz p0, :cond_18

    .line 189
    .line 190
    move p2, v1

    .line 191
    :goto_6
    array-length v4, p0

    .line 192
    if-ge p2, v4, :cond_18

    .line 193
    .line 194
    aget-object v4, p0, p2

    .line 195
    .line 196
    if-nez v4, :cond_d

    .line 197
    .line 198
    goto/16 :goto_c

    .line 199
    .line 200
    :cond_d
    const-string v6, ":"

    .line 201
    .line 202
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    if-nez v4, :cond_e

    .line 207
    .line 208
    goto/16 :goto_c

    .line 209
    .line 210
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string/jumbo v7, "received contact type="

    .line 213
    .line 214
    .line 215
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    aget-object v7, v4, v1

    .line 219
    .line 220
    invoke-static {v6, v7, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    array-length v6, v4

    .line 224
    const/4 v7, 0x2

    .line 225
    if-ge v6, v7, :cond_f

    .line 226
    .line 227
    const-string v4, "The contact info doesn\'t have a number."

    .line 228
    .line 229
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    goto/16 :goto_c

    .line 233
    .line 234
    :cond_f
    aget-object v6, v4, v1

    .line 235
    .line 236
    const-string/jumbo v7, "tel"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    const/4 v7, 0x0

    .line 244
    if-eqz v6, :cond_14

    .line 245
    .line 246
    :try_start_0
    aget-object v4, v4, v5

    .line 247
    .line 248
    const-string v6, "UTF-8"

    .line 249
    .line 250
    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_7

    .line 255
    :catch_0
    move-exception v4

    .line 256
    const-string v6, "URLDecoder.decode error"

    .line 257
    .line 258
    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string/jumbo v6, "received contact number="

    .line 267
    .line 268
    .line 269
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    new-instance v6, Ljava/lang/StringBuffer;

    .line 273
    .line 274
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .line 276
    .line 277
    if-nez v7, :cond_10

    .line 278
    .line 279
    const-string/jumbo v8, "null"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    goto :goto_a

    .line 290
    :cond_10
    move v8, v1

    .line 291
    :goto_8
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    if-ge v8, v9, :cond_12

    .line 296
    .line 297
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    const/16 v10, 0x2d

    .line 302
    .line 303
    if-eq v9, v10, :cond_11

    .line 304
    .line 305
    packed-switch v9, :pswitch_data_0

    .line 306
    .line 307
    .line 308
    goto :goto_9

    .line 309
    :pswitch_0
    const/16 v9, 0x69

    .line 310
    .line 311
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    .line 313
    .line 314
    goto :goto_9

    .line 315
    :pswitch_1
    const/16 v9, 0x68

    .line 316
    .line 317
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 318
    .line 319
    .line 320
    goto :goto_9

    .line 321
    :pswitch_2
    const/16 v9, 0x67

    .line 322
    .line 323
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 324
    .line 325
    .line 326
    goto :goto_9

    .line 327
    :pswitch_3
    const/16 v9, 0x66

    .line 328
    .line 329
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 330
    .line 331
    .line 332
    goto :goto_9

    .line 333
    :pswitch_4
    const/16 v9, 0x65

    .line 334
    .line 335
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    .line 337
    .line 338
    goto :goto_9

    .line 339
    :pswitch_5
    const/16 v9, 0x64

    .line 340
    .line 341
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    .line 343
    .line 344
    goto :goto_9

    .line 345
    :pswitch_6
    const/16 v9, 0x63

    .line 346
    .line 347
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    .line 349
    .line 350
    goto :goto_9

    .line 351
    :pswitch_7
    const/16 v9, 0x62

    .line 352
    .line 353
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    .line 355
    .line 356
    goto :goto_9

    .line 357
    :pswitch_8
    const/16 v9, 0x61

    .line 358
    .line 359
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 360
    .line 361
    .line 362
    goto :goto_9

    .line 363
    :pswitch_9
    const/16 v9, 0x6f

    .line 364
    .line 365
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_11
    const/16 v9, 0x2b

    .line 370
    .line 371
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 372
    .line 373
    .line 374
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    :goto_a
    invoke-static {v4, v6, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    move v4, v1

    .line 385
    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-ge v4, v6, :cond_17

    .line 390
    .line 391
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    check-cast v6, Ljava/lang/String;

    .line 396
    .line 397
    invoke-static {v7, v6, v2}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    if-eqz v6, :cond_13

    .line 402
    .line 403
    return v5

    .line 404
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 405
    .line 406
    goto :goto_b

    .line 407
    :cond_14
    aget-object v6, v4, v1

    .line 408
    .line 409
    const-string v8, "contactId"

    .line 410
    .line 411
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-eqz v6, :cond_16

    .line 416
    .line 417
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    if-eqz v4, :cond_17

    .line 422
    .line 423
    sget-boolean p0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    .line 424
    .line 425
    if-eqz p0, :cond_15

    .line 426
    .line 427
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    :cond_15
    return v5

    .line 431
    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string/jumbo v7, "received contact specificUri="

    .line 434
    .line 435
    .line 436
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    aget-object v4, v4, v5

    .line 440
    .line 441
    invoke-static {v6, v4, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :cond_17
    :goto_c
    add-int/lit8 p2, p2, 0x1

    .line 445
    .line 446
    goto/16 :goto_6

    .line 447
    .line 448
    :cond_18
    return v1

    .line 449
    :pswitch_data_0
    .packed-switch 0x30
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

.method public final shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p3, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    const-string p0, "criticalNotification"

    .line 11
    .line 12
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget v1, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 17
    .line 18
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v3, "android"

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v3, 0x30

    .line 45
    .line 46
    if-ne v3, v1, :cond_2

    .line 47
    .line 48
    const-string/jumbo p0, "systemDndChangedNotification"

    .line 49
    .line 50
    .line 51
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v0

    .line 55
    :cond_2
    const/4 v1, 0x4

    .line 56
    const-string v3, "alarm"

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    if-eq p1, v4, :cond_7

    .line 60
    .line 61
    if-eq p1, v2, :cond_6

    .line 62
    .line 63
    const/4 p0, 0x3

    .line 64
    if-eq p1, p0, :cond_3

    .line 65
    .line 66
    const-string/jumbo p0, "unknownZenMode"

    .line 67
    .line 68
    .line 69
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v0

    .line 73
    :cond_3
    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_5

    .line 78
    .line 79
    iget-object p0, p3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-ne p0, v1, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    const-string p0, "alarmsOnly"

    .line 89
    .line 90
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return v4

    .line 94
    :cond_5
    :goto_0
    invoke-static {p3, v0, v3}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return v0

    .line 98
    :cond_6
    const-string/jumbo p0, "none"

    .line 99
    .line 100
    .line 101
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return v4

    .line 105
    :cond_7
    iget p1, p2, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    .line 106
    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    const/4 v5, -0x1

    .line 110
    if-ne p1, v5, :cond_c

    .line 111
    .line 112
    :cond_8
    iget p1, p3, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 113
    .line 114
    if-ne p1, v2, :cond_9

    .line 115
    .line 116
    move p1, v4

    .line 117
    goto :goto_1

    .line 118
    :cond_9
    move p1, v0

    .line 119
    :goto_1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_b

    .line 124
    .line 125
    if-eqz p1, :cond_a

    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_a

    .line 132
    .line 133
    move p1, v4

    .line 134
    goto :goto_2

    .line 135
    :cond_a
    move p1, v0

    .line 136
    :cond_b
    :goto_2
    if-eqz p1, :cond_c

    .line 137
    .line 138
    const-string/jumbo p0, "priorityApp (allowed)"

    .line 139
    .line 140
    .line 141
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v0

    .line 145
    :cond_c
    iget p1, p2, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    .line 146
    .line 147
    if-ne p1, v4, :cond_11

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_10

    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_11

    .line 168
    .line 169
    iget p1, p3, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 170
    .line 171
    if-ne p1, v2, :cond_d

    .line 172
    .line 173
    move p1, v4

    .line 174
    goto :goto_3

    .line 175
    :cond_d
    move p1, v0

    .line 176
    :goto_3
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_f

    .line 181
    .line 182
    if-eqz p1, :cond_e

    .line 183
    .line 184
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_e

    .line 189
    .line 190
    move p1, v4

    .line 191
    goto :goto_4

    .line 192
    :cond_e
    move p1, v0

    .line 193
    :cond_f
    :goto_4
    if-nez p1, :cond_11

    .line 194
    .line 195
    :cond_10
    const-string/jumbo p0, "priorityApp (disallowed)"

    .line 196
    .line 197
    .line 198
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return v0

    .line 202
    :cond_11
    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_13

    .line 207
    .line 208
    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-ne p1, v1, :cond_12

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_12
    move p1, v0

    .line 218
    goto :goto_6

    .line 219
    :cond_13
    :goto_5
    move p1, v4

    .line 220
    :goto_6
    if-eqz p1, :cond_15

    .line 221
    .line 222
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-nez p0, :cond_14

    .line 227
    .line 228
    const-string p0, "!allowAlarms"

    .line 229
    .line 230
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return v4

    .line 234
    :cond_14
    const-string p0, "allowedAlarm"

    .line 235
    .line 236
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return v0

    .line 240
    :cond_15
    const-string p1, "event"

    .line 241
    .line 242
    invoke-virtual {p3, p1}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-eqz p1, :cond_17

    .line 247
    .line 248
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-nez p0, :cond_16

    .line 253
    .line 254
    const-string p0, "!allowEvents"

    .line 255
    .line 256
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return v4

    .line 260
    :cond_16
    const-string p0, "allowedEvent"

    .line 261
    .line 262
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return v0

    .line 266
    :cond_17
    const-string/jumbo p1, "reminder"

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3, p1}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_19

    .line 274
    .line 275
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    if-nez p0, :cond_18

    .line 280
    .line 281
    const-string p0, "!allowReminders"

    .line 282
    .line 283
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return v4

    .line 287
    :cond_18
    const-string p0, "allowedReminder"

    .line 288
    .line 289
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    return v0

    .line 293
    :cond_19
    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 294
    .line 295
    if-eqz p1, :cond_1b

    .line 296
    .line 297
    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    const/4 v1, 0x5

    .line 308
    if-ne p1, v1, :cond_1b

    .line 309
    .line 310
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    .line 311
    .line 312
    .line 313
    move-result p0

    .line 314
    if-nez p0, :cond_1a

    .line 315
    .line 316
    const-string p0, "!allowMedia"

    .line 317
    .line 318
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    return v4

    .line 322
    :cond_1a
    const-string p0, "allowedMedia"

    .line 323
    .line 324
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return v0

    .line 328
    :cond_1b
    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 329
    .line 330
    if-eqz p1, :cond_1d

    .line 331
    .line 332
    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 333
    .line 334
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    const/4 v1, 0x6

    .line 343
    if-ne p1, v1, :cond_1d

    .line 344
    .line 345
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    .line 346
    .line 347
    .line 348
    move-result p0

    .line 349
    if-nez p0, :cond_1c

    .line 350
    .line 351
    const-string p0, "!allowSystem"

    .line 352
    .line 353
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    return v4

    .line 357
    :cond_1c
    const-string p0, "allowedSystem"

    .line 358
    .line 359
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    return v0

    .line 363
    :cond_1d
    iget p1, p2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    .line 364
    .line 365
    if-nez p1, :cond_1e

    .line 366
    .line 367
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ZenModeFiltering;->matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_1e

    .line 372
    .line 373
    const-string p0, "exceptionContactsMatches - selected contacts"

    .line 374
    .line 375
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    return v0

    .line 379
    :cond_1e
    iget p1, p2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    .line 380
    .line 381
    if-ne p1, v4, :cond_20

    .line 382
    .line 383
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-nez p1, :cond_1f

    .line 392
    .line 393
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-nez p1, :cond_20

    .line 402
    .line 403
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ZenModeFiltering;->matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-nez p1, :cond_20

    .line 408
    .line 409
    :cond_1f
    const-string p0, "exceptionContactsMatches - except selected contacts"

    .line 410
    .line 411
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    return v0

    .line 415
    :cond_20
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    if-eqz p1, :cond_22

    .line 420
    .line 421
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    if-eqz p1, :cond_22

    .line 426
    .line 427
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 428
    .line 429
    if-ne p1, v4, :cond_21

    .line 430
    .line 431
    const-string p0, "conversationAnyone"

    .line 432
    .line 433
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 434
    .line 435
    .line 436
    return v0

    .line 437
    :cond_21
    if-ne p1, v2, :cond_22

    .line 438
    .line 439
    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 442
    .line 443
    .line 444
    move-result p1

    .line 445
    if-eqz p1, :cond_22

    .line 446
    .line 447
    const-string p0, "conversationMatches"

    .line 448
    .line 449
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 450
    .line 451
    .line 452
    return v0

    .line 453
    :cond_22
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    if-eqz p1, :cond_26

    .line 458
    .line 459
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    if-eqz p1, :cond_24

    .line 464
    .line 465
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 466
    .line 467
    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 468
    .line 469
    if-eqz p1, :cond_23

    .line 470
    .line 471
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    if-eqz p1, :cond_23

    .line 476
    .line 477
    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 478
    .line 479
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 484
    .line 485
    goto :goto_7

    .line 486
    :cond_23
    const/4 p1, 0x0

    .line 487
    :goto_7
    iget-object v1, p3, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 488
    .line 489
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 490
    .line 491
    invoke-static {v2, p0, p1, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    .line 492
    .line 493
    .line 494
    move-result p0

    .line 495
    if-eqz p0, :cond_24

    .line 496
    .line 497
    const-string/jumbo p0, "repeatCaller"

    .line 498
    .line 499
    .line 500
    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 501
    .line 502
    .line 503
    return v0

    .line 504
    :cond_24
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    .line 505
    .line 506
    .line 507
    move-result p0

    .line 508
    if-nez p0, :cond_25

    .line 509
    .line 510
    const-string p0, "!allowCalls"

    .line 511
    .line 512
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 513
    .line 514
    .line 515
    return v4

    .line 516
    :cond_25
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    .line 517
    .line 518
    .line 519
    move-result p0

    .line 520
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;I)Z

    .line 521
    .line 522
    .line 523
    move-result p0

    .line 524
    return p0

    .line 525
    :cond_26
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 526
    .line 527
    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 528
    .line 529
    invoke-virtual {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isMessaging(Landroid/service/notification/StatusBarNotification;)Z

    .line 530
    .line 531
    .line 532
    move-result p0

    .line 533
    if-eqz p0, :cond_28

    .line 534
    .line 535
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    .line 536
    .line 537
    .line 538
    move-result p0

    .line 539
    if-nez p0, :cond_27

    .line 540
    .line 541
    const-string p0, "!allowMessages"

    .line 542
    .line 543
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 544
    .line 545
    .line 546
    return v4

    .line 547
    :cond_27
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    .line 548
    .line 549
    .line 550
    move-result p0

    .line 551
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;I)Z

    .line 552
    .line 553
    .line 554
    move-result p0

    .line 555
    return p0

    .line 556
    :cond_28
    const-string p0, "!priority"

    .line 557
    .line 558
    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    .line 559
    .line 560
    .line 561
    return v4
.end method
