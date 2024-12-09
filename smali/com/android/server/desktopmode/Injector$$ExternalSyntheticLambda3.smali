.class public final synthetic Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/Injector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/Injector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v7, Lcom/android/server/desktopmode/TouchpadManager;

    .line 14
    .line 15
    const-class v1, Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Landroid/content/Context;

    .line 23
    .line 24
    const-class v1, Lcom/android/server/desktopmode/IStateManager;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v3, v1

    .line 31
    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    .line 32
    .line 33
    const-class v1, Lcom/android/server/ServiceThread;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v4, v1

    .line 40
    check-cast v4, Lcom/android/server/ServiceThread;

    .line 41
    .line 42
    const-class v1, Lcom/android/server/desktopmode/SettingsHelper;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v5, v1

    .line 49
    check-cast v5, Lcom/android/server/desktopmode/SettingsHelper;

    .line 50
    .line 51
    const-class v1, Lcom/android/server/wm/WindowManagerService;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    move-object v6, v0

    .line 58
    check-cast v6, Lcom/android/server/wm/WindowManagerService;

    .line 59
    .line 60
    move-object v1, v7

    .line 61
    invoke-direct/range {v1 .. v6}, Lcom/android/server/desktopmode/TouchpadManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/WindowManagerService;)V

    .line 62
    .line 63
    .line 64
    return-object v7

    .line 65
    :pswitch_0
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v18, Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 71
    .line 72
    move-object/from16 v1, v18

    .line 73
    .line 74
    const-class v2, Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Landroid/content/Context;

    .line 81
    .line 82
    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    .line 89
    .line 90
    const-class v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 97
    .line 98
    const-class v5, Lcom/android/server/ServiceThread;

    .line 99
    .line 100
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/android/server/ServiceThread;

    .line 105
    .line 106
    const-class v6, Lcom/android/server/desktopmode/UiManager;

    .line 107
    .line 108
    invoke-virtual {v0, v6}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Lcom/android/server/desktopmode/UiManager;

    .line 113
    .line 114
    const-class v7, Lcom/android/server/desktopmode/SettingsHelper;

    .line 115
    .line 116
    invoke-virtual {v0, v7}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Lcom/android/server/desktopmode/SettingsHelper;

    .line 121
    .line 122
    const-class v8, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 123
    .line 124
    invoke-virtual {v0, v8}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    check-cast v8, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 129
    .line 130
    const-class v9, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 131
    .line 132
    invoke-virtual {v0, v9}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    check-cast v9, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 137
    .line 138
    const-class v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 139
    .line 140
    invoke-virtual {v0, v10}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 145
    .line 146
    const-class v11, Landroid/app/ActivityManagerInternal;

    .line 147
    .line 148
    invoke-virtual {v0, v11}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    check-cast v11, Landroid/app/ActivityManagerInternal;

    .line 153
    .line 154
    const-class v12, Lcom/android/server/wm/WindowManagerInternal;

    .line 155
    .line 156
    invoke-virtual {v0, v12}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    check-cast v12, Lcom/android/server/wm/WindowManagerInternal;

    .line 161
    .line 162
    const-class v13, Landroid/app/StatusBarManager;

    .line 163
    .line 164
    invoke-virtual {v0, v13}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v13

    .line 168
    check-cast v13, Landroid/app/StatusBarManager;

    .line 169
    .line 170
    const-class v13, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 171
    .line 172
    invoke-virtual {v0, v13}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    check-cast v13, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 177
    .line 178
    const-class v14, Lcom/samsung/android/os/SemDvfsManager;

    .line 179
    .line 180
    invoke-virtual {v0, v14}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    check-cast v14, Lcom/samsung/android/os/SemDvfsManager;

    .line 185
    .line 186
    const-class v15, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 187
    .line 188
    invoke-virtual {v0, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    check-cast v15, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 193
    .line 194
    const-class v15, Landroid/telecom/TelecomManager;

    .line 195
    .line 196
    invoke-virtual {v0, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    check-cast v15, Landroid/telecom/TelecomManager;

    .line 201
    .line 202
    move-object/from16 p0, v1

    .line 203
    .line 204
    const-class v1, Landroid/app/IUiModeManager;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    move-object/from16 v16, v1

    .line 211
    .line 212
    check-cast v16, Landroid/app/IUiModeManager;

    .line 213
    .line 214
    const-class v1, Lcom/android/server/desktopmode/HardwareManager;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Lcom/android/server/desktopmode/HardwareManager;

    .line 221
    .line 222
    const-class v1, Lcom/android/server/UiModeManagerService$LocalService;

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    move-object/from16 v17, v0

    .line 229
    .line 230
    check-cast v17, Lcom/android/server/UiModeManagerService$LocalService;

    .line 231
    .line 232
    move-object/from16 v1, p0

    .line 233
    .line 234
    invoke-direct/range {v1 .. v17}, Lcom/android/server/desktopmode/StandaloneModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/os/SemDvfsManager;Landroid/telecom/TelecomManager;Landroid/app/IUiModeManager;Lcom/android/server/UiModeManagerService$LocalService;)V

    .line 235
    .line 236
    .line 237
    return-object v18

    .line 238
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v1, Lcom/android/server/desktopmode/SettingsHelper;

    .line 244
    .line 245
    const-class v2, Landroid/content/Context;

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Landroid/content/Context;

    .line 252
    .line 253
    const-class v3, Lcom/android/server/ServiceThread;

    .line 254
    .line 255
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Lcom/android/server/ServiceThread;

    .line 260
    .line 261
    const-class v4, Lcom/android/server/desktopmode/IStateManager;

    .line 262
    .line 263
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    check-cast v4, Lcom/android/server/desktopmode/IStateManager;

    .line 268
    .line 269
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/server/desktopmode/SettingsHelper;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/Injector;)V

    .line 270
    .line 271
    .line 272
    return-object v1

    .line 273
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    new-instance v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 279
    .line 280
    const-class v2, Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v2, Landroid/content/Context;

    .line 287
    .line 288
    invoke-direct {v1, v2, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/Injector;)V

    .line 289
    .line 290
    .line 291
    return-object v1

    .line 292
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    new-instance v1, Lcom/android/server/desktopmode/PackageStateManager;

    .line 298
    .line 299
    const-class v2, Landroid/content/Context;

    .line 300
    .line 301
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    check-cast v2, Landroid/content/Context;

    .line 306
    .line 307
    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 308
    .line 309
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    .line 314
    .line 315
    const-class v4, Lcom/android/server/ServiceThread;

    .line 316
    .line 317
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v4, Lcom/android/server/ServiceThread;

    .line 322
    .line 323
    const-class v5, Landroid/content/pm/IPackageManager;

    .line 324
    .line 325
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, Landroid/content/pm/IPackageManager;

    .line 330
    .line 331
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/server/desktopmode/PackageStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Landroid/content/pm/IPackageManager;)V

    .line 332
    .line 333
    .line 334
    return-object v1

    .line 335
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    new-instance v7, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 341
    .line 342
    const-class v1, Landroid/content/Context;

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    move-object v2, v1

    .line 349
    check-cast v2, Landroid/content/Context;

    .line 350
    .line 351
    const-class v1, Lcom/android/server/desktopmode/IStateManager;

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    move-object v3, v1

    .line 358
    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    .line 359
    .line 360
    const-class v1, Lcom/android/server/desktopmode/SettingsHelper;

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    move-object v4, v1

    .line 367
    check-cast v4, Lcom/android/server/desktopmode/SettingsHelper;

    .line 368
    .line 369
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    move-object v5, v1

    .line 376
    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 377
    .line 378
    const-class v1, Lcom/android/server/wm/WindowManagerService;

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    .line 385
    .line 386
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    move-object v6, v0

    .line 393
    check-cast v6, Lcom/android/server/wm/WindowManagerInternal;

    .line 394
    .line 395
    move-object v1, v7

    .line 396
    invoke-direct/range {v1 .. v6}, Lcom/android/server/desktopmode/MultiResolutionManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/wm/WindowManagerInternal;)V

    .line 397
    .line 398
    .line 399
    return-object v7

    .line 400
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    new-instance v20, Lcom/android/server/desktopmode/DualModeChanger;

    .line 406
    .line 407
    move-object/from16 v1, v20

    .line 408
    .line 409
    const-class v2, Landroid/content/Context;

    .line 410
    .line 411
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    check-cast v2, Landroid/content/Context;

    .line 416
    .line 417
    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 418
    .line 419
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    .line 424
    .line 425
    const-class v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 426
    .line 427
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    check-cast v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 432
    .line 433
    const-class v5, Lcom/android/server/ServiceThread;

    .line 434
    .line 435
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    check-cast v5, Lcom/android/server/ServiceThread;

    .line 440
    .line 441
    const-class v6, Lcom/android/internal/statusbar/IStatusBarService;

    .line 442
    .line 443
    invoke-virtual {v0, v6}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    check-cast v6, Lcom/android/internal/statusbar/IStatusBarService;

    .line 448
    .line 449
    const-class v7, Lcom/android/server/desktopmode/UiManager;

    .line 450
    .line 451
    invoke-virtual {v0, v7}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    check-cast v7, Lcom/android/server/desktopmode/UiManager;

    .line 456
    .line 457
    const-class v8, Lcom/android/server/desktopmode/SettingsHelper;

    .line 458
    .line 459
    invoke-virtual {v0, v8}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    check-cast v8, Lcom/android/server/desktopmode/SettingsHelper;

    .line 464
    .line 465
    const-class v9, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 466
    .line 467
    invoke-virtual {v0, v9}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v9

    .line 471
    check-cast v9, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 472
    .line 473
    const-class v10, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 474
    .line 475
    invoke-virtual {v0, v10}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v10

    .line 479
    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 480
    .line 481
    const-class v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 482
    .line 483
    invoke-virtual {v0, v11}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v11

    .line 487
    check-cast v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 488
    .line 489
    const-class v12, Landroid/app/ActivityManagerInternal;

    .line 490
    .line 491
    invoke-virtual {v0, v12}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v12

    .line 495
    check-cast v12, Landroid/app/ActivityManagerInternal;

    .line 496
    .line 497
    const-class v13, Lcom/android/server/wm/WindowManagerInternal;

    .line 498
    .line 499
    invoke-virtual {v0, v13}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v13

    .line 503
    check-cast v13, Lcom/android/server/wm/WindowManagerInternal;

    .line 504
    .line 505
    const-class v14, Landroid/app/StatusBarManager;

    .line 506
    .line 507
    invoke-virtual {v0, v14}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v14

    .line 511
    check-cast v14, Landroid/app/StatusBarManager;

    .line 512
    .line 513
    const-class v14, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 514
    .line 515
    invoke-virtual {v0, v14}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v14

    .line 519
    check-cast v14, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 520
    .line 521
    const-class v15, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 522
    .line 523
    invoke-virtual {v0, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v15

    .line 527
    check-cast v15, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 528
    .line 529
    const-class v15, Lcom/android/server/desktopmode/CoverStateManager;

    .line 530
    .line 531
    invoke-virtual {v0, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v15

    .line 535
    check-cast v15, Lcom/android/server/desktopmode/CoverStateManager;

    .line 536
    .line 537
    move-object/from16 p0, v1

    .line 538
    .line 539
    const-class v1, Landroid/app/KeyguardManager;

    .line 540
    .line 541
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    move-object/from16 v16, v1

    .line 546
    .line 547
    check-cast v16, Landroid/app/KeyguardManager;

    .line 548
    .line 549
    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    .line 550
    .line 551
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    move-object/from16 v17, v1

    .line 556
    .line 557
    check-cast v17, Lcom/android/server/desktopmode/TouchpadManager;

    .line 558
    .line 559
    const-class v1, Landroid/os/PowerManager;

    .line 560
    .line 561
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    move-object/from16 v18, v1

    .line 566
    .line 567
    check-cast v18, Landroid/os/PowerManager;

    .line 568
    .line 569
    const-class v1, Landroid/os/PowerManagerInternal;

    .line 570
    .line 571
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    move-object/from16 v19, v0

    .line 576
    .line 577
    check-cast v19, Landroid/os/PowerManagerInternal;

    .line 578
    .line 579
    move-object/from16 v1, p0

    .line 580
    .line 581
    invoke-direct/range {v1 .. v19}, Lcom/android/server/desktopmode/DualModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/android/server/desktopmode/CoverStateManager;Landroid/app/KeyguardManager;Lcom/android/server/desktopmode/TouchpadManager;Landroid/os/PowerManager;Landroid/os/PowerManagerInternal;)V

    .line 582
    .line 583
    .line 584
    return-object v20

    .line 585
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 586
    .line 587
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    new-instance v1, Lcom/android/server/desktopmode/DockManager;

    .line 591
    .line 592
    const-class v2, Landroid/content/Context;

    .line 593
    .line 594
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    check-cast v2, Landroid/content/Context;

    .line 599
    .line 600
    const-class v3, Lcom/android/server/ServiceThread;

    .line 601
    .line 602
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    check-cast v3, Lcom/android/server/ServiceThread;

    .line 607
    .line 608
    const-class v4, Lcom/android/server/desktopmode/IStateManager;

    .line 609
    .line 610
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    check-cast v0, Lcom/android/server/desktopmode/IStateManager;

    .line 615
    .line 616
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/desktopmode/DockManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V

    .line 617
    .line 618
    .line 619
    return-object v1

    .line 620
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    new-instance v1, Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 626
    .line 627
    const-class v2, Landroid/content/Context;

    .line 628
    .line 629
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    check-cast v2, Landroid/content/Context;

    .line 634
    .line 635
    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 636
    .line 637
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    .line 642
    .line 643
    const-class v4, Lcom/android/server/desktopmode/SettingsHelper;

    .line 644
    .line 645
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    check-cast v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 650
    .line 651
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V

    .line 652
    .line 653
    .line 654
    return-object v1

    .line 655
    :pswitch_8
    iget-object v5, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 656
    .line 657
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 661
    .line 662
    const-class v1, Landroid/content/Context;

    .line 663
    .line 664
    invoke-virtual {v5, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    move-object v6, v1

    .line 669
    check-cast v6, Landroid/content/Context;

    .line 670
    .line 671
    const-class v1, Lcom/android/server/ServiceThread;

    .line 672
    .line 673
    invoke-virtual {v5, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    move-object v7, v1

    .line 678
    check-cast v7, Lcom/android/server/ServiceThread;

    .line 679
    .line 680
    const-class v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 681
    .line 682
    invoke-virtual {v5, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    move-object v8, v1

    .line 687
    check-cast v8, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 688
    .line 689
    const-class v1, Lcom/android/server/desktopmode/IStateManager;

    .line 690
    .line 691
    invoke-virtual {v5, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    move-object v9, v1

    .line 696
    check-cast v9, Lcom/android/server/desktopmode/IStateManager;

    .line 697
    .line 698
    move-object v4, v0

    .line 699
    invoke-direct/range {v4 .. v9}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Lcom/android/server/desktopmode/Injector;Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/IStateManager;)V

    .line 700
    .line 701
    .line 702
    return-object v0

    .line 703
    :pswitch_9
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 704
    .line 705
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    .line 707
    .line 708
    new-instance v7, Lcom/android/server/desktopmode/CoverStateManager;

    .line 709
    .line 710
    const-class v1, Landroid/content/Context;

    .line 711
    .line 712
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    move-object v2, v1

    .line 717
    check-cast v2, Landroid/content/Context;

    .line 718
    .line 719
    const-class v1, Lcom/android/server/desktopmode/IStateManager;

    .line 720
    .line 721
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    move-object v3, v1

    .line 726
    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    .line 727
    .line 728
    const-class v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 729
    .line 730
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    move-object v4, v1

    .line 735
    check-cast v4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 736
    .line 737
    const-class v1, Landroid/os/PowerManager;

    .line 738
    .line 739
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    move-object v5, v1

    .line 744
    check-cast v5, Landroid/os/PowerManager;

    .line 745
    .line 746
    const-class v1, Lcom/android/server/input/InputManagerService;

    .line 747
    .line 748
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    move-object v6, v0

    .line 753
    check-cast v6, Lcom/android/server/input/InputManagerService;

    .line 754
    .line 755
    move-object v1, v7

    .line 756
    invoke-direct/range {v1 .. v6}, Lcom/android/server/desktopmode/CoverStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Landroid/os/PowerManager;Lcom/android/server/input/InputManagerService;)V

    .line 757
    .line 758
    .line 759
    return-object v7

    .line 760
    :pswitch_a
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    .line 764
    .line 765
    new-instance v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 766
    .line 767
    const-class v2, Landroid/content/Context;

    .line 768
    .line 769
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    check-cast v2, Landroid/content/Context;

    .line 774
    .line 775
    const-class v3, Lcom/android/server/ServiceThread;

    .line 776
    .line 777
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    check-cast v3, Lcom/android/server/ServiceThread;

    .line 782
    .line 783
    const-class v4, Lcom/android/server/desktopmode/IStateManager;

    .line 784
    .line 785
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    check-cast v0, Lcom/android/server/desktopmode/IStateManager;

    .line 790
    .line 791
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V

    .line 792
    .line 793
    .line 794
    return-object v1

    .line 795
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 796
    .line 797
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    .line 799
    .line 800
    invoke-static {}, Lcom/samsung/android/knox/dex/DexManager;->getInstance()Lcom/samsung/android/knox/dex/DexManager;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    return-object v0

    .line 805
    :pswitch_c
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 806
    .line 807
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    .line 809
    .line 810
    const-string/jumbo v0, "display"

    .line 811
    .line 812
    .line 813
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    return-object v0

    .line 822
    :pswitch_d
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 823
    .line 824
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    .line 826
    .line 827
    const-class v1, Landroid/app/KeyguardManager;

    .line 828
    .line 829
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    check-cast v0, Landroid/app/KeyguardManager;

    .line 834
    .line 835
    return-object v0

    .line 836
    :pswitch_e
    iget-object v0, v0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 837
    .line 838
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 839
    .line 840
    .line 841
    new-instance v1, Lcom/android/server/desktopmode/StateManager;

    .line 842
    .line 843
    const-class v2, Lcom/android/server/ServiceThread;

    .line 844
    .line 845
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    check-cast v0, Lcom/android/server/ServiceThread;

    .line 850
    .line 851
    invoke-direct {v1, v0}, Lcom/android/server/desktopmode/StateManager;-><init>(Lcom/android/server/ServiceThread;)V

    .line 852
    .line 853
    .line 854
    return-object v1

    .line 855
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
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
