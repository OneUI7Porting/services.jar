.class public final Lcom/android/server/desktopmode/Injector;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDependencies:Landroid/util/ArrayMap;

.field public final mProviders:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/Injector;->mDependencies:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/desktopmode/Injector;->mProviders:Landroid/util/ArrayMap;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/desktopmode/Injector;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class p1, Landroid/content/Context;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-class p1, Lcom/android/server/ServiceThread;

    .line 32
    .line 33
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/16 v1, 0xe

    .line 45
    .line 46
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 47
    .line 48
    .line 49
    const-class v1, Lcom/android/server/desktopmode/BlockerManager;

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/16 v1, 0x1a

    .line 57
    .line 58
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 59
    .line 60
    .line 61
    const-class v1, Lcom/android/server/desktopmode/BootInitBlocker;

    .line 62
    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 67
    .line 68
    const/4 v1, 0x4

    .line 69
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 70
    .line 71
    .line 72
    const-class v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 73
    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 78
    .line 79
    const/4 v1, 0x5

    .line 80
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 81
    .line 82
    .line 83
    const-class v1, Lcom/android/server/desktopmode/CoverStateManager;

    .line 84
    .line 85
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-class p1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 89
    .line 90
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 91
    .line 92
    const/4 v2, 0x6

    .line 93
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 100
    .line 101
    const/4 v1, 0x7

    .line 102
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 103
    .line 104
    .line 105
    const-class v1, Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 106
    .line 107
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 111
    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 115
    .line 116
    .line 117
    const-class v1, Lcom/android/server/desktopmode/DockManager;

    .line 118
    .line 119
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 123
    .line 124
    const/16 v1, 0x9

    .line 125
    .line 126
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 127
    .line 128
    .line 129
    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    .line 130
    .line 131
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-class p1, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 135
    .line 136
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    const/16 v2, 0xb

    .line 139
    .line 140
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    const/16 v1, 0x16

    .line 149
    .line 150
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 151
    .line 152
    .line 153
    const-class v1, Lcom/android/server/desktopmode/HardwareManager;

    .line 154
    .line 155
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 159
    .line 160
    const/4 v1, 0x0

    .line 161
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 162
    .line 163
    .line 164
    const-class v1, Lcom/android/server/desktopmode/IStateManager;

    .line 165
    .line 166
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 170
    .line 171
    const/16 v1, 0xa

    .line 172
    .line 173
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 174
    .line 175
    .line 176
    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 177
    .line 178
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    const-class p1, Lcom/android/server/desktopmode/PackageStateManager;

    .line 182
    .line 183
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 184
    .line 185
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 192
    .line 193
    const/16 v1, 0xc

    .line 194
    .line 195
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 196
    .line 197
    .line 198
    const-class v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 199
    .line 200
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 204
    .line 205
    const/16 v1, 0xd

    .line 206
    .line 207
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 208
    .line 209
    .line 210
    const-class v1, Lcom/android/server/desktopmode/SettingsHelper;

    .line 211
    .line 212
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 216
    .line 217
    const/16 v1, 0xe

    .line 218
    .line 219
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 220
    .line 221
    .line 222
    const-class v1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 223
    .line 224
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 228
    .line 229
    const/16 v1, 0xf

    .line 230
    .line 231
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 232
    .line 233
    .line 234
    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    .line 235
    .line 236
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    const/4 v1, 0x1

    .line 242
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 243
    .line 244
    .line 245
    const-class v1, Lcom/android/server/desktopmode/UiManager;

    .line 246
    .line 247
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 251
    .line 252
    const/4 v1, 0x3

    .line 253
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 254
    .line 255
    .line 256
    const-class v1, Lcom/android/server/desktopmode/WirelessDexManager;

    .line 257
    .line 258
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 262
    .line 263
    const/4 v1, 0x4

    .line 264
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 265
    .line 266
    .line 267
    const-class v1, Lcom/android/server/desktopmode/McfManager;

    .line 268
    .line 269
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    const-class p1, Landroid/app/ActivityManager;

    .line 273
    .line 274
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 275
    .line 276
    const/4 v2, 0x5

    .line 277
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    const-class p1, Lcom/android/server/am/ActivityManagerService;

    .line 284
    .line 285
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 286
    .line 287
    const/4 v2, 0x6

    .line 288
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 295
    .line 296
    const/4 v1, 0x7

    .line 297
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 298
    .line 299
    .line 300
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 301
    .line 302
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 306
    .line 307
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 308
    .line 309
    const/16 v2, 0x8

    .line 310
    .line 311
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 318
    .line 319
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 320
    .line 321
    const/16 v2, 0x9

    .line 322
    .line 323
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    const-class p1, Landroid/hardware/display/DisplayManager;

    .line 330
    .line 331
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 332
    .line 333
    const/16 v2, 0xa

    .line 334
    .line 335
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const-class p1, Landroid/app/IUiModeManager;

    .line 342
    .line 343
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 344
    .line 345
    const/16 v2, 0xc

    .line 346
    .line 347
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    const-class p1, Landroid/hardware/input/InputManager;

    .line 354
    .line 355
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 356
    .line 357
    const/16 v2, 0xd

    .line 358
    .line 359
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    const-class p1, Lcom/android/server/input/InputManagerService;

    .line 366
    .line 367
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 368
    .line 369
    const/16 v2, 0xf

    .line 370
    .line 371
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    const-class p1, Landroid/content/pm/IPackageManager;

    .line 378
    .line 379
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 380
    .line 381
    const/16 v2, 0x10

    .line 382
    .line 383
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    const-class p1, Lcom/android/internal/statusbar/IStatusBarService;

    .line 390
    .line 391
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 392
    .line 393
    const/16 v2, 0x11

    .line 394
    .line 395
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    const-class p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 402
    .line 403
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 404
    .line 405
    const/16 v2, 0x12

    .line 406
    .line 407
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    const-class p1, Landroid/os/PowerManager;

    .line 414
    .line 415
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 416
    .line 417
    const/16 v2, 0x13

    .line 418
    .line 419
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    const-class p1, Landroid/os/PowerManagerInternal;

    .line 426
    .line 427
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 428
    .line 429
    const/16 v2, 0x14

    .line 430
    .line 431
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    const-class p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 438
    .line 439
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 440
    .line 441
    const/16 v2, 0x15

    .line 442
    .line 443
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    const-class p1, Lcom/samsung/android/os/SemDvfsManager;

    .line 450
    .line 451
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 452
    .line 453
    const/16 v2, 0x17

    .line 454
    .line 455
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    const-class p1, Landroid/app/StatusBarManager;

    .line 462
    .line 463
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 464
    .line 465
    const/16 v2, 0x18

    .line 466
    .line 467
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    const-class p1, Landroid/telecom/TelecomManager;

    .line 474
    .line 475
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 476
    .line 477
    const/16 v2, 0x19

    .line 478
    .line 479
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 486
    .line 487
    const/16 v1, 0x1b

    .line 488
    .line 489
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 490
    .line 491
    .line 492
    const-class v1, Lcom/android/server/UiModeManagerService$LocalService;

    .line 493
    .line 494
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 498
    .line 499
    const/16 v1, 0x1c

    .line 500
    .line 501
    invoke-direct {p1, p0, v1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 502
    .line 503
    .line 504
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 505
    .line 506
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    const-class p1, Lcom/android/server/wm/WindowManagerService;

    .line 510
    .line 511
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    .line 512
    .line 513
    const/16 v2, 0x1d

    .line 514
    .line 515
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    const-class p1, Landroid/app/KeyguardManager;

    .line 522
    .line 523
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 524
    .line 525
    const/4 v2, 0x1

    .line 526
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    const-class p1, Landroid/hardware/display/IDisplayManager;

    .line 533
    .line 534
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 535
    .line 536
    const/4 v2, 0x2

    .line 537
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    const-class p1, Lcom/samsung/android/knox/dex/DexManager;

    .line 544
    .line 545
    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    .line 546
    .line 547
    const/4 v2, 0x3

    .line 548
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    return-void
.end method


# virtual methods
.method public createDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/Injector;->mProviders:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;->createDependency()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Unsupported dependency "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ". "

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector;->mProviders:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, " providers known."

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/Injector;->mDependencies:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/Injector;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v1
.end method

.method public final getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
