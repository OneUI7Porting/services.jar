.class public final Lcom/android/server/desktopmode/DockManager$DockHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DockManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

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
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/16 v2, 0xc9

    .line 14
    .line 15
    const/16 v3, 0xcb

    .line 16
    .line 17
    const/16 v4, 0x96

    .line 18
    .line 19
    const v5, 0xa020

    .line 20
    .line 21
    .line 22
    const v6, 0xa029

    .line 23
    .line 24
    .line 25
    const-string v7, "[DMS]DockManager"

    .line 26
    .line 27
    if-eq v1, v4, :cond_1b

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 31
    .line 32
    const/16 v8, 0xd3

    .line 33
    .line 34
    const-string v9, ","

    .line 35
    .line 36
    if-eq v1, v8, :cond_14

    .line 37
    .line 38
    const/16 v8, 0xdd

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    if-eq v1, v8, :cond_11

    .line 42
    .line 43
    const/16 v8, 0xe7

    .line 44
    .line 45
    if-eq v1, v8, :cond_e

    .line 46
    .line 47
    const-string v0, "SDCDeviceController"

    .line 48
    .line 49
    const/16 v8, 0x64

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    packed-switch v1, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    const-string v2, "MSG_DOCK_REQUEST_DESTROY dockType="

    .line 70
    .line 71
    invoke-static {p1, v2, v7}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 75
    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    iput-object v9, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 79
    .line 80
    :cond_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    .line 81
    .line 82
    if-eqz v2, :cond_21

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    const-string/jumbo v1, "destroyDockControlLib"

    .line 87
    .line 88
    .line 89
    invoke-static {v7, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

    .line 93
    .line 94
    invoke-virtual {v1, v8, v3, v9}, Lcom/android/server/desktopmode/DockManager$3;->setLast(IILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    const-string/jumbo v2, "destroy"

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->destroy()V

    .line 113
    .line 114
    .line 115
    :cond_3
    iput-object v9, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    .line 116
    .line 117
    iget-object v0, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->destroy()V

    .line 122
    .line 123
    .line 124
    :cond_4
    iput-object v9, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    .line 125
    .line 126
    iput v10, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    .line 127
    .line 128
    iput-object v9, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    .line 129
    .line 130
    if-ne p1, v6, :cond_21

    .line 131
    .line 132
    check-cast v4, Lcom/android/server/desktopmode/StateManager;

    .line 133
    .line 134
    const/4 p0, -0x1

    .line 135
    invoke-virtual {v4, p0}, Lcom/android/server/desktopmode/StateManager;->setDockLowChargerState(I)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_5

    .line 139
    .line 140
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    const-string v0, "MSG_DOCK_REQUEST_POWER_INFO requestConnectedPowerChargerInfoUpdate"

    .line 145
    .line 146
    invoke-static {v7, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    .line 150
    .line 151
    if-eqz v0, :cond_21

    .line 152
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

    .line 154
    .line 155
    iget p1, p1, Landroid/os/Message;->what:I

    .line 156
    .line 157
    invoke-virtual {v0, v8, p1, v9}, Lcom/android/server/desktopmode/DockManager$3;->setLast(IILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    .line 161
    .line 162
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    .line 163
    .line 164
    if-eqz p1, :cond_6

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestConnectedPowerChargerInfoUpdate()V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_5

    .line 170
    .line 171
    :cond_6
    new-instance p1, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;

    .line 172
    .line 173
    iget p0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    .line 174
    .line 175
    invoke-direct {p1, p0}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;-><init>(I)V

    .line 176
    .line 177
    .line 178
    throw p1
    :try_end_0
    .catch Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p1, Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 194
    .line 195
    if-eqz v1, :cond_7

    .line 196
    .line 197
    const-string v3, "MSG_DOCK_REQUEST_CREATE dockType="

    .line 198
    .line 199
    invoke-static {p1, v3, v7}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    if-eq p1, v5, :cond_9

    .line 203
    .line 204
    if-ne p1, v6, :cond_8

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_8
    if-eqz v1, :cond_21

    .line 208
    .line 209
    const-string/jumbo p0, "createDockControlLib is not supported"

    .line 210
    .line 211
    .line 212
    invoke-static {v7, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_5

    .line 216
    .line 217
    :cond_9
    :goto_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 218
    .line 219
    if-nez v3, :cond_a

    .line 220
    .line 221
    new-instance v3, Lcom/android/server/desktopmode/DockManager$3;

    .line 222
    .line 223
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-object p0, v3, Lcom/android/server/desktopmode/DockManager$3;->this$0:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 229
    .line 230
    :cond_a
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    .line 231
    .line 232
    if-nez v3, :cond_21

    .line 233
    .line 234
    if-eqz v1, :cond_b

    .line 235
    .line 236
    const-string/jumbo v1, "createDockControlLib dockType="

    .line 237
    .line 238
    .line 239
    invoke-static {p1, v1, v7}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_b
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

    .line 243
    .line 244
    invoke-virtual {v1, v8, v2, v9}, Lcom/android/server/desktopmode/DockManager$3;->setLast(IILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    .line 248
    .line 249
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    .line 250
    .line 251
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 252
    .line 253
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object v9, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    .line 257
    .line 258
    iput-object v9, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    .line 259
    .line 260
    iput p1, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    .line 261
    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v7, "Model : "

    .line 265
    .line 266
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v7, ", DexControlLib Version : "

    .line 273
    .line 274
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-static {v0, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget v4, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    .line 285
    .line 286
    if-ne v4, v5, :cond_c

    .line 287
    .line 288
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    .line 289
    .line 290
    invoke-direct {v0, v2}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;-><init>(Landroid/content/Context;)V

    .line 291
    .line 292
    .line 293
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_c
    if-ne v4, v6, :cond_d

    .line 297
    .line 298
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    .line 299
    .line 300
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/DockManager$3;)V

    .line 301
    .line 302
    .line 303
    iput-object v0, v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v3, "SDCDeviceController unknown pid = "

    .line 309
    .line 310
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :goto_1
    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    .line 324
    .line 325
    if-ne p1, v6, :cond_21

    .line 326
    .line 327
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 328
    .line 329
    const/16 p1, 0xca

    .line 330
    .line 331
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_5

    .line 342
    .line 343
    :cond_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Ljava/lang/String;

    .line 346
    .line 347
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 348
    .line 349
    if-eqz v2, :cond_f

    .line 350
    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v3, "MSG_DOCK_VERSION_DSVERSION_UPDATED onDSVersionUpdated, version="

    .line 354
    .line 355
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-static {v7, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_f
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

    .line 369
    .line 370
    const/16 v3, 0x67

    .line 371
    .line 372
    iget p1, p1, Landroid/os/Message;->what:I

    .line 373
    .line 374
    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/desktopmode/DockManager$3;->setLast(IILjava/lang/String;)V

    .line 375
    .line 376
    .line 377
    if-eqz v1, :cond_10

    .line 378
    .line 379
    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_10
    const-string p1, "####"

    .line 383
    .line 384
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    .line 385
    .line 386
    :goto_2
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mupdateDockVersionToSettings(Lcom/android/server/desktopmode/DockManager;Z)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_5

    .line 390
    .line 391
    :cond_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v1, Ljava/lang/Integer;

    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 400
    .line 401
    if-eqz v2, :cond_12

    .line 402
    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v3, "MSG_DOCK_ERROR onError, error="

    .line 406
    .line 407
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$smdockControlErrorToString(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-static {v7, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    :cond_12
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

    .line 425
    .line 426
    iget p1, p1, Landroid/os/Message;->what:I

    .line 427
    .line 428
    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$smdockControlErrorToString(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    const/16 v4, 0x66

    .line 433
    .line 434
    invoke-virtual {v2, v4, p1, v3}, Lcom/android/server/desktopmode/DockManager$3;->setLast(IILjava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    .line 438
    .line 439
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 440
    .line 441
    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    :goto_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    .line 448
    .line 449
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-ge v10, v0, :cond_13

    .line 454
    .line 455
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    .line 456
    .line 457
    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$smdockControlErrorToString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v0, " = "

    .line 469
    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    .line 474
    .line 475
    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    add-int/lit8 v10, v10, 0x1

    .line 486
    .line 487
    goto :goto_3

    .line 488
    :cond_13
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

    .line 489
    .line 490
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    const/16 v0, 0x68

    .line 495
    .line 496
    const/16 v1, 0xf1

    .line 497
    .line 498
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/desktopmode/DockManager$3;->setLast(IILjava/lang/String;)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_5

    .line 502
    .line 503
    :cond_14
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 504
    .line 505
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 506
    .line 507
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 508
    .line 509
    if-eqz v3, :cond_15

    .line 510
    .line 511
    const-string v5, "MSG_DOCK_RESPONSE_POWER_INFO onConnectedPowerChargerInfoUpdated, power="

    .line 512
    .line 513
    const-string v6, " previous power="

    .line 514
    .line 515
    invoke-static {v1, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    move-result-object v5

    .line 519
    iget v6, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 520
    .line 521
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    const-string v6, " support="

    .line 525
    .line 526
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    invoke-static {v7, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    :cond_15
    iget-object v5, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

    .line 540
    .line 541
    iget p1, p1, Landroid/os/Message;->what:I

    .line 542
    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    const/16 v8, 0x65

    .line 562
    .line 563
    invoke-virtual {v5, v8, p1, v6}, Lcom/android/server/desktopmode/DockManager$3;->setLast(IILjava/lang/String;)V

    .line 564
    .line 565
    .line 566
    if-eqz v1, :cond_16

    .line 567
    .line 568
    iget p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 569
    .line 570
    if-eq v1, p1, :cond_21

    .line 571
    .line 572
    :cond_16
    const/16 p1, 0xf

    .line 573
    .line 574
    if-ge v1, p1, :cond_19

    .line 575
    .line 576
    iget v5, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 577
    .line 578
    if-eqz v5, :cond_17

    .line 579
    .line 580
    if-lt v5, p1, :cond_21

    .line 581
    .line 582
    :cond_17
    if-eqz v3, :cond_18

    .line 583
    .line 584
    const-string/jumbo p1, "updateDockLowChargerPower true"

    .line 585
    .line 586
    .line 587
    invoke-static {v7, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    :cond_18
    check-cast v4, Lcom/android/server/desktopmode/StateManager;

    .line 591
    .line 592
    invoke-virtual {v4, v0}, Lcom/android/server/desktopmode/StateManager;->setDockLowChargerState(I)V

    .line 593
    .line 594
    .line 595
    goto :goto_4

    .line 596
    :cond_19
    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 597
    .line 598
    if-ge v0, p1, :cond_21

    .line 599
    .line 600
    if-eqz v3, :cond_1a

    .line 601
    .line 602
    const-string/jumbo p1, "updateDockLowChargerPower false"

    .line 603
    .line 604
    .line 605
    invoke-static {v7, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    :cond_1a
    const/4 p1, 0x2

    .line 609
    check-cast v4, Lcom/android/server/desktopmode/StateManager;

    .line 610
    .line 611
    invoke-virtual {v4, p1}, Lcom/android/server/desktopmode/StateManager;->setDockLowChargerState(I)V

    .line 612
    .line 613
    .line 614
    :goto_4
    iput v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 615
    .line 616
    iput v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    .line 617
    .line 618
    const-string/jumbo p1, "dockLowChargerPowerUpdated"

    .line 619
    .line 620
    .line 621
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mrequestUpdateDockLibStatus(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    goto/16 :goto_5

    .line 625
    .line 626
    :cond_1b
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 627
    .line 628
    if-eqz p1, :cond_1c

    .line 629
    .line 630
    const-string v1, "MSG_DOCK_REQUEST_UPDATE_DOCK_LIB_STATUS"

    .line 631
    .line 632
    invoke-static {v7, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    :cond_1c
    if-eqz p1, :cond_1d

    .line 636
    .line 637
    new-instance p1, Ljava/lang/StringBuilder;

    .line 638
    .line 639
    const-string/jumbo v1, "updateDockLibStatus(), isDesktopDockConnected="

    .line 640
    .line 641
    .line 642
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    iget-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 646
    .line 647
    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 648
    .line 649
    .line 650
    move-result v1

    .line 651
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    const-string v1, ", isDexPadConnected="

    .line 655
    .line 656
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    iget-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 660
    .line 661
    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    const-string v1, ", mDockState="

    .line 669
    .line 670
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    iget-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 674
    .line 675
    iget v1, v1, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 676
    .line 677
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    const-string v1, ", mPrevDockState="

    .line 681
    .line 682
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    iget-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 686
    .line 687
    iget v1, v1, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 688
    .line 689
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    const-string v1, ", mDockChargerPower="

    .line 693
    .line 694
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 698
    .line 699
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    const-string v1, ", mDockChargerSupport="

    .line 703
    .line 704
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    .line 708
    .line 709
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object p1

    .line 716
    invoke-static {v7, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    :cond_1d
    iget-object p1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 720
    .line 721
    iget v1, p1, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 722
    .line 723
    const/16 v4, 0x2711

    .line 724
    .line 725
    if-ne v1, v4, :cond_1e

    .line 726
    .line 727
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 728
    .line 729
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    .line 731
    .line 732
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 733
    .line 734
    .line 735
    move-result-object p1

    .line 736
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 737
    .line 738
    .line 739
    move-result-object p1

    .line 740
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 741
    .line 742
    .line 743
    goto :goto_5

    .line 744
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    .line 745
    .line 746
    .line 747
    move-result p1

    .line 748
    if-eqz p1, :cond_1f

    .line 749
    .line 750
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 751
    .line 752
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    .line 754
    .line 755
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 756
    .line 757
    .line 758
    move-result-object p1

    .line 759
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 760
    .line 761
    .line 762
    move-result-object p1

    .line 763
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 764
    .line 765
    .line 766
    goto :goto_5

    .line 767
    :cond_1f
    iget-object p1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 768
    .line 769
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    .line 770
    .line 771
    .line 772
    move-result p1

    .line 773
    if-eqz p1, :cond_20

    .line 774
    .line 775
    iget-object p1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 776
    .line 777
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 778
    .line 779
    .line 780
    move-result p1

    .line 781
    if-eqz p1, :cond_20

    .line 782
    .line 783
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 784
    .line 785
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    .line 787
    .line 788
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 797
    .line 798
    .line 799
    goto :goto_5

    .line 800
    :cond_20
    iget-object p1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 801
    .line 802
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    .line 803
    .line 804
    .line 805
    move-result p1

    .line 806
    if-eqz p1, :cond_21

    .line 807
    .line 808
    iget-object p1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 809
    .line 810
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    .line 811
    .line 812
    .line 813
    move-result p1

    .line 814
    if-eqz p1, :cond_21

    .line 815
    .line 816
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 817
    .line 818
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    .line 820
    .line 821
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 826
    .line 827
    .line 828
    move-result-object p1

    .line 829
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 830
    .line 831
    .line 832
    :cond_21
    :goto_5
    return-void

    .line 833
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
