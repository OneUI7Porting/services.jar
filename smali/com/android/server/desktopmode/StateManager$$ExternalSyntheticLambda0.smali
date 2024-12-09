.class public final synthetic Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/StateManager;

.field public final synthetic f$1:Lcom/android/server/desktopmode/StateManager$InternalState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDockLowChargerPowerChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onEmergencyModeChanged()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    return-void

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 79
    .line 80
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDesktopModeStateChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    return-void

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 106
    .line 107
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDockStateChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    return-void

    .line 112
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 133
    .line 134
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onPackageStateChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_4
    return-void

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 160
    .line 161
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onUserChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_5
    return-void

    .line 166
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 187
    .line 188
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onTouchpadAvailabilityChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 189
    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_6
    return-void

    .line 193
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_7

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 214
    .line 215
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 216
    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_7
    return-void

    .line 220
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_8

    .line 235
    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 241
    .line 242
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onExternalDisplayUpdated(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_8
    return-void

    .line 247
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 248
    .line 249
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_9

    .line 262
    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 268
    .line 269
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onPogoKeyboardConnectionChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 270
    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_9
    return-void

    .line 274
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 275
    .line 276
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 277
    .line 278
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_a

    .line 289
    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 295
    .line 296
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 297
    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_a
    return-void

    .line 301
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 302
    .line 303
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 304
    .line 305
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_b

    .line 316
    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 322
    .line 323
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 324
    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_b
    return-void

    .line 328
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 329
    .line 330
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 331
    .line 332
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_c

    .line 343
    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 349
    .line 350
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 351
    .line 352
    .line 353
    goto :goto_c

    .line 354
    :cond_c
    return-void

    .line 355
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 356
    .line 357
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 358
    .line 359
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_d

    .line 370
    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 376
    .line 377
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onForcedInternalScreenStateChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 378
    .line 379
    .line 380
    goto :goto_d

    .line 381
    :cond_d
    return-void

    .line 382
    nop

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
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
