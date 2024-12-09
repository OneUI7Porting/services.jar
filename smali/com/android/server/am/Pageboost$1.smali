.class public final Lcom/android/server/am/Pageboost$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/Pageboost$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "Pageboost"

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget p0, p0, Lcom/android/server/am/Pageboost$1;->$r8$classId:I

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x7

    .line 38
    invoke-static {p1, v1, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const/16 p1, 0x8

    .line 61
    .line 62
    invoke-static {p1, v1, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 67
    .line 68
    const-string/jumbo p0, "failed to mPackageReceiver by exception"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const-string/jumbo p0, "apps "

    .line 76
    .line 77
    .line 78
    const-string/jumbo v2, "package "

    .line 79
    .line 80
    .line 81
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v4, "android.intent.action.USER_UNLOCKED"

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 94
    .line 95
    const-string/jumbo p0, "received ACTION_USER_UNLOCKED"

    .line 96
    .line 97
    .line 98
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    sget-boolean p0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    .line 102
    .line 103
    if-nez p0, :cond_11

    .line 104
    .line 105
    const-string/jumbo p0, "init mGlobalAppLRU"

    .line 106
    .line 107
    .line 108
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    sput-boolean p1, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    .line 112
    .line 113
    const/4 v4, -0x1

    .line 114
    const/16 v5, 0x2710

    .line 115
    .line 116
    const/4 v1, 0x4

    .line 117
    const/4 v6, 0x0

    .line 118
    const/4 v2, -0x1

    .line 119
    const/4 v3, -0x1

    .line 120
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_7

    .line 124
    .line 125
    :cond_3
    sget-object v4, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 126
    .line 127
    if-nez v4, :cond_4

    .line 128
    .line 129
    goto/16 :goto_7

    .line 130
    .line 131
    :cond_4
    const-string/jumbo v4, "com.sec.android.launcher.action.RUN_APP"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    const-string/jumbo v5, "package"

    .line 139
    .line 140
    .line 141
    if-nez v4, :cond_9

    .line 142
    .line 143
    :try_start_2
    const-string/jumbo v4, "com.android.server.am.ACTION_PAGEBOOST"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_5

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    const-string/jumbo p0, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_6

    .line 161
    .line 162
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const-string/jumbo p1, "reason"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_6
    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    .line 179
    .line 180
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-nez p0, :cond_8

    .line 185
    .line 186
    const-string p0, "android.intent.action.REBOOT"

    .line 187
    .line 188
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-eqz p0, :cond_7

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    const-string/jumbo p0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_11

    .line 203
    .line 204
    const/4 v4, -0x1

    .line 205
    const/4 v5, 0x0

    .line 206
    const/16 v1, 0xd

    .line 207
    .line 208
    const/4 v6, 0x0

    .line 209
    const/4 v2, -0x1

    .line 210
    const/4 v3, -0x1

    .line 211
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :cond_8
    :goto_1
    const/4 v10, -0x1

    .line 217
    const/4 v11, 0x0

    .line 218
    const/4 v7, 0x6

    .line 219
    const/4 v12, 0x0

    .line 220
    const/4 v8, -0x1

    .line 221
    const/4 v9, -0x1

    .line 222
    invoke-static/range {v7 .. v12}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_7

    .line 226
    .line 227
    :cond_9
    :goto_2
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    if-eqz v3, :cond_a

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_a
    const-string/jumbo v2, "apps"

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    if-nez p2, :cond_b

    .line 257
    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_b
    const-string p0, " "

    .line 275
    .line 276
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    new-instance p2, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 281
    .line 282
    invoke-direct {p2}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    .line 283
    .line 284
    .line 285
    move v2, v1

    .line 286
    :goto_3
    array-length v3, p0

    .line 287
    const/4 v4, 0x2

    .line 288
    if-ge v2, v3, :cond_10

    .line 289
    .line 290
    aget-object v3, p0, v2

    .line 291
    .line 292
    if-nez v3, :cond_c

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_c
    const-string v5, "/"

    .line 296
    .line 297
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    aget-object v3, v3, v1

    .line 302
    .line 303
    if-nez v3, :cond_d

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_d
    sget-object v4, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 307
    .line 308
    if-eqz v4, :cond_e

    .line 309
    .line 310
    invoke-virtual {v4, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    goto :goto_4

    .line 315
    :cond_e
    const/4 v3, 0x0

    .line 316
    :goto_4
    if-eqz v3, :cond_f

    .line 317
    .line 318
    invoke-virtual {p2, v3, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 319
    .line 320
    .line 321
    :cond_f
    :goto_5
    add-int/2addr v2, p1

    .line 322
    goto :goto_3

    .line 323
    :cond_10
    :goto_6
    invoke-static {v4, v1, p2}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 324
    .line 325
    .line 326
    goto :goto_7

    .line 327
    :catch_1
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 328
    .line 329
    const-string/jumbo p0, "failed to mReceiver by exception"

    .line 330
    .line 331
    .line 332
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :cond_11
    :goto_7
    return-void

    .line 336
    nop

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
