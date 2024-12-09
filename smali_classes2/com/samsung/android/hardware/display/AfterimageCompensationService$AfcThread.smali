.class public final Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mDataValid:Z

.field public mNormalValid:Z

.field public rotation:I

.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 3
    :try_start_0
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4
    .line 5
    iget-boolean v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 6
    .line 7
    if-eqz v4, :cond_2d

    .line 8
    .line 9
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 19
    .line 20
    .line 21
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    :try_start_1
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmThreadSleepTime(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 31
    .line 32
    .line 33
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object v3, v0

    .line 38
    goto/16 :goto_19

    .line 39
    .line 40
    :catch_0
    move-exception v0

    .line 41
    move-object v3, v0

    .line 42
    goto/16 :goto_17

    .line 43
    .line 44
    :catch_1
    :try_start_2
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 48
    .line 49
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 56
    .line 57
    :cond_2
    :goto_1
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 58
    .line 59
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmThreadAFPC(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2c

    .line 64
    .line 65
    const-string/jumbo v3, "service.camera.running"

    .line 66
    .line 67
    .line 68
    const-string v5, "0"

    .line 69
    .line 70
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v5, "1"

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    const-string/jumbo v3, "service.camera.sfs.running"

    .line 83
    .line 84
    .line 85
    const-string v5, "0"

    .line 86
    .line 87
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v5, "0"

    .line 92
    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 100
    .line 101
    iput-boolean v2, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 105
    .line 106
    iput-boolean v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    .line 107
    .line 108
    :goto_2
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 109
    .line 110
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_2c

    .line 115
    .line 116
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 117
    .line 118
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_4

    .line 123
    .line 124
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 125
    .line 126
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_2c

    .line 131
    .line 132
    :cond_4
    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 133
    .line 134
    const/16 v5, 0xb

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 139
    .line 140
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 145
    .line 146
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 147
    .line 148
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_6

    .line 153
    .line 154
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 155
    .line 156
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_6

    .line 161
    .line 162
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 163
    .line 164
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    goto :goto_3

    .line 169
    :cond_5
    if-nez v3, :cond_6

    .line 170
    .line 171
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 172
    .line 173
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 178
    .line 179
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 180
    .line 181
    iget v6, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    .line 182
    .line 183
    invoke-static {v3, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 187
    .line 188
    iget v6, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    .line 189
    .line 190
    invoke-static {v3, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 191
    .line 192
    .line 193
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 194
    .line 195
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-lt v3, v5, :cond_6

    .line 200
    .line 201
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 202
    .line 203
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_6

    .line 208
    .line 209
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 210
    .line 211
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    :cond_6
    :goto_3
    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 216
    .line 217
    const/4 v6, 0x3

    .line 218
    const/4 v7, 0x5

    .line 219
    const/4 v8, 0x2

    .line 220
    if-eqz v3, :cond_13

    .line 221
    .line 222
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 223
    .line 224
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 237
    .line 238
    const/4 v9, -0x1

    .line 239
    if-eqz v3, :cond_9

    .line 240
    .line 241
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 242
    .line 243
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 256
    .line 257
    if-ne v3, v9, :cond_7

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_7
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 261
    .line 262
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 275
    .line 276
    if-ne v3, v7, :cond_b

    .line 277
    .line 278
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 279
    .line 280
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_8

    .line 285
    .line 286
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 287
    .line 288
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    add-int/2addr v10, v2

    .line 293
    iput v10, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_8
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 297
    .line 298
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-eqz v3, :cond_b

    .line 303
    .line 304
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 305
    .line 306
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    add-int/2addr v10, v8

    .line 311
    iput v10, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_9
    :goto_4
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 315
    .line 316
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-eqz v3, :cond_a

    .line 321
    .line 322
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 323
    .line 324
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 325
    .line 326
    .line 327
    move-result v10

    .line 328
    add-int/2addr v10, v2

    .line 329
    invoke-static {v3, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_a
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 334
    .line 335
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eqz v3, :cond_b

    .line 340
    .line 341
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 342
    .line 343
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    add-int/2addr v10, v8

    .line 348
    invoke-static {v3, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 349
    .line 350
    .line 351
    :cond_b
    :goto_5
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 352
    .line 353
    iget-object v3, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    .line 354
    .line 355
    if-eqz v3, :cond_10

    .line 356
    .line 357
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-eqz v3, :cond_f

    .line 366
    .line 367
    if-eq v3, v2, :cond_e

    .line 368
    .line 369
    if-eq v3, v8, :cond_d

    .line 370
    .line 371
    if-eq v3, v6, :cond_c

    .line 372
    .line 373
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_c
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_d
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_e
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_f
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 386
    .line 387
    :cond_10
    :goto_6
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 388
    .line 389
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 402
    .line 403
    if-eqz v3, :cond_12

    .line 404
    .line 405
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 406
    .line 407
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 420
    .line 421
    if-ne v3, v9, :cond_11

    .line 422
    .line 423
    goto/16 :goto_7

    .line 424
    .line 425
    :cond_11
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 426
    .line 427
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 440
    .line 441
    if-ne v3, v7, :cond_13

    .line 442
    .line 443
    const-string v3, "AfterimageCompensationService"

    .line 444
    .line 445
    new-instance v9, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v10, "AfcThread mLuminance_sub : "

    .line 451
    .line 452
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 456
    .line 457
    iget v10, v10, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    .line 458
    .line 459
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v10, " , AfpcPeriodCount_sub : "

    .line 463
    .line 464
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 468
    .line 469
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 470
    .line 471
    .line 472
    move-result v10

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v10, " , rotation : "

    .line 477
    .line 478
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    iget v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 482
    .line 483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v10, " , AOD : "

    .line 487
    .line 488
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 492
    .line 493
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 494
    .line 495
    .line 496
    move-result v10

    .line 497
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 508
    .line 509
    iget v9, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    .line 510
    .line 511
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    iget v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 516
    .line 517
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 518
    .line 519
    invoke-static {v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    invoke-static {v9, v3, v10, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadSub(IIIZ)V

    .line 524
    .line 525
    .line 526
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 527
    .line 528
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 529
    .line 530
    .line 531
    move-result v3

    .line 532
    if-eqz v3, :cond_13

    .line 533
    .line 534
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 535
    .line 536
    iput-boolean v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 537
    .line 538
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 539
    .line 540
    .line 541
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    if-eqz v3, :cond_13

    .line 543
    .line 544
    :try_start_3
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 545
    .line 546
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 551
    :try_start_4
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 552
    .line 553
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 558
    .line 559
    .line 560
    monitor-exit v3

    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :catchall_1
    move-exception v0

    .line 564
    move-object v5, v0

    .line 565
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 566
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 567
    :catch_2
    :try_start_6
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 568
    .line 569
    goto/16 :goto_0

    .line 570
    .line 571
    :cond_12
    :goto_7
    const-string v3, "AfterimageCompensationService"

    .line 572
    .line 573
    new-instance v9, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .line 577
    .line 578
    const-string v10, "AfcThread mLuminance : "

    .line 579
    .line 580
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 584
    .line 585
    iget v10, v10, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    .line 586
    .line 587
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v10, " , AfpcPeriodCount : "

    .line 591
    .line 592
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 596
    .line 597
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 598
    .line 599
    .line 600
    move-result v10

    .line 601
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v10, " , rotation : "

    .line 605
    .line 606
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    iget v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 610
    .line 611
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    const-string v10, " , AOD : "

    .line 615
    .line 616
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 620
    .line 621
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 622
    .line 623
    .line 624
    move-result v10

    .line 625
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .line 634
    .line 635
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 636
    .line 637
    iget v9, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    .line 638
    .line 639
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 640
    .line 641
    .line 642
    move-result v3

    .line 643
    iget v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 644
    .line 645
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 646
    .line 647
    invoke-static {v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 648
    .line 649
    .line 650
    move-result v11

    .line 651
    invoke-static {v9, v3, v10, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataRead(IIIZ)V

    .line 652
    .line 653
    .line 654
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 655
    .line 656
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    if-eqz v3, :cond_13

    .line 661
    .line 662
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 663
    .line 664
    iput-boolean v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 665
    .line 666
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 667
    .line 668
    .line 669
    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 670
    if-eqz v3, :cond_13

    .line 671
    .line 672
    :try_start_7
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 673
    .line 674
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 679
    :try_start_8
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 680
    .line 681
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 686
    .line 687
    .line 688
    monitor-exit v3

    .line 689
    goto/16 :goto_0

    .line 690
    .line 691
    :catchall_2
    move-exception v0

    .line 692
    move-object v5, v0

    .line 693
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 694
    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 695
    :catch_3
    :try_start_a
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 696
    .line 697
    goto/16 :goto_0

    .line 698
    .line 699
    :cond_13
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 700
    .line 701
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 702
    .line 703
    .line 704
    move-result v3

    .line 705
    iget-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 706
    .line 707
    iget v10, v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 708
    .line 709
    if-lt v3, v10, :cond_29

    .line 710
    .line 711
    invoke-static {v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    const/4 v9, 0x0

    .line 716
    if-ne v3, v8, :cond_14

    .line 717
    .line 718
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 719
    .line 720
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 721
    .line 722
    .line 723
    move-result v3

    .line 724
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    if-nez v3, :cond_29

    .line 729
    .line 730
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 731
    .line 732
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 733
    .line 734
    .line 735
    const-string v3, "AfterimageCompensationService"

    .line 736
    .line 737
    new-instance v6, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .line 741
    .line 742
    const-string v7, "mApplyValue : "

    .line 743
    .line 744
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 748
    .line 749
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 750
    .line 751
    .line 752
    move-result v7

    .line 753
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v6

    .line 760
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 761
    .line 762
    .line 763
    :try_start_b
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataEvaluate()F

    .line 764
    .line 765
    .line 766
    move-result v3

    .line 767
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 768
    .line 769
    const-string v7, "%.2f"

    .line 770
    .line 771
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 772
    .line 773
    .line 774
    move-result-object v3

    .line 775
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    invoke-static {v6, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 784
    .line 785
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 786
    .line 787
    .line 788
    move-result v3

    .line 789
    invoke-static {v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 790
    .line 791
    .line 792
    goto :goto_8

    .line 793
    :catch_4
    move-exception v0

    .line 794
    move-object v3, v0

    .line 795
    :try_start_c
    const-string v6, "AfterimageCompensationService"

    .line 796
    .line 797
    new-instance v7, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .line 801
    .line 802
    const-string v8, "NumberFormatException : "

    .line 803
    .line 804
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    .line 816
    .line 817
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 818
    .line 819
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 820
    .line 821
    .line 822
    :goto_8
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 823
    .line 824
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_14

    .line 828
    .line 829
    :cond_14
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 830
    .line 831
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 832
    .line 833
    .line 834
    move-result v3

    .line 835
    const/4 v8, 0x4

    .line 836
    if-ne v3, v8, :cond_17

    .line 837
    .line 838
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 839
    .line 840
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 841
    .line 842
    .line 843
    move-result v3

    .line 844
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    if-nez v3, :cond_29

    .line 849
    .line 850
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 851
    .line 852
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 853
    .line 854
    .line 855
    const-string v3, "AfterimageCompensationService"

    .line 856
    .line 857
    new-instance v6, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .line 861
    .line 862
    const-string v7, "mApplyValue : "

    .line 863
    .line 864
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 868
    .line 869
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 870
    .line 871
    .line 872
    move-result v7

    .line 873
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v6

    .line 880
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 881
    .line 882
    .line 883
    :try_start_d
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataEvaluate()F

    .line 884
    .line 885
    .line 886
    move-result v3

    .line 887
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 888
    .line 889
    const-string v7, "%.2f"

    .line 890
    .line 891
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 892
    .line 893
    .line 894
    move-result-object v3

    .line 895
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    invoke-static {v6, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v3

    .line 903
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 904
    .line 905
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 906
    .line 907
    .line 908
    move-result v3

    .line 909
    invoke-static {v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 910
    .line 911
    .line 912
    goto :goto_9

    .line 913
    :catch_5
    move-exception v0

    .line 914
    move-object v3, v0

    .line 915
    :try_start_e
    const-string v6, "AfterimageCompensationService"

    .line 916
    .line 917
    new-instance v7, Ljava/lang/StringBuilder;

    .line 918
    .line 919
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .line 921
    .line 922
    const-string v8, "NumberFormatException : "

    .line 923
    .line 924
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v3

    .line 934
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .line 936
    .line 937
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 938
    .line 939
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 940
    .line 941
    .line 942
    :goto_9
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 943
    .line 944
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 949
    .line 950
    iget-object v7, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    .line 951
    .line 952
    array-length v7, v7

    .line 953
    if-ge v3, v7, :cond_16

    .line 954
    .line 955
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 956
    .line 957
    .line 958
    move-result v3

    .line 959
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 960
    .line 961
    iget-object v7, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    .line 962
    .line 963
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 964
    .line 965
    .line 966
    move-result v6

    .line 967
    aget v6, v7, v6

    .line 968
    .line 969
    cmpl-float v3, v3, v6

    .line 970
    .line 971
    if-ltz v3, :cond_16

    .line 972
    .line 973
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 974
    .line 975
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 976
    .line 977
    .line 978
    move-result v3

    .line 979
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataWriteV2(I)I

    .line 980
    .line 981
    .line 982
    move-result v3

    .line 983
    if-nez v3, :cond_15

    .line 984
    .line 985
    new-instance v3, Landroid/content/Intent;

    .line 986
    .line 987
    const-string v6, "com.samsung.android.sm.ACTION_ABC_SOLUTION"

    .line 988
    .line 989
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 993
    .line 994
    .line 995
    move-result-object v6

    .line 996
    const-string v7, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 997
    .line 998
    const-string v8, "com.samsung.android.lool"

    .line 999
    .line 1000
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v6

    .line 1004
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    .line 1006
    .line 1007
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1008
    .line 1009
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v6

    .line 1013
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1014
    .line 1015
    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1016
    .line 1017
    .line 1018
    :cond_15
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    .line 1022
    .line 1023
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1024
    .line 1025
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1026
    .line 1027
    .line 1028
    move-result v6

    .line 1029
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    const-string v6, " "

    .line 1033
    .line 1034
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1038
    .line 1039
    const-string v7, "%.2f"

    .line 1040
    .line 1041
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1042
    .line 1043
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 1044
    .line 1045
    .line 1046
    move-result v8

    .line 1047
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v8

    .line 1051
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v8

    .line 1055
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v6

    .line 1059
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v3

    .line 1066
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1067
    .line 1068
    const-string v7, "/efs/afc/apply_count"

    .line 1069
    .line 1070
    invoke-static {v6, v7, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    const-string v6, "AfterimageCompensationService"

    .line 1074
    .line 1075
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1078
    .line 1079
    .line 1080
    const-string v8, "afpcDataWrite - str : "

    .line 1081
    .line 1082
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1093
    .line 1094
    .line 1095
    goto :goto_a

    .line 1096
    :catch_6
    move-exception v0

    .line 1097
    move-object v3, v0

    .line 1098
    :try_start_10
    const-string v6, "AfterimageCompensationService"

    .line 1099
    .line 1100
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1103
    .line 1104
    .line 1105
    const-string v8, "NumberFormatException : "

    .line 1106
    .line 1107
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    .line 1119
    .line 1120
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1121
    .line 1122
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 1123
    .line 1124
    .line 1125
    :cond_16
    :goto_a
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1126
    .line 1127
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_14

    .line 1131
    .line 1132
    :cond_17
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1133
    .line 1134
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1135
    .line 1136
    .line 1137
    move-result v3

    .line 1138
    const/16 v8, 0xa

    .line 1139
    .line 1140
    if-ne v3, v6, :cond_19

    .line 1141
    .line 1142
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1143
    .line 1144
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1145
    .line 1146
    .line 1147
    move-result v3

    .line 1148
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 1149
    .line 1150
    .line 1151
    move-result v3

    .line 1152
    if-nez v3, :cond_29

    .line 1153
    .line 1154
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1155
    .line 1156
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 1157
    .line 1158
    .line 1159
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1160
    .line 1161
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 1162
    .line 1163
    .line 1164
    move-result-wide v6

    .line 1165
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1166
    .line 1167
    .line 1168
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1169
    .line 1170
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 1171
    .line 1172
    .line 1173
    move-result-wide v6

    .line 1174
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1175
    .line 1176
    .line 1177
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1178
    .line 1179
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 1180
    .line 1181
    .line 1182
    move-result-wide v6

    .line 1183
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1184
    .line 1185
    .line 1186
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1187
    .line 1188
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 1189
    .line 1190
    .line 1191
    move-result-wide v6

    .line 1192
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1193
    .line 1194
    .line 1195
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1196
    .line 1197
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 1198
    .line 1199
    .line 1200
    move-result-wide v6

    .line 1201
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1202
    .line 1203
    .line 1204
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1205
    .line 1206
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 1207
    .line 1208
    .line 1209
    move-result-wide v6

    .line 1210
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1211
    .line 1212
    .line 1213
    const-string v3, "AfterimageCompensationService"

    .line 1214
    .line 1215
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1218
    .line 1219
    .line 1220
    const-string v7, "mAvgLum : "

    .line 1221
    .line 1222
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1226
    .line 1227
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1228
    .line 1229
    .line 1230
    move-result-wide v11

    .line 1231
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1232
    .line 1233
    .line 1234
    const-string v7, ", mMaxBDI : "

    .line 1235
    .line 1236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    .line 1239
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1240
    .line 1241
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1242
    .line 1243
    .line 1244
    move-result-wide v11

    .line 1245
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    const-string v7, ", mNBDI : "

    .line 1249
    .line 1250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    .line 1253
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1254
    .line 1255
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1256
    .line 1257
    .line 1258
    move-result-wide v11

    .line 1259
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v6

    .line 1266
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    .line 1268
    .line 1269
    const-string v3, "AfterimageCompensationService"

    .line 1270
    .line 1271
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1274
    .line 1275
    .line 1276
    const-string/jumbo v7, "mEffAvgLum : "

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    .line 1282
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1283
    .line 1284
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1285
    .line 1286
    .line 1287
    move-result-wide v11

    .line 1288
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    const-string v7, ", mEffMaxBDI : "

    .line 1292
    .line 1293
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    .line 1296
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1297
    .line 1298
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1299
    .line 1300
    .line 1301
    move-result-wide v11

    .line 1302
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1303
    .line 1304
    .line 1305
    const-string v7, ", mEffNBDI : "

    .line 1306
    .line 1307
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1311
    .line 1312
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1313
    .line 1314
    .line 1315
    move-result-wide v11

    .line 1316
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v6

    .line 1323
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    .line 1325
    .line 1326
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1327
    .line 1328
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1329
    .line 1330
    .line 1331
    move-result-wide v6

    .line 1332
    const-wide v11, 0x4072c00000000000L    # 300.0

    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    cmpl-double v3, v6, v11

    .line 1338
    .line 1339
    if-ltz v3, :cond_18

    .line 1340
    .line 1341
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1342
    .line 1343
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1344
    .line 1345
    .line 1346
    move-result v3

    .line 1347
    if-ge v3, v8, :cond_18

    .line 1348
    .line 1349
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1350
    .line 1351
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1352
    .line 1353
    .line 1354
    move-result-wide v6

    .line 1355
    const-wide/high16 v11, 0x4054000000000000L    # 80.0

    .line 1356
    .line 1357
    cmpl-double v3, v6, v11

    .line 1358
    .line 1359
    if-ltz v3, :cond_18

    .line 1360
    .line 1361
    const-string v3, "AfterimageCompensationService"

    .line 1362
    .line 1363
    const-string/jumbo v6, "nativeDataUpdate"

    .line 1364
    .line 1365
    .line 1366
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    .line 1368
    .line 1369
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1370
    .line 1371
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1372
    .line 1373
    .line 1374
    move-result v3

    .line 1375
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 1376
    .line 1377
    .line 1378
    move-result v3

    .line 1379
    if-nez v3, :cond_18

    .line 1380
    .line 1381
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1382
    .line 1383
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1384
    .line 1385
    .line 1386
    move-result v6

    .line 1387
    add-int/2addr v6, v2

    .line 1388
    invoke-static {v3, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1389
    .line 1390
    .line 1391
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    .line 1395
    .line 1396
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1397
    .line 1398
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1399
    .line 1400
    .line 1401
    move-result v6

    .line 1402
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    const-string v6, " "

    .line 1406
    .line 1407
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    .line 1409
    .line 1410
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1411
    .line 1412
    const-string v7, "%.2f"

    .line 1413
    .line 1414
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1415
    .line 1416
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 1417
    .line 1418
    .line 1419
    move-result v8

    .line 1420
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v8

    .line 1424
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v8

    .line 1428
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v6

    .line 1432
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v3

    .line 1439
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1440
    .line 1441
    const-string v7, "/efs/afc/apply_count"

    .line 1442
    .line 1443
    invoke-static {v6, v7, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    .line 1445
    .line 1446
    const-string v6, "AfterimageCompensationService"

    .line 1447
    .line 1448
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1451
    .line 1452
    .line 1453
    const-string/jumbo v8, "nativeDataUpdate - str : "

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v3

    .line 1466
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1467
    .line 1468
    .line 1469
    goto :goto_b

    .line 1470
    :catch_7
    move-exception v0

    .line 1471
    move-object v3, v0

    .line 1472
    :try_start_12
    const-string v6, "AfterimageCompensationService"

    .line 1473
    .line 1474
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1477
    .line 1478
    .line 1479
    const-string v8, "NumberFormatException : "

    .line 1480
    .line 1481
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v3

    .line 1491
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    .line 1493
    .line 1494
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1495
    .line 1496
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 1497
    .line 1498
    .line 1499
    :cond_18
    :goto_b
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1500
    .line 1501
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 1502
    .line 1503
    .line 1504
    goto/16 :goto_14

    .line 1505
    .line 1506
    :cond_19
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1507
    .line 1508
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1509
    .line 1510
    .line 1511
    move-result v3

    .line 1512
    if-ne v3, v7, :cond_1b

    .line 1513
    .line 1514
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1515
    .line 1516
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1517
    .line 1518
    .line 1519
    move-result v3

    .line 1520
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 1521
    .line 1522
    .line 1523
    move-result v3

    .line 1524
    if-nez v3, :cond_29

    .line 1525
    .line 1526
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1527
    .line 1528
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 1529
    .line 1530
    .line 1531
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1532
    .line 1533
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 1534
    .line 1535
    .line 1536
    move-result-wide v6

    .line 1537
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1538
    .line 1539
    .line 1540
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1541
    .line 1542
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 1543
    .line 1544
    .line 1545
    move-result-wide v6

    .line 1546
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1547
    .line 1548
    .line 1549
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1550
    .line 1551
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 1552
    .line 1553
    .line 1554
    move-result-wide v6

    .line 1555
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1556
    .line 1557
    .line 1558
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1559
    .line 1560
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 1561
    .line 1562
    .line 1563
    move-result-wide v6

    .line 1564
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1565
    .line 1566
    .line 1567
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1568
    .line 1569
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 1570
    .line 1571
    .line 1572
    move-result-wide v6

    .line 1573
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1574
    .line 1575
    .line 1576
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1577
    .line 1578
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 1579
    .line 1580
    .line 1581
    move-result-wide v6

    .line 1582
    invoke-static {v3, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1583
    .line 1584
    .line 1585
    const-string v3, "AfterimageCompensationService"

    .line 1586
    .line 1587
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1588
    .line 1589
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1590
    .line 1591
    .line 1592
    const-string v7, "mAvgLum : "

    .line 1593
    .line 1594
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    .line 1596
    .line 1597
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1598
    .line 1599
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1600
    .line 1601
    .line 1602
    move-result-wide v7

    .line 1603
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    .line 1606
    const-string v7, ", mMaxBDI : "

    .line 1607
    .line 1608
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    .line 1611
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1612
    .line 1613
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1614
    .line 1615
    .line 1616
    move-result-wide v7

    .line 1617
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1618
    .line 1619
    .line 1620
    const-string v7, ", mNBDI : "

    .line 1621
    .line 1622
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    .line 1624
    .line 1625
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1626
    .line 1627
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1628
    .line 1629
    .line 1630
    move-result-wide v7

    .line 1631
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v6

    .line 1638
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    .line 1640
    .line 1641
    const-string v3, "AfterimageCompensationService"

    .line 1642
    .line 1643
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1644
    .line 1645
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1646
    .line 1647
    .line 1648
    const-string/jumbo v7, "mEffAvgLum : "

    .line 1649
    .line 1650
    .line 1651
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    .line 1653
    .line 1654
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1655
    .line 1656
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1657
    .line 1658
    .line 1659
    move-result-wide v7

    .line 1660
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    const-string v7, ", mEffMaxBDI : "

    .line 1664
    .line 1665
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    .line 1667
    .line 1668
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1669
    .line 1670
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1671
    .line 1672
    .line 1673
    move-result-wide v7

    .line 1674
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1675
    .line 1676
    .line 1677
    const-string v7, ", mEffNBDI : "

    .line 1678
    .line 1679
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    .line 1682
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1683
    .line 1684
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1685
    .line 1686
    .line 1687
    move-result-wide v7

    .line 1688
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v6

    .line 1695
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    .line 1697
    .line 1698
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1699
    .line 1700
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1701
    .line 1702
    .line 1703
    move-result v3

    .line 1704
    const/16 v6, 0x14

    .line 1705
    .line 1706
    if-ge v3, v6, :cond_1a

    .line 1707
    .line 1708
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1709
    .line 1710
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1711
    .line 1712
    .line 1713
    move-result-wide v6

    .line 1714
    const-wide v11, 0x4052c00000000000L    # 75.0

    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    cmpl-double v3, v6, v11

    .line 1720
    .line 1721
    if-ltz v3, :cond_1a

    .line 1722
    .line 1723
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1724
    .line 1725
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1726
    .line 1727
    .line 1728
    move-result-wide v6

    .line 1729
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1730
    .line 1731
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 1732
    .line 1733
    .line 1734
    move-result-object v3

    .line 1735
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1736
    .line 1737
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1738
    .line 1739
    .line 1740
    move-result v8

    .line 1741
    aget v3, v3, v8

    .line 1742
    .line 1743
    float-to-double v11, v3

    .line 1744
    cmpl-double v3, v6, v11

    .line 1745
    .line 1746
    if-ltz v3, :cond_1a

    .line 1747
    .line 1748
    const-string v3, "AfterimageCompensationService"

    .line 1749
    .line 1750
    const-string/jumbo v6, "nativeDataUpdate"

    .line 1751
    .line 1752
    .line 1753
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    .line 1755
    .line 1756
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1757
    .line 1758
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1759
    .line 1760
    .line 1761
    move-result v3

    .line 1762
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 1763
    .line 1764
    .line 1765
    move-result v3

    .line 1766
    if-nez v3, :cond_1a

    .line 1767
    .line 1768
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1769
    .line 1770
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1771
    .line 1772
    .line 1773
    move-result v6

    .line 1774
    add-int/2addr v6, v2

    .line 1775
    invoke-static {v3, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1776
    .line 1777
    .line 1778
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1779
    .line 1780
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1781
    .line 1782
    .line 1783
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1784
    .line 1785
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1786
    .line 1787
    .line 1788
    move-result v6

    .line 1789
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1790
    .line 1791
    .line 1792
    const-string v6, " "

    .line 1793
    .line 1794
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    .line 1796
    .line 1797
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1798
    .line 1799
    const-string v7, "%.2f"

    .line 1800
    .line 1801
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1802
    .line 1803
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 1804
    .line 1805
    .line 1806
    move-result v8

    .line 1807
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v8

    .line 1811
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v8

    .line 1815
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v6

    .line 1819
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    .line 1821
    .line 1822
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v3

    .line 1826
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1827
    .line 1828
    const-string v7, "/efs/afc/apply_count"

    .line 1829
    .line 1830
    invoke-static {v6, v7, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    .line 1832
    .line 1833
    const-string v6, "AfterimageCompensationService"

    .line 1834
    .line 1835
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1836
    .line 1837
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    .line 1839
    .line 1840
    const-string/jumbo v8, "nativeDataUpdate - str : "

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    .line 1848
    .line 1849
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v3

    .line 1853
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1854
    .line 1855
    .line 1856
    goto :goto_c

    .line 1857
    :catch_8
    move-exception v0

    .line 1858
    move-object v3, v0

    .line 1859
    :try_start_14
    const-string v6, "AfterimageCompensationService"

    .line 1860
    .line 1861
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1862
    .line 1863
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1864
    .line 1865
    .line 1866
    const-string v8, "NumberFormatException : "

    .line 1867
    .line 1868
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    .line 1870
    .line 1871
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1872
    .line 1873
    .line 1874
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v3

    .line 1878
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    .line 1880
    .line 1881
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1882
    .line 1883
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 1884
    .line 1885
    .line 1886
    :cond_1a
    :goto_c
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1887
    .line 1888
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 1889
    .line 1890
    .line 1891
    goto/16 :goto_14

    .line 1892
    .line 1893
    :cond_1b
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1894
    .line 1895
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1896
    .line 1897
    .line 1898
    move-result v3

    .line 1899
    const/4 v6, 0x6

    .line 1900
    const-wide v11, 0x4051800000000000L    # 70.0

    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    const/16 v7, 0x1e

    .line 1906
    .line 1907
    if-ne v3, v6, :cond_1d

    .line 1908
    .line 1909
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1910
    .line 1911
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 1912
    .line 1913
    .line 1914
    move-result v3

    .line 1915
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 1916
    .line 1917
    .line 1918
    move-result v3

    .line 1919
    if-nez v3, :cond_29

    .line 1920
    .line 1921
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1922
    .line 1923
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 1924
    .line 1925
    .line 1926
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1927
    .line 1928
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 1929
    .line 1930
    .line 1931
    move-result-wide v5

    .line 1932
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1933
    .line 1934
    .line 1935
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1936
    .line 1937
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 1938
    .line 1939
    .line 1940
    move-result-wide v5

    .line 1941
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1942
    .line 1943
    .line 1944
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1945
    .line 1946
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 1947
    .line 1948
    .line 1949
    move-result-wide v5

    .line 1950
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1951
    .line 1952
    .line 1953
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1954
    .line 1955
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 1956
    .line 1957
    .line 1958
    move-result-wide v5

    .line 1959
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1960
    .line 1961
    .line 1962
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1963
    .line 1964
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 1965
    .line 1966
    .line 1967
    move-result-wide v5

    .line 1968
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1969
    .line 1970
    .line 1971
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1972
    .line 1973
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 1974
    .line 1975
    .line 1976
    move-result-wide v5

    .line 1977
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1978
    .line 1979
    .line 1980
    const-string v3, "AfterimageCompensationService"

    .line 1981
    .line 1982
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1983
    .line 1984
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1985
    .line 1986
    .line 1987
    const-string v6, "mAvgLum : "

    .line 1988
    .line 1989
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    .line 1991
    .line 1992
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 1993
    .line 1994
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 1995
    .line 1996
    .line 1997
    move-result-wide v13

    .line 1998
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1999
    .line 2000
    .line 2001
    const-string v6, ", mMaxBDI : "

    .line 2002
    .line 2003
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    .line 2005
    .line 2006
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2007
    .line 2008
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2009
    .line 2010
    .line 2011
    move-result-wide v13

    .line 2012
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2013
    .line 2014
    .line 2015
    const-string v6, ", mNBDI : "

    .line 2016
    .line 2017
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    .line 2019
    .line 2020
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2021
    .line 2022
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2023
    .line 2024
    .line 2025
    move-result-wide v13

    .line 2026
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2027
    .line 2028
    .line 2029
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v5

    .line 2033
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    .line 2035
    .line 2036
    const-string v3, "AfterimageCompensationService"

    .line 2037
    .line 2038
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2039
    .line 2040
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2041
    .line 2042
    .line 2043
    const-string/jumbo v6, "mEffAvgLum : "

    .line 2044
    .line 2045
    .line 2046
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    .line 2048
    .line 2049
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2050
    .line 2051
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2052
    .line 2053
    .line 2054
    move-result-wide v13

    .line 2055
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2056
    .line 2057
    .line 2058
    const-string v6, ", mEffMaxBDI : "

    .line 2059
    .line 2060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    .line 2062
    .line 2063
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2064
    .line 2065
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2066
    .line 2067
    .line 2068
    move-result-wide v13

    .line 2069
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2070
    .line 2071
    .line 2072
    const-string v6, ", mEffNBDI : "

    .line 2073
    .line 2074
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    .line 2076
    .line 2077
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2078
    .line 2079
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2080
    .line 2081
    .line 2082
    move-result-wide v13

    .line 2083
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2084
    .line 2085
    .line 2086
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v5

    .line 2090
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    .line 2092
    .line 2093
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2094
    .line 2095
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2096
    .line 2097
    .line 2098
    move-result v3

    .line 2099
    if-ge v3, v7, :cond_1c

    .line 2100
    .line 2101
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2102
    .line 2103
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2104
    .line 2105
    .line 2106
    move-result-wide v5

    .line 2107
    cmpl-double v3, v5, v11

    .line 2108
    .line 2109
    if-ltz v3, :cond_1c

    .line 2110
    .line 2111
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2112
    .line 2113
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2114
    .line 2115
    .line 2116
    move-result-wide v5

    .line 2117
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2118
    .line 2119
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 2120
    .line 2121
    .line 2122
    move-result-object v3

    .line 2123
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2124
    .line 2125
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2126
    .line 2127
    .line 2128
    move-result v7

    .line 2129
    aget v3, v3, v7

    .line 2130
    .line 2131
    float-to-double v7, v3

    .line 2132
    cmpl-double v3, v5, v7

    .line 2133
    .line 2134
    if-ltz v3, :cond_1c

    .line 2135
    .line 2136
    const-string v3, "AfterimageCompensationService"

    .line 2137
    .line 2138
    const-string/jumbo v5, "nativeDataUpdate"

    .line 2139
    .line 2140
    .line 2141
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    .line 2143
    .line 2144
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2145
    .line 2146
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2147
    .line 2148
    .line 2149
    move-result v3

    .line 2150
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 2151
    .line 2152
    .line 2153
    move-result v3

    .line 2154
    if-nez v3, :cond_1c

    .line 2155
    .line 2156
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2157
    .line 2158
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2159
    .line 2160
    .line 2161
    move-result v5

    .line 2162
    add-int/2addr v5, v2

    .line 2163
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 2164
    .line 2165
    .line 2166
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2167
    .line 2168
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2169
    .line 2170
    .line 2171
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2172
    .line 2173
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2174
    .line 2175
    .line 2176
    move-result v5

    .line 2177
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2178
    .line 2179
    .line 2180
    const-string v5, " "

    .line 2181
    .line 2182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    .line 2184
    .line 2185
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2186
    .line 2187
    const-string v6, "%.2f"

    .line 2188
    .line 2189
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2190
    .line 2191
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 2192
    .line 2193
    .line 2194
    move-result v7

    .line 2195
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v7

    .line 2199
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v7

    .line 2203
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2204
    .line 2205
    .line 2206
    move-result-object v5

    .line 2207
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    .line 2209
    .line 2210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v3

    .line 2214
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2215
    .line 2216
    const-string v6, "/efs/afc/apply_count"

    .line 2217
    .line 2218
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    .line 2220
    .line 2221
    const-string v5, "AfterimageCompensationService"

    .line 2222
    .line 2223
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2224
    .line 2225
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2226
    .line 2227
    .line 2228
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 2229
    .line 2230
    .line 2231
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    .line 2233
    .line 2234
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    .line 2236
    .line 2237
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v3

    .line 2241
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2242
    .line 2243
    .line 2244
    goto :goto_d

    .line 2245
    :catch_9
    move-exception v0

    .line 2246
    move-object v3, v0

    .line 2247
    :try_start_16
    const-string v5, "AfterimageCompensationService"

    .line 2248
    .line 2249
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2250
    .line 2251
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2252
    .line 2253
    .line 2254
    const-string v7, "NumberFormatException : "

    .line 2255
    .line 2256
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    .line 2258
    .line 2259
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2260
    .line 2261
    .line 2262
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2263
    .line 2264
    .line 2265
    move-result-object v3

    .line 2266
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    .line 2268
    .line 2269
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2270
    .line 2271
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 2272
    .line 2273
    .line 2274
    :cond_1c
    :goto_d
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2275
    .line 2276
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 2277
    .line 2278
    .line 2279
    goto/16 :goto_14

    .line 2280
    .line 2281
    :cond_1d
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2282
    .line 2283
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2284
    .line 2285
    .line 2286
    move-result v3

    .line 2287
    const/4 v5, 0x7

    .line 2288
    if-ne v3, v5, :cond_1f

    .line 2289
    .line 2290
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2291
    .line 2292
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2293
    .line 2294
    .line 2295
    move-result v3

    .line 2296
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 2297
    .line 2298
    .line 2299
    move-result v3

    .line 2300
    if-nez v3, :cond_29

    .line 2301
    .line 2302
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2303
    .line 2304
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 2305
    .line 2306
    .line 2307
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2308
    .line 2309
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 2310
    .line 2311
    .line 2312
    move-result-wide v5

    .line 2313
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2314
    .line 2315
    .line 2316
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2317
    .line 2318
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 2319
    .line 2320
    .line 2321
    move-result-wide v5

    .line 2322
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2323
    .line 2324
    .line 2325
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2326
    .line 2327
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 2328
    .line 2329
    .line 2330
    move-result-wide v5

    .line 2331
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2332
    .line 2333
    .line 2334
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2335
    .line 2336
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 2337
    .line 2338
    .line 2339
    move-result-wide v5

    .line 2340
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2341
    .line 2342
    .line 2343
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2344
    .line 2345
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 2346
    .line 2347
    .line 2348
    move-result-wide v5

    .line 2349
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2350
    .line 2351
    .line 2352
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2353
    .line 2354
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 2355
    .line 2356
    .line 2357
    move-result-wide v5

    .line 2358
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2359
    .line 2360
    .line 2361
    const-string v3, "AfterimageCompensationService"

    .line 2362
    .line 2363
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2364
    .line 2365
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2366
    .line 2367
    .line 2368
    const-string v6, "mAvgLum : "

    .line 2369
    .line 2370
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2371
    .line 2372
    .line 2373
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2374
    .line 2375
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2376
    .line 2377
    .line 2378
    move-result-wide v13

    .line 2379
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2380
    .line 2381
    .line 2382
    const-string v6, ", mMaxBDI : "

    .line 2383
    .line 2384
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    .line 2386
    .line 2387
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2388
    .line 2389
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2390
    .line 2391
    .line 2392
    move-result-wide v13

    .line 2393
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2394
    .line 2395
    .line 2396
    const-string v6, ", mNBDI : "

    .line 2397
    .line 2398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    .line 2400
    .line 2401
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2402
    .line 2403
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2404
    .line 2405
    .line 2406
    move-result-wide v13

    .line 2407
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2408
    .line 2409
    .line 2410
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v5

    .line 2414
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    .line 2416
    .line 2417
    const-string v3, "AfterimageCompensationService"

    .line 2418
    .line 2419
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2420
    .line 2421
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2422
    .line 2423
    .line 2424
    const-string/jumbo v6, "mEffAvgLum : "

    .line 2425
    .line 2426
    .line 2427
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    .line 2429
    .line 2430
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2431
    .line 2432
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2433
    .line 2434
    .line 2435
    move-result-wide v13

    .line 2436
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2437
    .line 2438
    .line 2439
    const-string v6, ", mEffMaxBDI : "

    .line 2440
    .line 2441
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    .line 2443
    .line 2444
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2445
    .line 2446
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2447
    .line 2448
    .line 2449
    move-result-wide v13

    .line 2450
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2451
    .line 2452
    .line 2453
    const-string v6, ", mEffNBDI : "

    .line 2454
    .line 2455
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    .line 2457
    .line 2458
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2459
    .line 2460
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2461
    .line 2462
    .line 2463
    move-result-wide v13

    .line 2464
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2465
    .line 2466
    .line 2467
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v5

    .line 2471
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    .line 2473
    .line 2474
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2475
    .line 2476
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2477
    .line 2478
    .line 2479
    move-result v3

    .line 2480
    if-ge v3, v7, :cond_1e

    .line 2481
    .line 2482
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2483
    .line 2484
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2485
    .line 2486
    .line 2487
    move-result-wide v5

    .line 2488
    cmpl-double v3, v5, v11

    .line 2489
    .line 2490
    if-ltz v3, :cond_1e

    .line 2491
    .line 2492
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2493
    .line 2494
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2495
    .line 2496
    .line 2497
    move-result-wide v5

    .line 2498
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2499
    .line 2500
    iget-object v7, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    .line 2501
    .line 2502
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2503
    .line 2504
    .line 2505
    move-result v3

    .line 2506
    aget v3, v7, v3

    .line 2507
    .line 2508
    float-to-double v7, v3

    .line 2509
    cmpl-double v3, v5, v7

    .line 2510
    .line 2511
    if-ltz v3, :cond_1e

    .line 2512
    .line 2513
    const-string v3, "AfterimageCompensationService"

    .line 2514
    .line 2515
    const-string/jumbo v5, "nativeDataUpdate"

    .line 2516
    .line 2517
    .line 2518
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    .line 2520
    .line 2521
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2522
    .line 2523
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2524
    .line 2525
    .line 2526
    move-result v3

    .line 2527
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 2528
    .line 2529
    .line 2530
    move-result v3

    .line 2531
    if-nez v3, :cond_1e

    .line 2532
    .line 2533
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2534
    .line 2535
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2536
    .line 2537
    .line 2538
    move-result v5

    .line 2539
    add-int/2addr v5, v2

    .line 2540
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 2541
    .line 2542
    .line 2543
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2544
    .line 2545
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2546
    .line 2547
    .line 2548
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2549
    .line 2550
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2551
    .line 2552
    .line 2553
    move-result v5

    .line 2554
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2555
    .line 2556
    .line 2557
    const-string v5, " "

    .line 2558
    .line 2559
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    .line 2561
    .line 2562
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2563
    .line 2564
    const-string v6, "%.2f"

    .line 2565
    .line 2566
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2567
    .line 2568
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 2569
    .line 2570
    .line 2571
    move-result v7

    .line 2572
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2573
    .line 2574
    .line 2575
    move-result-object v7

    .line 2576
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 2577
    .line 2578
    .line 2579
    move-result-object v7

    .line 2580
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v5

    .line 2584
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    .line 2586
    .line 2587
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2588
    .line 2589
    .line 2590
    move-result-object v3

    .line 2591
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2592
    .line 2593
    const-string v6, "/efs/afc/apply_count"

    .line 2594
    .line 2595
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    .line 2597
    .line 2598
    const-string v5, "AfterimageCompensationService"

    .line 2599
    .line 2600
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2601
    .line 2602
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2603
    .line 2604
    .line 2605
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 2606
    .line 2607
    .line 2608
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    .line 2610
    .line 2611
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    .line 2613
    .line 2614
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2615
    .line 2616
    .line 2617
    move-result-object v3

    .line 2618
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 2619
    .line 2620
    .line 2621
    goto :goto_e

    .line 2622
    :catch_a
    move-exception v0

    .line 2623
    move-object v3, v0

    .line 2624
    :try_start_18
    const-string v5, "AfterimageCompensationService"

    .line 2625
    .line 2626
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2627
    .line 2628
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2629
    .line 2630
    .line 2631
    const-string v7, "NumberFormatException : "

    .line 2632
    .line 2633
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    .line 2635
    .line 2636
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2637
    .line 2638
    .line 2639
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2640
    .line 2641
    .line 2642
    move-result-object v3

    .line 2643
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    .line 2645
    .line 2646
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2647
    .line 2648
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 2649
    .line 2650
    .line 2651
    :cond_1e
    :goto_e
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2652
    .line 2653
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 2654
    .line 2655
    .line 2656
    goto/16 :goto_14

    .line 2657
    .line 2658
    :cond_1f
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2659
    .line 2660
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2661
    .line 2662
    .line 2663
    move-result v3

    .line 2664
    const/16 v5, 0x8

    .line 2665
    .line 2666
    if-ne v3, v5, :cond_22

    .line 2667
    .line 2668
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2669
    .line 2670
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2671
    .line 2672
    .line 2673
    move-result v3

    .line 2674
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 2675
    .line 2676
    .line 2677
    move-result v3

    .line 2678
    if-nez v3, :cond_29

    .line 2679
    .line 2680
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2681
    .line 2682
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 2683
    .line 2684
    .line 2685
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2686
    .line 2687
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 2688
    .line 2689
    .line 2690
    move-result-wide v5

    .line 2691
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2692
    .line 2693
    .line 2694
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2695
    .line 2696
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 2697
    .line 2698
    .line 2699
    move-result-wide v5

    .line 2700
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2701
    .line 2702
    .line 2703
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2704
    .line 2705
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 2706
    .line 2707
    .line 2708
    move-result-wide v5

    .line 2709
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2710
    .line 2711
    .line 2712
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2713
    .line 2714
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 2715
    .line 2716
    .line 2717
    move-result-wide v5

    .line 2718
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2719
    .line 2720
    .line 2721
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2722
    .line 2723
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 2724
    .line 2725
    .line 2726
    move-result-wide v5

    .line 2727
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2728
    .line 2729
    .line 2730
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2731
    .line 2732
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 2733
    .line 2734
    .line 2735
    move-result-wide v5

    .line 2736
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 2737
    .line 2738
    .line 2739
    const-string v3, "AfterimageCompensationService"

    .line 2740
    .line 2741
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2742
    .line 2743
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2744
    .line 2745
    .line 2746
    const-string v6, "mAvgLum : "

    .line 2747
    .line 2748
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    .line 2750
    .line 2751
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2752
    .line 2753
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2754
    .line 2755
    .line 2756
    move-result-wide v11

    .line 2757
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2758
    .line 2759
    .line 2760
    const-string v6, ", mMaxBDI : "

    .line 2761
    .line 2762
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    .line 2764
    .line 2765
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2766
    .line 2767
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2768
    .line 2769
    .line 2770
    move-result-wide v11

    .line 2771
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2772
    .line 2773
    .line 2774
    const-string v6, ", mNBDI : "

    .line 2775
    .line 2776
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    .line 2778
    .line 2779
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2780
    .line 2781
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2782
    .line 2783
    .line 2784
    move-result-wide v11

    .line 2785
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2786
    .line 2787
    .line 2788
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2789
    .line 2790
    .line 2791
    move-result-object v5

    .line 2792
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    .line 2794
    .line 2795
    const-string v3, "AfterimageCompensationService"

    .line 2796
    .line 2797
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2798
    .line 2799
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2800
    .line 2801
    .line 2802
    const-string/jumbo v6, "mEffAvgLum : "

    .line 2803
    .line 2804
    .line 2805
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2806
    .line 2807
    .line 2808
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2809
    .line 2810
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2811
    .line 2812
    .line 2813
    move-result-wide v11

    .line 2814
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2815
    .line 2816
    .line 2817
    const-string v6, ", mEffMaxBDI : "

    .line 2818
    .line 2819
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    .line 2821
    .line 2822
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2823
    .line 2824
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2825
    .line 2826
    .line 2827
    move-result-wide v11

    .line 2828
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2829
    .line 2830
    .line 2831
    const-string v6, ", mEffNBDI : "

    .line 2832
    .line 2833
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    .line 2835
    .line 2836
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2837
    .line 2838
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2839
    .line 2840
    .line 2841
    move-result-wide v11

    .line 2842
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2843
    .line 2844
    .line 2845
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2846
    .line 2847
    .line 2848
    move-result-object v5

    .line 2849
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    .line 2851
    .line 2852
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2853
    .line 2854
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfpcPanelNumber_main(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2855
    .line 2856
    .line 2857
    move-result v3

    .line 2858
    const v5, 0x35bc5

    .line 2859
    .line 2860
    .line 2861
    if-ne v3, v5, :cond_20

    .line 2862
    .line 2863
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2864
    .line 2865
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2866
    .line 2867
    .line 2868
    move-result v3

    .line 2869
    if-ge v3, v7, :cond_21

    .line 2870
    .line 2871
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2872
    .line 2873
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2874
    .line 2875
    .line 2876
    move-result-wide v5

    .line 2877
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 2878
    .line 2879
    cmpl-double v3, v5, v7

    .line 2880
    .line 2881
    if-ltz v3, :cond_21

    .line 2882
    .line 2883
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2884
    .line 2885
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 2886
    .line 2887
    .line 2888
    move-result-wide v5

    .line 2889
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2890
    .line 2891
    iget-object v7, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    .line 2892
    .line 2893
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2894
    .line 2895
    .line 2896
    move-result v3

    .line 2897
    aget v3, v7, v3

    .line 2898
    .line 2899
    float-to-double v7, v3

    .line 2900
    cmpl-double v3, v5, v7

    .line 2901
    .line 2902
    if-ltz v3, :cond_21

    .line 2903
    .line 2904
    const-string v3, "AfterimageCompensationService"

    .line 2905
    .line 2906
    const-string/jumbo v5, "nativeDataUpdate"

    .line 2907
    .line 2908
    .line 2909
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    .line 2911
    .line 2912
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2913
    .line 2914
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2915
    .line 2916
    .line 2917
    move-result v3

    .line 2918
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 2919
    .line 2920
    .line 2921
    move-result v3

    .line 2922
    if-nez v3, :cond_21

    .line 2923
    .line 2924
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2925
    .line 2926
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2927
    .line 2928
    .line 2929
    move-result v5

    .line 2930
    add-int/2addr v5, v2

    .line 2931
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 2932
    .line 2933
    .line 2934
    :try_start_19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2935
    .line 2936
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2937
    .line 2938
    .line 2939
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2940
    .line 2941
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 2942
    .line 2943
    .line 2944
    move-result v5

    .line 2945
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2946
    .line 2947
    .line 2948
    const-string v5, " "

    .line 2949
    .line 2950
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    .line 2952
    .line 2953
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2954
    .line 2955
    const-string v6, "%.2f"

    .line 2956
    .line 2957
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2958
    .line 2959
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 2960
    .line 2961
    .line 2962
    move-result v7

    .line 2963
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2964
    .line 2965
    .line 2966
    move-result-object v7

    .line 2967
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 2968
    .line 2969
    .line 2970
    move-result-object v7

    .line 2971
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2972
    .line 2973
    .line 2974
    move-result-object v5

    .line 2975
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    .line 2977
    .line 2978
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2979
    .line 2980
    .line 2981
    move-result-object v3

    .line 2982
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 2983
    .line 2984
    const-string v6, "/efs/afc/apply_count"

    .line 2985
    .line 2986
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    .line 2988
    .line 2989
    const-string v5, "AfterimageCompensationService"

    .line 2990
    .line 2991
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2992
    .line 2993
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2994
    .line 2995
    .line 2996
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 2997
    .line 2998
    .line 2999
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    .line 3001
    .line 3002
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    .line 3004
    .line 3005
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3006
    .line 3007
    .line 3008
    move-result-object v3

    .line 3009
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 3010
    .line 3011
    .line 3012
    goto/16 :goto_f

    .line 3013
    .line 3014
    :catch_b
    move-exception v0

    .line 3015
    move-object v3, v0

    .line 3016
    :try_start_1a
    const-string v5, "AfterimageCompensationService"

    .line 3017
    .line 3018
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3019
    .line 3020
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3021
    .line 3022
    .line 3023
    const-string v7, "NumberFormatException : "

    .line 3024
    .line 3025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    .line 3027
    .line 3028
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3029
    .line 3030
    .line 3031
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3032
    .line 3033
    .line 3034
    move-result-object v3

    .line 3035
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    .line 3037
    .line 3038
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3039
    .line 3040
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 3041
    .line 3042
    .line 3043
    goto/16 :goto_f

    .line 3044
    .line 3045
    :cond_20
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3046
    .line 3047
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3048
    .line 3049
    .line 3050
    move-result v3

    .line 3051
    const/16 v5, 0x32

    .line 3052
    .line 3053
    if-ge v3, v5, :cond_21

    .line 3054
    .line 3055
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3056
    .line 3057
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3058
    .line 3059
    .line 3060
    move-result-wide v5

    .line 3061
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 3062
    .line 3063
    cmpl-double v3, v5, v7

    .line 3064
    .line 3065
    if-ltz v3, :cond_21

    .line 3066
    .line 3067
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3068
    .line 3069
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3070
    .line 3071
    .line 3072
    move-result-wide v5

    .line 3073
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3074
    .line 3075
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 3076
    .line 3077
    .line 3078
    move-result-object v3

    .line 3079
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3080
    .line 3081
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3082
    .line 3083
    .line 3084
    move-result v7

    .line 3085
    aget v3, v3, v7

    .line 3086
    .line 3087
    float-to-double v7, v3

    .line 3088
    cmpl-double v3, v5, v7

    .line 3089
    .line 3090
    if-ltz v3, :cond_21

    .line 3091
    .line 3092
    const-string v3, "AfterimageCompensationService"

    .line 3093
    .line 3094
    const-string/jumbo v5, "nativeDataUpdate"

    .line 3095
    .line 3096
    .line 3097
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    .line 3099
    .line 3100
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3101
    .line 3102
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3103
    .line 3104
    .line 3105
    move-result v3

    .line 3106
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 3107
    .line 3108
    .line 3109
    move-result v3

    .line 3110
    if-nez v3, :cond_21

    .line 3111
    .line 3112
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3113
    .line 3114
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3115
    .line 3116
    .line 3117
    move-result v5

    .line 3118
    add-int/2addr v5, v2

    .line 3119
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 3120
    .line 3121
    .line 3122
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3123
    .line 3124
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3125
    .line 3126
    .line 3127
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3128
    .line 3129
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3130
    .line 3131
    .line 3132
    move-result v5

    .line 3133
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3134
    .line 3135
    .line 3136
    const-string v5, " "

    .line 3137
    .line 3138
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    .line 3140
    .line 3141
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3142
    .line 3143
    const-string v6, "%.2f"

    .line 3144
    .line 3145
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3146
    .line 3147
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 3148
    .line 3149
    .line 3150
    move-result v7

    .line 3151
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3152
    .line 3153
    .line 3154
    move-result-object v7

    .line 3155
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 3156
    .line 3157
    .line 3158
    move-result-object v7

    .line 3159
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3160
    .line 3161
    .line 3162
    move-result-object v5

    .line 3163
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3164
    .line 3165
    .line 3166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3167
    .line 3168
    .line 3169
    move-result-object v3

    .line 3170
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3171
    .line 3172
    const-string v6, "/efs/afc/apply_count"

    .line 3173
    .line 3174
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    .line 3176
    .line 3177
    const-string v5, "AfterimageCompensationService"

    .line 3178
    .line 3179
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3180
    .line 3181
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3182
    .line 3183
    .line 3184
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 3185
    .line 3186
    .line 3187
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3188
    .line 3189
    .line 3190
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3191
    .line 3192
    .line 3193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3194
    .line 3195
    .line 3196
    move-result-object v3

    .line 3197
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 3198
    .line 3199
    .line 3200
    goto :goto_f

    .line 3201
    :catch_c
    move-exception v0

    .line 3202
    move-object v3, v0

    .line 3203
    :try_start_1c
    const-string v5, "AfterimageCompensationService"

    .line 3204
    .line 3205
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3206
    .line 3207
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3208
    .line 3209
    .line 3210
    const-string v7, "NumberFormatException : "

    .line 3211
    .line 3212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3213
    .line 3214
    .line 3215
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3216
    .line 3217
    .line 3218
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3219
    .line 3220
    .line 3221
    move-result-object v3

    .line 3222
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    .line 3224
    .line 3225
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3226
    .line 3227
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 3228
    .line 3229
    .line 3230
    :cond_21
    :goto_f
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3231
    .line 3232
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 3233
    .line 3234
    .line 3235
    goto/16 :goto_14

    .line 3236
    .line 3237
    :cond_22
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3238
    .line 3239
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3240
    .line 3241
    .line 3242
    move-result v3

    .line 3243
    const/16 v5, 0x9

    .line 3244
    .line 3245
    if-eq v3, v5, :cond_27

    .line 3246
    .line 3247
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3248
    .line 3249
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3250
    .line 3251
    .line 3252
    move-result v3

    .line 3253
    const/16 v5, 0xb

    .line 3254
    .line 3255
    if-ne v3, v5, :cond_23

    .line 3256
    .line 3257
    goto/16 :goto_12

    .line 3258
    .line 3259
    :cond_23
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3260
    .line 3261
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3262
    .line 3263
    .line 3264
    move-result v3

    .line 3265
    if-ne v3, v8, :cond_25

    .line 3266
    .line 3267
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3268
    .line 3269
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3270
    .line 3271
    .line 3272
    move-result v3

    .line 3273
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 3274
    .line 3275
    .line 3276
    move-result v3

    .line 3277
    if-nez v3, :cond_29

    .line 3278
    .line 3279
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3280
    .line 3281
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 3282
    .line 3283
    .line 3284
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3285
    .line 3286
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 3287
    .line 3288
    .line 3289
    move-result-wide v5

    .line 3290
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3291
    .line 3292
    .line 3293
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3294
    .line 3295
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 3296
    .line 3297
    .line 3298
    move-result-wide v5

    .line 3299
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3300
    .line 3301
    .line 3302
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3303
    .line 3304
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 3305
    .line 3306
    .line 3307
    move-result-wide v5

    .line 3308
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3309
    .line 3310
    .line 3311
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3312
    .line 3313
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 3314
    .line 3315
    .line 3316
    move-result-wide v5

    .line 3317
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3318
    .line 3319
    .line 3320
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3321
    .line 3322
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 3323
    .line 3324
    .line 3325
    move-result-wide v5

    .line 3326
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3327
    .line 3328
    .line 3329
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3330
    .line 3331
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 3332
    .line 3333
    .line 3334
    move-result-wide v5

    .line 3335
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3336
    .line 3337
    .line 3338
    const-string v3, "AfterimageCompensationService"

    .line 3339
    .line 3340
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3341
    .line 3342
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3343
    .line 3344
    .line 3345
    const-string v6, "mAvgLum : "

    .line 3346
    .line 3347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3348
    .line 3349
    .line 3350
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3351
    .line 3352
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3353
    .line 3354
    .line 3355
    move-result-wide v6

    .line 3356
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3357
    .line 3358
    .line 3359
    const-string v6, ", mMaxBDI : "

    .line 3360
    .line 3361
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    .line 3363
    .line 3364
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3365
    .line 3366
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3367
    .line 3368
    .line 3369
    move-result-wide v6

    .line 3370
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3371
    .line 3372
    .line 3373
    const-string v6, ", mNBDI : "

    .line 3374
    .line 3375
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3376
    .line 3377
    .line 3378
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3379
    .line 3380
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3381
    .line 3382
    .line 3383
    move-result-wide v6

    .line 3384
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3385
    .line 3386
    .line 3387
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3388
    .line 3389
    .line 3390
    move-result-object v5

    .line 3391
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    .line 3393
    .line 3394
    const-string v3, "AfterimageCompensationService"

    .line 3395
    .line 3396
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3397
    .line 3398
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3399
    .line 3400
    .line 3401
    const-string/jumbo v6, "mEffAvgLum : "

    .line 3402
    .line 3403
    .line 3404
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3405
    .line 3406
    .line 3407
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3408
    .line 3409
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3410
    .line 3411
    .line 3412
    move-result-wide v6

    .line 3413
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3414
    .line 3415
    .line 3416
    const-string v6, ", mEffMaxBDI : "

    .line 3417
    .line 3418
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3419
    .line 3420
    .line 3421
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3422
    .line 3423
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3424
    .line 3425
    .line 3426
    move-result-wide v6

    .line 3427
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3428
    .line 3429
    .line 3430
    const-string v6, ", mEffNBDI : "

    .line 3431
    .line 3432
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3433
    .line 3434
    .line 3435
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3436
    .line 3437
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3438
    .line 3439
    .line 3440
    move-result-wide v6

    .line 3441
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3442
    .line 3443
    .line 3444
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3445
    .line 3446
    .line 3447
    move-result-object v5

    .line 3448
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    .line 3450
    .line 3451
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3452
    .line 3453
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3454
    .line 3455
    .line 3456
    move-result v3

    .line 3457
    const/16 v5, 0x64

    .line 3458
    .line 3459
    if-ge v3, v5, :cond_24

    .line 3460
    .line 3461
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3462
    .line 3463
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3464
    .line 3465
    .line 3466
    move-result-wide v5

    .line 3467
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 3468
    .line 3469
    cmpl-double v3, v5, v7

    .line 3470
    .line 3471
    if-ltz v3, :cond_24

    .line 3472
    .line 3473
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3474
    .line 3475
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3476
    .line 3477
    .line 3478
    move-result-wide v5

    .line 3479
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3480
    .line 3481
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V7(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 3482
    .line 3483
    .line 3484
    move-result-object v3

    .line 3485
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3486
    .line 3487
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3488
    .line 3489
    .line 3490
    move-result v7

    .line 3491
    aget v3, v3, v7

    .line 3492
    .line 3493
    float-to-double v7, v3

    .line 3494
    cmpl-double v3, v5, v7

    .line 3495
    .line 3496
    if-ltz v3, :cond_24

    .line 3497
    .line 3498
    const-string v3, "AfterimageCompensationService"

    .line 3499
    .line 3500
    const-string/jumbo v5, "nativeDataUpdate"

    .line 3501
    .line 3502
    .line 3503
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    .line 3505
    .line 3506
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3507
    .line 3508
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3509
    .line 3510
    .line 3511
    move-result v3

    .line 3512
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 3513
    .line 3514
    .line 3515
    move-result v3

    .line 3516
    if-nez v3, :cond_24

    .line 3517
    .line 3518
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3519
    .line 3520
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3521
    .line 3522
    .line 3523
    move-result v5

    .line 3524
    add-int/2addr v5, v2

    .line 3525
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 3526
    .line 3527
    .line 3528
    :try_start_1d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3529
    .line 3530
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3531
    .line 3532
    .line 3533
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3534
    .line 3535
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3536
    .line 3537
    .line 3538
    move-result v5

    .line 3539
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3540
    .line 3541
    .line 3542
    const-string v5, " "

    .line 3543
    .line 3544
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    .line 3546
    .line 3547
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3548
    .line 3549
    const-string v6, "%.2f"

    .line 3550
    .line 3551
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3552
    .line 3553
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 3554
    .line 3555
    .line 3556
    move-result v7

    .line 3557
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3558
    .line 3559
    .line 3560
    move-result-object v7

    .line 3561
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 3562
    .line 3563
    .line 3564
    move-result-object v7

    .line 3565
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3566
    .line 3567
    .line 3568
    move-result-object v5

    .line 3569
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3570
    .line 3571
    .line 3572
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3573
    .line 3574
    .line 3575
    move-result-object v3

    .line 3576
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3577
    .line 3578
    const-string v6, "/efs/afc/apply_count"

    .line 3579
    .line 3580
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3581
    .line 3582
    .line 3583
    const-string v5, "AfterimageCompensationService"

    .line 3584
    .line 3585
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3586
    .line 3587
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3588
    .line 3589
    .line 3590
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 3591
    .line 3592
    .line 3593
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    .line 3595
    .line 3596
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3597
    .line 3598
    .line 3599
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3600
    .line 3601
    .line 3602
    move-result-object v3

    .line 3603
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 3604
    .line 3605
    .line 3606
    goto :goto_10

    .line 3607
    :catch_d
    move-exception v0

    .line 3608
    move-object v3, v0

    .line 3609
    :try_start_1e
    const-string v5, "AfterimageCompensationService"

    .line 3610
    .line 3611
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3612
    .line 3613
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3614
    .line 3615
    .line 3616
    const-string v7, "NumberFormatException : "

    .line 3617
    .line 3618
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3619
    .line 3620
    .line 3621
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3622
    .line 3623
    .line 3624
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3625
    .line 3626
    .line 3627
    move-result-object v3

    .line 3628
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    .line 3630
    .line 3631
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3632
    .line 3633
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 3634
    .line 3635
    .line 3636
    :cond_24
    :goto_10
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3637
    .line 3638
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 3639
    .line 3640
    .line 3641
    goto/16 :goto_14

    .line 3642
    .line 3643
    :cond_25
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3644
    .line 3645
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3646
    .line 3647
    .line 3648
    move-result v3

    .line 3649
    const/16 v5, 0xc

    .line 3650
    .line 3651
    if-ne v3, v5, :cond_29

    .line 3652
    .line 3653
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3654
    .line 3655
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3656
    .line 3657
    .line 3658
    move-result v3

    .line 3659
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 3660
    .line 3661
    .line 3662
    move-result v3

    .line 3663
    if-nez v3, :cond_29

    .line 3664
    .line 3665
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3666
    .line 3667
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 3668
    .line 3669
    .line 3670
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3671
    .line 3672
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 3673
    .line 3674
    .line 3675
    move-result-wide v5

    .line 3676
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3677
    .line 3678
    .line 3679
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3680
    .line 3681
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 3682
    .line 3683
    .line 3684
    move-result-wide v5

    .line 3685
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3686
    .line 3687
    .line 3688
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3689
    .line 3690
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 3691
    .line 3692
    .line 3693
    move-result-wide v5

    .line 3694
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3695
    .line 3696
    .line 3697
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3698
    .line 3699
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 3700
    .line 3701
    .line 3702
    move-result-wide v5

    .line 3703
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3704
    .line 3705
    .line 3706
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3707
    .line 3708
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 3709
    .line 3710
    .line 3711
    move-result-wide v5

    .line 3712
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3713
    .line 3714
    .line 3715
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3716
    .line 3717
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 3718
    .line 3719
    .line 3720
    move-result-wide v5

    .line 3721
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 3722
    .line 3723
    .line 3724
    const-string v3, "AfterimageCompensationService"

    .line 3725
    .line 3726
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3727
    .line 3728
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3729
    .line 3730
    .line 3731
    const-string v6, "mAvgLum : "

    .line 3732
    .line 3733
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3734
    .line 3735
    .line 3736
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3737
    .line 3738
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3739
    .line 3740
    .line 3741
    move-result-wide v6

    .line 3742
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3743
    .line 3744
    .line 3745
    const-string v6, ", mMaxBDI : "

    .line 3746
    .line 3747
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3748
    .line 3749
    .line 3750
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3751
    .line 3752
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3753
    .line 3754
    .line 3755
    move-result-wide v6

    .line 3756
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3757
    .line 3758
    .line 3759
    const-string v6, ", mNBDI : "

    .line 3760
    .line 3761
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3762
    .line 3763
    .line 3764
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3765
    .line 3766
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3767
    .line 3768
    .line 3769
    move-result-wide v6

    .line 3770
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3771
    .line 3772
    .line 3773
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3774
    .line 3775
    .line 3776
    move-result-object v5

    .line 3777
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    .line 3779
    .line 3780
    const-string v3, "AfterimageCompensationService"

    .line 3781
    .line 3782
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3783
    .line 3784
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3785
    .line 3786
    .line 3787
    const-string/jumbo v6, "mEffAvgLum : "

    .line 3788
    .line 3789
    .line 3790
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3791
    .line 3792
    .line 3793
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3794
    .line 3795
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3796
    .line 3797
    .line 3798
    move-result-wide v6

    .line 3799
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3800
    .line 3801
    .line 3802
    const-string v6, ", mEffMaxBDI : "

    .line 3803
    .line 3804
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3805
    .line 3806
    .line 3807
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3808
    .line 3809
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3810
    .line 3811
    .line 3812
    move-result-wide v6

    .line 3813
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3814
    .line 3815
    .line 3816
    const-string v6, ", mEffNBDI : "

    .line 3817
    .line 3818
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3819
    .line 3820
    .line 3821
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3822
    .line 3823
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3824
    .line 3825
    .line 3826
    move-result-wide v6

    .line 3827
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3828
    .line 3829
    .line 3830
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3831
    .line 3832
    .line 3833
    move-result-object v5

    .line 3834
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    .line 3836
    .line 3837
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3838
    .line 3839
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3840
    .line 3841
    .line 3842
    move-result v3

    .line 3843
    const/16 v5, 0x64

    .line 3844
    .line 3845
    if-ge v3, v5, :cond_26

    .line 3846
    .line 3847
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3848
    .line 3849
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3850
    .line 3851
    .line 3852
    move-result-wide v5

    .line 3853
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 3854
    .line 3855
    cmpl-double v3, v5, v7

    .line 3856
    .line 3857
    if-ltz v3, :cond_26

    .line 3858
    .line 3859
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3860
    .line 3861
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 3862
    .line 3863
    .line 3864
    move-result-wide v5

    .line 3865
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3866
    .line 3867
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V9(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    .line 3868
    .line 3869
    .line 3870
    move-result-object v3

    .line 3871
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3872
    .line 3873
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3874
    .line 3875
    .line 3876
    move-result v7

    .line 3877
    aget v3, v3, v7

    .line 3878
    .line 3879
    float-to-double v7, v3

    .line 3880
    cmpl-double v3, v5, v7

    .line 3881
    .line 3882
    if-ltz v3, :cond_26

    .line 3883
    .line 3884
    const-string v3, "AfterimageCompensationService"

    .line 3885
    .line 3886
    const-string/jumbo v5, "nativeDataUpdate"

    .line 3887
    .line 3888
    .line 3889
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    .line 3891
    .line 3892
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3893
    .line 3894
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3895
    .line 3896
    .line 3897
    move-result v3

    .line 3898
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 3899
    .line 3900
    .line 3901
    move-result v3

    .line 3902
    if-nez v3, :cond_26

    .line 3903
    .line 3904
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3905
    .line 3906
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3907
    .line 3908
    .line 3909
    move-result v5

    .line 3910
    add-int/2addr v5, v2

    .line 3911
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 3912
    .line 3913
    .line 3914
    :try_start_1f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3915
    .line 3916
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3917
    .line 3918
    .line 3919
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3920
    .line 3921
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 3922
    .line 3923
    .line 3924
    move-result v5

    .line 3925
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3926
    .line 3927
    .line 3928
    const-string v5, " "

    .line 3929
    .line 3930
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3931
    .line 3932
    .line 3933
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3934
    .line 3935
    const-string v6, "%.2f"

    .line 3936
    .line 3937
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3938
    .line 3939
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 3940
    .line 3941
    .line 3942
    move-result v7

    .line 3943
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3944
    .line 3945
    .line 3946
    move-result-object v7

    .line 3947
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 3948
    .line 3949
    .line 3950
    move-result-object v7

    .line 3951
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3952
    .line 3953
    .line 3954
    move-result-object v5

    .line 3955
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3956
    .line 3957
    .line 3958
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3959
    .line 3960
    .line 3961
    move-result-object v3

    .line 3962
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 3963
    .line 3964
    const-string v6, "/efs/afc/apply_count"

    .line 3965
    .line 3966
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    .line 3968
    .line 3969
    const-string v5, "AfterimageCompensationService"

    .line 3970
    .line 3971
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3972
    .line 3973
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3974
    .line 3975
    .line 3976
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 3977
    .line 3978
    .line 3979
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3980
    .line 3981
    .line 3982
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3983
    .line 3984
    .line 3985
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3986
    .line 3987
    .line 3988
    move-result-object v3

    .line 3989
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 3990
    .line 3991
    .line 3992
    goto :goto_11

    .line 3993
    :catch_e
    move-exception v0

    .line 3994
    move-object v3, v0

    .line 3995
    :try_start_20
    const-string v5, "AfterimageCompensationService"

    .line 3996
    .line 3997
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3998
    .line 3999
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4000
    .line 4001
    .line 4002
    const-string v7, "NumberFormatException : "

    .line 4003
    .line 4004
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4005
    .line 4006
    .line 4007
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4008
    .line 4009
    .line 4010
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4011
    .line 4012
    .line 4013
    move-result-object v3

    .line 4014
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    .line 4016
    .line 4017
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4018
    .line 4019
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 4020
    .line 4021
    .line 4022
    :cond_26
    :goto_11
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4023
    .line 4024
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 4025
    .line 4026
    .line 4027
    goto/16 :goto_14

    .line 4028
    .line 4029
    :cond_27
    :goto_12
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4030
    .line 4031
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4032
    .line 4033
    .line 4034
    move-result v3

    .line 4035
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    .line 4036
    .line 4037
    .line 4038
    move-result v3

    .line 4039
    if-nez v3, :cond_29

    .line 4040
    .line 4041
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4042
    .line 4043
    invoke-static {v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 4044
    .line 4045
    .line 4046
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4047
    .line 4048
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    .line 4049
    .line 4050
    .line 4051
    move-result-wide v5

    .line 4052
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4053
    .line 4054
    .line 4055
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4056
    .line 4057
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    .line 4058
    .line 4059
    .line 4060
    move-result-wide v5

    .line 4061
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4062
    .line 4063
    .line 4064
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4065
    .line 4066
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    .line 4067
    .line 4068
    .line 4069
    move-result-wide v5

    .line 4070
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4071
    .line 4072
    .line 4073
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4074
    .line 4075
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    .line 4076
    .line 4077
    .line 4078
    move-result-wide v5

    .line 4079
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4080
    .line 4081
    .line 4082
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4083
    .line 4084
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    .line 4085
    .line 4086
    .line 4087
    move-result-wide v5

    .line 4088
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4089
    .line 4090
    .line 4091
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4092
    .line 4093
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    .line 4094
    .line 4095
    .line 4096
    move-result-wide v5

    .line 4097
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4098
    .line 4099
    .line 4100
    const-string v3, "AfterimageCompensationService"

    .line 4101
    .line 4102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4103
    .line 4104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4105
    .line 4106
    .line 4107
    const-string v6, "mAvgLum : "

    .line 4108
    .line 4109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4110
    .line 4111
    .line 4112
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4113
    .line 4114
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4115
    .line 4116
    .line 4117
    move-result-wide v6

    .line 4118
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4119
    .line 4120
    .line 4121
    const-string v6, ", mMaxBDI : "

    .line 4122
    .line 4123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4124
    .line 4125
    .line 4126
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4127
    .line 4128
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4129
    .line 4130
    .line 4131
    move-result-wide v6

    .line 4132
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4133
    .line 4134
    .line 4135
    const-string v6, ", mNBDI : "

    .line 4136
    .line 4137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4138
    .line 4139
    .line 4140
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4141
    .line 4142
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4143
    .line 4144
    .line 4145
    move-result-wide v6

    .line 4146
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4147
    .line 4148
    .line 4149
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4150
    .line 4151
    .line 4152
    move-result-object v5

    .line 4153
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    .line 4155
    .line 4156
    const-string v3, "AfterimageCompensationService"

    .line 4157
    .line 4158
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4159
    .line 4160
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4161
    .line 4162
    .line 4163
    const-string/jumbo v6, "mEffAvgLum : "

    .line 4164
    .line 4165
    .line 4166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    .line 4168
    .line 4169
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4170
    .line 4171
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4172
    .line 4173
    .line 4174
    move-result-wide v6

    .line 4175
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4176
    .line 4177
    .line 4178
    const-string v6, ", mEffMaxBDI : "

    .line 4179
    .line 4180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4181
    .line 4182
    .line 4183
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4184
    .line 4185
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4186
    .line 4187
    .line 4188
    move-result-wide v6

    .line 4189
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4190
    .line 4191
    .line 4192
    const-string v6, ", mEffNBDI : "

    .line 4193
    .line 4194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4195
    .line 4196
    .line 4197
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4198
    .line 4199
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4200
    .line 4201
    .line 4202
    move-result-wide v6

    .line 4203
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4204
    .line 4205
    .line 4206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4207
    .line 4208
    .line 4209
    move-result-object v5

    .line 4210
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    .line 4212
    .line 4213
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4214
    .line 4215
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4216
    .line 4217
    .line 4218
    move-result v3

    .line 4219
    const/16 v5, 0x64

    .line 4220
    .line 4221
    if-ge v3, v5, :cond_28

    .line 4222
    .line 4223
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4224
    .line 4225
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4226
    .line 4227
    .line 4228
    move-result-wide v5

    .line 4229
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 4230
    .line 4231
    cmpl-double v3, v5, v7

    .line 4232
    .line 4233
    if-ltz v3, :cond_28

    .line 4234
    .line 4235
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4236
    .line 4237
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4238
    .line 4239
    .line 4240
    move-result-wide v5

    .line 4241
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4242
    .line 4243
    iget-object v7, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    .line 4244
    .line 4245
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4246
    .line 4247
    .line 4248
    move-result v3

    .line 4249
    aget v3, v7, v3

    .line 4250
    .line 4251
    float-to-double v7, v3

    .line 4252
    cmpl-double v3, v5, v7

    .line 4253
    .line 4254
    if-ltz v3, :cond_28

    .line 4255
    .line 4256
    const-string v3, "AfterimageCompensationService"

    .line 4257
    .line 4258
    const-string/jumbo v5, "nativeDataUpdate"

    .line 4259
    .line 4260
    .line 4261
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    .line 4263
    .line 4264
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4265
    .line 4266
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4267
    .line 4268
    .line 4269
    move-result v3

    .line 4270
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    .line 4271
    .line 4272
    .line 4273
    move-result v3

    .line 4274
    if-nez v3, :cond_28

    .line 4275
    .line 4276
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4277
    .line 4278
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4279
    .line 4280
    .line 4281
    move-result v5

    .line 4282
    add-int/2addr v5, v2

    .line 4283
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 4284
    .line 4285
    .line 4286
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 4287
    .line 4288
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4289
    .line 4290
    .line 4291
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4292
    .line 4293
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4294
    .line 4295
    .line 4296
    move-result v5

    .line 4297
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4298
    .line 4299
    .line 4300
    const-string v5, " "

    .line 4301
    .line 4302
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4303
    .line 4304
    .line 4305
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4306
    .line 4307
    const-string v6, "%.2f"

    .line 4308
    .line 4309
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4310
    .line 4311
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 4312
    .line 4313
    .line 4314
    move-result v7

    .line 4315
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4316
    .line 4317
    .line 4318
    move-result-object v7

    .line 4319
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 4320
    .line 4321
    .line 4322
    move-result-object v7

    .line 4323
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4324
    .line 4325
    .line 4326
    move-result-object v5

    .line 4327
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4328
    .line 4329
    .line 4330
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4331
    .line 4332
    .line 4333
    move-result-object v3

    .line 4334
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4335
    .line 4336
    const-string v6, "/efs/afc/apply_count"

    .line 4337
    .line 4338
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4339
    .line 4340
    .line 4341
    const-string v5, "AfterimageCompensationService"

    .line 4342
    .line 4343
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4344
    .line 4345
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4346
    .line 4347
    .line 4348
    const-string/jumbo v7, "nativeDataUpdate - str : "

    .line 4349
    .line 4350
    .line 4351
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4352
    .line 4353
    .line 4354
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4355
    .line 4356
    .line 4357
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4358
    .line 4359
    .line 4360
    move-result-object v3

    .line 4361
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 4362
    .line 4363
    .line 4364
    goto :goto_13

    .line 4365
    :catch_f
    move-exception v0

    .line 4366
    move-object v3, v0

    .line 4367
    :try_start_22
    const-string v5, "AfterimageCompensationService"

    .line 4368
    .line 4369
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4370
    .line 4371
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4372
    .line 4373
    .line 4374
    const-string v7, "NumberFormatException : "

    .line 4375
    .line 4376
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4377
    .line 4378
    .line 4379
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4380
    .line 4381
    .line 4382
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4383
    .line 4384
    .line 4385
    move-result-object v3

    .line 4386
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    .line 4388
    .line 4389
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4390
    .line 4391
    invoke-static {v3, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 4392
    .line 4393
    .line 4394
    :cond_28
    :goto_13
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4395
    .line 4396
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 4397
    .line 4398
    .line 4399
    :cond_29
    :goto_14
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4400
    .line 4401
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4402
    .line 4403
    .line 4404
    move-result v3

    .line 4405
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4406
    .line 4407
    iget v6, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 4408
    .line 4409
    if-lt v3, v6, :cond_2c

    .line 4410
    .line 4411
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4412
    .line 4413
    .line 4414
    move-result v3

    .line 4415
    const/16 v5, 0x9

    .line 4416
    .line 4417
    if-eq v3, v5, :cond_2a

    .line 4418
    .line 4419
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4420
    .line 4421
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4422
    .line 4423
    .line 4424
    move-result v3

    .line 4425
    const/16 v5, 0xb

    .line 4426
    .line 4427
    if-ne v3, v5, :cond_2c

    .line 4428
    .line 4429
    :cond_2a
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4430
    .line 4431
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4432
    .line 4433
    .line 4434
    move-result v3

    .line 4435
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSaveSub(I)I

    .line 4436
    .line 4437
    .line 4438
    move-result v3

    .line 4439
    if-nez v3, :cond_2c

    .line 4440
    .line 4441
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4442
    .line 4443
    iput v4, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    .line 4444
    .line 4445
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLumSub()D

    .line 4446
    .line 4447
    .line 4448
    move-result-wide v5

    .line 4449
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4450
    .line 4451
    .line 4452
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4453
    .line 4454
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDISub()D

    .line 4455
    .line 4456
    .line 4457
    move-result-wide v5

    .line 4458
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4459
    .line 4460
    .line 4461
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4462
    .line 4463
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDISub()D

    .line 4464
    .line 4465
    .line 4466
    move-result-wide v5

    .line 4467
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4468
    .line 4469
    .line 4470
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4471
    .line 4472
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLumSub()D

    .line 4473
    .line 4474
    .line 4475
    move-result-wide v5

    .line 4476
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4477
    .line 4478
    .line 4479
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4480
    .line 4481
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDISub()D

    .line 4482
    .line 4483
    .line 4484
    move-result-wide v5

    .line 4485
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4486
    .line 4487
    .line 4488
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4489
    .line 4490
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDISub()D

    .line 4491
    .line 4492
    .line 4493
    move-result-wide v5

    .line 4494
    invoke-static {v3, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 4495
    .line 4496
    .line 4497
    const-string v3, "AfterimageCompensationService"

    .line 4498
    .line 4499
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4500
    .line 4501
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4502
    .line 4503
    .line 4504
    const-string v6, "mAvgLum_sub : "

    .line 4505
    .line 4506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4507
    .line 4508
    .line 4509
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4510
    .line 4511
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4512
    .line 4513
    .line 4514
    move-result-wide v6

    .line 4515
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4516
    .line 4517
    .line 4518
    const-string v6, ", mMaxBDI_sub : "

    .line 4519
    .line 4520
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4521
    .line 4522
    .line 4523
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4524
    .line 4525
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4526
    .line 4527
    .line 4528
    move-result-wide v6

    .line 4529
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4530
    .line 4531
    .line 4532
    const-string v6, ", mNBDI_sub : "

    .line 4533
    .line 4534
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4535
    .line 4536
    .line 4537
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4538
    .line 4539
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4540
    .line 4541
    .line 4542
    move-result-wide v6

    .line 4543
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4544
    .line 4545
    .line 4546
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4547
    .line 4548
    .line 4549
    move-result-object v5

    .line 4550
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    .line 4552
    .line 4553
    const-string v3, "AfterimageCompensationService"

    .line 4554
    .line 4555
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4556
    .line 4557
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4558
    .line 4559
    .line 4560
    const-string/jumbo v6, "mEffAvgLum_sub : "

    .line 4561
    .line 4562
    .line 4563
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4564
    .line 4565
    .line 4566
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4567
    .line 4568
    iget-wide v6, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    .line 4569
    .line 4570
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4571
    .line 4572
    .line 4573
    const-string v6, ", mEffMaxBDI_sub : "

    .line 4574
    .line 4575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4576
    .line 4577
    .line 4578
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4579
    .line 4580
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    .line 4581
    .line 4582
    .line 4583
    move-result-wide v6

    .line 4584
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4585
    .line 4586
    .line 4587
    const-string v6, ", mEffNBDI_sub : "

    .line 4588
    .line 4589
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4590
    .line 4591
    .line 4592
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4593
    .line 4594
    iget-wide v6, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    .line 4595
    .line 4596
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4597
    .line 4598
    .line 4599
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4600
    .line 4601
    .line 4602
    move-result-object v5

    .line 4603
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    .line 4605
    .line 4606
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4607
    .line 4608
    iget v5, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 4609
    .line 4610
    const/16 v6, 0x64

    .line 4611
    .line 4612
    if-ge v5, v6, :cond_2b

    .line 4613
    .line 4614
    iget-wide v6, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    .line 4615
    .line 4616
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    .line 4617
    .line 4618
    cmpl-double v6, v6, v8

    .line 4619
    .line 4620
    if-ltz v6, :cond_2b

    .line 4621
    .line 4622
    iget-wide v6, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    .line 4623
    .line 4624
    iget-object v3, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    .line 4625
    .line 4626
    aget v3, v3, v5

    .line 4627
    .line 4628
    float-to-double v8, v3

    .line 4629
    cmpl-double v3, v6, v8

    .line 4630
    .line 4631
    if-ltz v3, :cond_2b

    .line 4632
    .line 4633
    const-string v3, "AfterimageCompensationService"

    .line 4634
    .line 4635
    const-string/jumbo v5, "nativeDataUpdateSub"

    .line 4636
    .line 4637
    .line 4638
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    .line 4640
    .line 4641
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4642
    .line 4643
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 4644
    .line 4645
    .line 4646
    move-result v3

    .line 4647
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdateSub(I)I

    .line 4648
    .line 4649
    .line 4650
    move-result v3

    .line 4651
    if-nez v3, :cond_2b

    .line 4652
    .line 4653
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4654
    .line 4655
    iget v5, v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 4656
    .line 4657
    add-int/2addr v5, v2

    .line 4658
    invoke-static {v3, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 4659
    .line 4660
    .line 4661
    :try_start_23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 4662
    .line 4663
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4664
    .line 4665
    .line 4666
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4667
    .line 4668
    iget v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 4669
    .line 4670
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4671
    .line 4672
    .line 4673
    const-string v5, " "

    .line 4674
    .line 4675
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4676
    .line 4677
    .line 4678
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4679
    .line 4680
    const-string v6, "%.2f"

    .line 4681
    .line 4682
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4683
    .line 4684
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    .line 4685
    .line 4686
    .line 4687
    move-result v7

    .line 4688
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4689
    .line 4690
    .line 4691
    move-result-object v7

    .line 4692
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 4693
    .line 4694
    .line 4695
    move-result-object v7

    .line 4696
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4697
    .line 4698
    .line 4699
    move-result-object v5

    .line 4700
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4701
    .line 4702
    .line 4703
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4704
    .line 4705
    .line 4706
    move-result-object v3

    .line 4707
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4708
    .line 4709
    const-string v6, "/efs/afc1/apply_count"

    .line 4710
    .line 4711
    invoke-static {v5, v6, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4712
    .line 4713
    .line 4714
    const-string v5, "AfterimageCompensationService"

    .line 4715
    .line 4716
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4717
    .line 4718
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4719
    .line 4720
    .line 4721
    const-string/jumbo v7, "nativeDataUpdateSub - str : "

    .line 4722
    .line 4723
    .line 4724
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4725
    .line 4726
    .line 4727
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4728
    .line 4729
    .line 4730
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4731
    .line 4732
    .line 4733
    move-result-object v3

    .line 4734
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_10
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 4735
    .line 4736
    .line 4737
    goto :goto_15

    .line 4738
    :catch_10
    move-exception v0

    .line 4739
    move-object v3, v0

    .line 4740
    :try_start_24
    const-string v5, "AfterimageCompensationService"

    .line 4741
    .line 4742
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4743
    .line 4744
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4745
    .line 4746
    .line 4747
    const-string v7, "NumberFormatException : "

    .line 4748
    .line 4749
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4750
    .line 4751
    .line 4752
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4753
    .line 4754
    .line 4755
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4756
    .line 4757
    .line 4758
    move-result-object v3

    .line 4759
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    .line 4761
    .line 4762
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4763
    .line 4764
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 4765
    .line 4766
    .line 4767
    :cond_2b
    :goto_15
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4768
    .line 4769
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 4770
    .line 4771
    .line 4772
    :cond_2c
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4773
    .line 4774
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 4775
    .line 4776
    .line 4777
    move-result v3

    .line 4778
    if-nez v3, :cond_0

    .line 4779
    .line 4780
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4781
    .line 4782
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 4783
    .line 4784
    .line 4785
    move-result-object v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 4786
    if-eqz v3, :cond_0

    .line 4787
    .line 4788
    :try_start_25
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4789
    .line 4790
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 4791
    .line 4792
    .line 4793
    move-result-object v3

    .line 4794
    monitor-enter v3
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_11
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 4795
    :try_start_26
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4796
    .line 4797
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    .line 4798
    .line 4799
    .line 4800
    move-result-object v5

    .line 4801
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 4802
    .line 4803
    .line 4804
    monitor-exit v3

    .line 4805
    goto/16 :goto_0

    .line 4806
    .line 4807
    :catchall_3
    move-exception v0

    .line 4808
    move-object v5, v0

    .line 4809
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    .line 4810
    :try_start_27
    throw v5
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_11
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 4811
    :catch_11
    :try_start_28
    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 4812
    .line 4813
    goto/16 :goto_0

    .line 4814
    .line 4815
    :cond_2d
    const-string v4, "AfterimageCompensationService"

    .line 4816
    .line 4817
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4818
    .line 4819
    .line 4820
    const-string v3, "AfcThread is Terminated - 0"

    .line 4821
    .line 4822
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    .line 4824
    .line 4825
    :goto_16
    iget-object v1, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4826
    .line 4827
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    .line 4828
    .line 4829
    goto :goto_18

    .line 4830
    :goto_17
    :try_start_29
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4831
    .line 4832
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    .line 4833
    .line 4834
    .line 4835
    move-result v4

    .line 4836
    if-eqz v4, :cond_2e

    .line 4837
    .line 4838
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 4839
    .line 4840
    .line 4841
    :cond_2e
    const-string v3, "AfterimageCompensationService"

    .line 4842
    .line 4843
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4844
    .line 4845
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4846
    .line 4847
    .line 4848
    const-string v4, "AfcThread is Terminated - 0"

    .line 4849
    .line 4850
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    .line 4852
    .line 4853
    goto :goto_16

    .line 4854
    :goto_18
    return-void

    .line 4855
    :goto_19
    const-string v4, "AfterimageCompensationService"

    .line 4856
    .line 4857
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4858
    .line 4859
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4860
    .line 4861
    .line 4862
    const-string v5, "AfcThread is Terminated - 0"

    .line 4863
    .line 4864
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    .line 4866
    .line 4867
    iget-object v1, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4868
    .line 4869
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    .line 4870
    .line 4871
    throw v3
.end method
