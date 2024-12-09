.class public final Lcom/android/server/RealTimeTokenService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/RealTimeTokenService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/RealTimeTokenService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/RealTimeTokenService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "RealTimeTokenService"

    .line 3
    .line 4
    iget v2, p0, Lcom/android/server/RealTimeTokenService$2;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string p2, "Boot Completed Receiver"

    .line 10
    .line 11
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 15
    .line 16
    sget-object v1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, p2, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iput-wide v1, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 34
    .line 35
    iget-wide v1, p2, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 36
    .line 37
    iget-wide v3, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 38
    .line 39
    sub-long/2addr v1, v3

    .line 40
    iput-wide v1, p2, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/android/server/RealTimeTokenService;->initTokenStorage()I

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 46
    .line 47
    invoke-static {p2, p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->getActiveTokenNumber()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-lez p1, :cond_1

    .line 60
    .line 61
    :try_start_0
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 64
    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 71
    .line 72
    iput-object v0, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance p2, Lcom/android/server/RealTimeTokenService$1;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Lcom/android/server/RealTimeTokenService$1;-><init>(Lcom/android/server/RealTimeTokenService;)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 90
    .line 91
    new-instance p2, Ljava/util/Timer;

    .line 92
    .line 93
    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 103
    .line 104
    const-wide/16 v2, 0x0

    .line 105
    .line 106
    const-wide/32 v4, 0x1499700

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :cond_1
    :goto_2
    return-void

    .line 117
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    const-string p1, "Time has changed"

    .line 121
    .line 122
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 126
    .line 127
    sget-object p2, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    iput-wide v2, p1, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 137
    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    iput-wide v2, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 145
    .line 146
    iget-wide v2, p1, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    .line 147
    .line 148
    iget-wide p1, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 149
    .line 150
    add-long/2addr v2, p1

    .line 151
    const-wide/16 p1, 0x3e8

    .line 152
    .line 153
    div-long/2addr v2, p1

    .line 154
    const-string/jumbo p1, "setUserTime: "

    .line 155
    .line 156
    .line 157
    const-string/jumbo p2, "|"

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v2, v3, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 165
    .line 166
    iget-wide v4, v0, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    .line 167
    .line 168
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 175
    .line 176
    iget-wide v4, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 177
    .line 178
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 189
    .line 190
    invoke-virtual {p0, v2, v3}, Lcom/android/server/RealTimeTokenService;->setUserTime(J)I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-gez p0, :cond_2

    .line 195
    .line 196
    const-string/jumbo p1, "setUserTime failed: "

    .line 197
    .line 198
    .line 199
    invoke-static {p0, p1, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_2
    return-void

    .line 203
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    const-string v2, "Broadcast NetWork received:"

    .line 208
    .line 209
    invoke-static {v2, p2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :try_start_1
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 213
    .line 214
    invoke-static {p2, p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-nez p1, :cond_3

    .line 219
    .line 220
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->getActiveTokenNumber()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-lez p1, :cond_3

    .line 227
    .line 228
    const-string p1, "Start RTTS Time Observer"

    .line 229
    .line 230
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 239
    .line 240
    .line 241
    move-result-wide v0

    .line 242
    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 243
    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 245
    .line 246
    .line 247
    move-result-wide v0

    .line 248
    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 249
    .line 250
    :try_start_2
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 251
    .line 252
    iget-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 253
    .line 254
    if-nez p2, :cond_5

    .line 255
    .line 256
    new-instance p2, Lcom/android/server/RealTimeTokenService$1;

    .line 257
    .line 258
    invoke-direct {p2, p1}, Lcom/android/server/RealTimeTokenService$1;-><init>(Lcom/android/server/RealTimeTokenService;)V

    .line 259
    .line 260
    .line 261
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 262
    .line 263
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 264
    .line 265
    new-instance p2, Ljava/util/Timer;

    .line 266
    .line 267
    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 271
    .line 272
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 273
    .line 274
    iget-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 275
    .line 276
    iget-object v1, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 277
    .line 278
    const-wide/16 v2, 0x0

    .line 279
    .line 280
    const-wide/32 v4, 0x1499700

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :catch_1
    move-exception p0

    .line 288
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :catch_2
    move-exception p0

    .line 293
    goto :goto_4

    .line 294
    :cond_3
    const-string p1, "Stop RTTS Time Observer"

    .line 295
    .line 296
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 297
    .line 298
    .line 299
    :try_start_4
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 300
    .line 301
    iget-object p1, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 302
    .line 303
    if-eqz p1, :cond_4

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :catch_3
    move-exception p1

    .line 310
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    .line 312
    .line 313
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 314
    .line 315
    iput-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    .line 320
    .line 321
    :cond_5
    :goto_5
    return-void

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
