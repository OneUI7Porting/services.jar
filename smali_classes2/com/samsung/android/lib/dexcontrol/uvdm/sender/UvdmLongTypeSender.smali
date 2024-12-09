.class public final Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;
.super Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mInMsgMinLength:I


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "UvdmLongTypeSender"

    .line 2
    .line 3
    return-object p0
.end method

.method public final replyError(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, [B

    .line 15
    .line 16
    iput-object p2, v0, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->mData:[B

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    .line 19
    .line 20
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;->onFail(ILcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final sendData(I[B)V
    .locals 10

    .line 1
    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const/16 v4, 0x10

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v2, v4, :cond_4

    .line 11
    .line 12
    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    .line 13
    .line 14
    if-eqz v4, :cond_4

    .line 15
    .line 16
    if-nez v3, :cond_4

    .line 17
    .line 18
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    .line 19
    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_open()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ltz v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v5, v1

    .line 30
    :goto_1
    if-nez v5, :cond_1

    .line 31
    .line 32
    const-string v4, "UvdmLongTypeSender"

    .line 33
    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v7, "ccic_open failed : "

    .line 40
    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_c

    .line 57
    .line 58
    :cond_1
    :goto_2
    if-nez v5, :cond_2

    .line 59
    .line 60
    iget-boolean v3, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    const/16 v3, 0x1f4

    .line 65
    .line 66
    int-to-long v3, v3

    .line 67
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :catch_0
    move-exception v3

    .line 72
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    move v3, v5

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :cond_4
    const/4 v2, 0x0

    .line 82
    if-nez v3, :cond_6

    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    .line 85
    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_5
    const/4 p1, -0x1

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError(I[B)V

    .line 93
    .line 94
    .line 95
    :goto_4
    monitor-exit v0

    .line 96
    return-void

    .line 97
    :cond_6
    move v3, v1

    .line 98
    move v4, v3

    .line 99
    :goto_5
    const/16 v6, 0xa

    .line 100
    .line 101
    if-ge v3, v6, :cond_a

    .line 102
    .line 103
    iget-boolean v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    .line 104
    .line 105
    if-eqz v7, :cond_a

    .line 106
    .line 107
    if-nez v4, :cond_a

    .line 108
    .line 109
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    .line 110
    .line 111
    if-eqz v4, :cond_9

    .line 112
    .line 113
    iget v6, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mPid:I

    .line 114
    .line 115
    invoke-virtual {v4, v6, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_longDataWrite(I[B)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-ltz v4, :cond_7

    .line 120
    .line 121
    move v6, v5

    .line 122
    goto :goto_6

    .line 123
    :cond_7
    move v6, v1

    .line 124
    :goto_6
    if-nez v6, :cond_8

    .line 125
    .line 126
    const-string v7, "UvdmLongTypeSender"

    .line 127
    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v9, "ccic_write failed : "

    .line 134
    .line 135
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v7, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    move v4, v6

    .line 151
    goto :goto_5

    .line 152
    :cond_9
    monitor-exit v0

    .line 153
    return-void

    .line 154
    :cond_a
    if-nez v4, :cond_d

    .line 155
    .line 156
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    .line 157
    .line 158
    if-eqz p1, :cond_b

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_close()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v3, "ccic_close : "

    .line 167
    .line 168
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const-string v1, "UvdmLongTypeSender"

    .line 179
    .line 180
    invoke-static {v1, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_b
    iget-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    .line 184
    .line 185
    if-nez p1, :cond_c

    .line 186
    .line 187
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_c
    const/4 p1, -0x2

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError(I[B)V

    .line 192
    .line 193
    .line 194
    :goto_7
    monitor-exit v0

    .line 195
    return-void

    .line 196
    :cond_d
    move v3, v1

    .line 197
    move-object v4, v2

    .line 198
    :goto_8
    if-ge v1, v6, :cond_11

    .line 199
    .line 200
    iget-boolean v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    .line 201
    .line 202
    if-eqz v7, :cond_11

    .line 203
    .line 204
    if-nez v3, :cond_11

    .line 205
    .line 206
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .line 208
    if-eqz v4, :cond_10

    .line 209
    .line 210
    if-lez p1, :cond_e

    .line 211
    .line 212
    int-to-long v7, p1

    .line 213
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    .line 215
    .line 216
    goto :goto_9

    .line 217
    :catch_1
    move-exception v4

    .line 218
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 219
    .line 220
    .line 221
    :cond_e
    :goto_9
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    .line 222
    .line 223
    iget v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mPid:I

    .line 224
    .line 225
    invoke-virtual {v4, v7}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_longDataRead(I)[B

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    if-eqz v4, :cond_f

    .line 230
    .line 231
    array-length v7, v4

    .line 232
    iget v8, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    .line 233
    .line 234
    if-lt v7, v8, :cond_f

    .line 235
    .line 236
    move v3, v5

    .line 237
    goto :goto_a

    .line 238
    :cond_f
    const-string v7, "UvdmLongTypeSender"

    .line 239
    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v9, "ccic_read failed : "

    .line 246
    .line 247
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-static {v7, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    move-object v4, v2

    .line 265
    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_10
    monitor-exit v0

    .line 269
    return-void

    .line 270
    :cond_11
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    .line 271
    .line 272
    if-eqz p1, :cond_12

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_close()I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v5, "ccic_close : "

    .line 281
    .line 282
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    const-string v1, "UvdmLongTypeSender"

    .line 293
    .line 294
    invoke-static {v1, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :cond_12
    iget-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    .line 298
    .line 299
    if-eqz p1, :cond_15

    .line 300
    .line 301
    if-eqz v3, :cond_14

    .line 302
    .line 303
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    .line 304
    .line 305
    if-eqz p1, :cond_13

    .line 306
    .line 307
    new-instance p2, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    .line 308
    .line 309
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 310
    .line 311
    .line 312
    iput-object v4, p2, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->mData:[B

    .line 313
    .line 314
    invoke-interface {p1, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;->onSuccess(Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V

    .line 315
    .line 316
    .line 317
    goto :goto_b

    .line 318
    :cond_13
    const-string p1, "UvdmLongTypeSender"

    .line 319
    .line 320
    const-string p2, "callback is null"

    .line 321
    .line 322
    invoke-static {p1, p2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_b

    .line 326
    :cond_14
    const/4 p1, -0x3

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError(I[B)V

    .line 328
    .line 329
    .line 330
    :cond_15
    :goto_b
    iget-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    .line 331
    .line 332
    if-nez p1, :cond_16

    .line 333
    .line 334
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    .line 335
    .line 336
    :cond_16
    monitor-exit v0

    .line 337
    return-void

    .line 338
    :goto_c
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 339
    throw p0
.end method
