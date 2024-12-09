.class public final Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

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
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string/jumbo v0, "onReceive - mIDexFanControl is null"

    .line 12
    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const-string/jumbo v2, "siop_level_broadcast"

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    const-string v4, "FanControlModel"

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 24
    .line 25
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iput p2, p1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSiopLevel:I

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p2, "BroadcastReceiver - SIOP LEVEL : "

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 39
    .line 40
    iget p2, p2, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSiopLevel:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v4, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 53
    .line 54
    iput-boolean v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isSiopLevelValid:Z

    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 57
    .line 58
    if-nez p1, :cond_0

    .line 59
    .line 60
    invoke-static {v4, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isTestAppSIOPEnable:Z

    .line 65
    .line 66
    if-nez p2, :cond_f

    .line 67
    .line 68
    iget p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSiopLevel:I

    .line 69
    .line 70
    invoke-static {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->fromValue(I)Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iput-object p0, p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 84
    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    invoke-static {v4, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    const-string p1, "com.samsung.intent.action.CHECK_SIOP_LEVEL_TEMP"

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 108
    .line 109
    iput-boolean v3, p2, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isSiopLevelValid:Z

    .line 110
    .line 111
    iput-boolean v3, p2, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isTestAppSIOPEnable:Z

    .line 112
    .line 113
    const-string p2, "SIOP LEVEL FROM TEST APP : "

    .line 114
    .line 115
    const-string v0, " "

    .line 116
    .line 117
    invoke-static {p1, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 122
    .line 123
    iget-boolean v1, v1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isTestAppSIOPEnable:Z

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 132
    .line 133
    iget-boolean v0, v0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isSiopLevelValid:Z

    .line 134
    .line 135
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {v4, p2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 146
    .line 147
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->fromValue(I)Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_3
    const-string p1, "com.samsung.accessory.action.DEX_FAN_ON_TEMP"

    .line 164
    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_4

    .line 174
    .line 175
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 176
    .line 177
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 178
    .line 179
    sget-object p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 180
    .line 181
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

    .line 182
    .line 183
    if-eqz p0, :cond_f

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;->onFanLevelChanged(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_4
    const-string p1, "com.samsung.accessory.action.DEX_FAN_OFF_TEMP"

    .line 191
    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_5

    .line 201
    .line 202
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 205
    .line 206
    sget-object p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 207
    .line 208
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

    .line 209
    .line 210
    if-eqz p0, :cond_f

    .line 211
    .line 212
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;->onFanLevelChanged(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_5
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_6

    .line 228
    .line 229
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 230
    .line 231
    iput-boolean v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsScreenOffMode:Z

    .line 232
    .line 233
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isExistSystemRequest()Z

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    invoke-virtual {p1, p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setSystemRequest(Z)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_6
    const-string p1, "android.intent.action.USER_PRESENT"

    .line 245
    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    const/4 v0, 0x0

    .line 255
    if-eqz p1, :cond_7

    .line 256
    .line 257
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 258
    .line 259
    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsScreenOffMode:Z

    .line 260
    .line 261
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isExistSystemRequest()Z

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    invoke-virtual {p1, p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setSystemRequest(Z)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_7
    const-string p1, "com.samsung.accessory.action.DEX_FAN_HOLDING"

    .line 273
    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-eqz p1, :cond_d

    .line 283
    .line 284
    const-string p1, "dex_fan_holding_duration"

    .line 285
    .line 286
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    const-string v0, "dex_fan_holding_sender"

    .line 291
    .line 292
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-nez v0, :cond_8

    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-nez v0, :cond_8

    .line 303
    .line 304
    const-string v0, "Anonymous"

    .line 305
    .line 306
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 307
    .line 308
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 309
    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    const-string p2, "DexFanControlManager"

    .line 314
    .line 315
    if-gtz p1, :cond_a

    .line 316
    .line 317
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 318
    .line 319
    if-eqz p1, :cond_f

    .line 320
    .line 321
    const-string p1, "cancelDexFanHoldingTimerTask enter "

    .line 322
    .line 323
    invoke-static {p2, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 327
    .line 328
    check-cast p0, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-eqz p1, :cond_f

    .line 339
    .line 340
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    check-cast p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;

    .line 345
    .line 346
    iget-object v1, p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_9

    .line 353
    .line 354
    const-string p0, "cancelDexFanHoldingTimerTask "

    .line 355
    .line 356
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    invoke-static {p2, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->cancel()Z

    .line 364
    .line 365
    .line 366
    goto :goto_0

    .line 367
    :cond_a
    const v1, 0x927c0

    .line 368
    .line 369
    .line 370
    if-le p1, v1, :cond_b

    .line 371
    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v3, "Requested Fan Hoding Time is over the max - "

    .line 375
    .line 376
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-static {p2, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    move p1, v1

    .line 390
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 399
    .line 400
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 405
    .line 406
    if-ne p2, v1, :cond_c

    .line 407
    .line 408
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->addFanHoldingTimerTask(ILjava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V

    .line 412
    .line 413
    .line 414
    goto :goto_0

    .line 415
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 416
    .line 417
    .line 418
    move-result-object p2

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    if-ne p2, v1, :cond_f

    .line 428
    .line 429
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->addFanHoldingTimerTask(ILjava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto :goto_0

    .line 433
    :cond_d
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 434
    .line 435
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p2

    .line 439
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    if-eqz p1, :cond_f

    .line 444
    .line 445
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 446
    .line 447
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 448
    .line 449
    const-string p2, "audio"

    .line 450
    .line 451
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    check-cast p1, Landroid/media/AudioManager;

    .line 456
    .line 457
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    .line 458
    .line 459
    if-eqz p1, :cond_e

    .line 460
    .line 461
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioRecordingCallback:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;

    .line 462
    .line 463
    const/4 p2, 0x0

    .line 464
    invoke-virtual {p1, p0, p2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    .line 465
    .line 466
    .line 467
    goto :goto_0

    .line 468
    :cond_e
    const-string/jumbo p0, "registerAudioRecodingListener - mAudioManager is null"

    .line 469
    .line 470
    .line 471
    invoke-static {v4, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    :cond_f
    :goto_0
    return-void
.end method
