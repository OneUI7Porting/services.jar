.class public final synthetic Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;
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
    iput p2, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

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
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string/jumbo p0, "window"

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-class p0, Lcom/android/server/wm/WindowManagerInternal;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-class p0, Lcom/android/server/UiModeManagerService$LocalService;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/server/UiModeManagerService$LocalService;

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/android/server/desktopmode/BootInitBlocker;

    .line 59
    .line 60
    const-class v1, Lcom/android/server/ServiceThread;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/server/ServiceThread;

    .line 67
    .line 68
    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    .line 75
    .line 76
    const-class v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 83
    .line 84
    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/BootInitBlocker;-><init>(Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const-class v0, Landroid/telecom/TelecomManager;

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const-class v0, Landroid/app/StatusBarManager;

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Landroid/app/StatusBarManager;

    .line 114
    .line 115
    return-object p0

    .line 116
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const-class v0, Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Landroid/content/Context;

    .line 128
    .line 129
    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 130
    .line 131
    const-string v0, "DesktopModeService"

    .line 132
    .line 133
    invoke-static {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance v9, Lcom/android/server/desktopmode/HardwareManager;

    .line 144
    .line 145
    const-class v0, Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    move-object v1, v0

    .line 152
    check-cast v1, Landroid/content/Context;

    .line 153
    .line 154
    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    move-object v2, v0

    .line 161
    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    .line 162
    .line 163
    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object v3, v0

    .line 170
    check-cast v3, Lcom/android/server/desktopmode/SettingsHelper;

    .line 171
    .line 172
    const-class v0, Landroid/hardware/input/InputManager;

    .line 173
    .line 174
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    move-object v4, v0

    .line 179
    check-cast v4, Landroid/hardware/input/InputManager;

    .line 180
    .line 181
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 182
    .line 183
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    move-object v5, v0

    .line 188
    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 189
    .line 190
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    move-object v6, v0

    .line 197
    check-cast v6, Landroid/os/PowerManagerInternal;

    .line 198
    .line 199
    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    move-object v7, v0

    .line 206
    check-cast v7, Lcom/android/server/wm/WindowManagerService;

    .line 207
    .line 208
    const-class v0, Landroid/hardware/display/IDisplayManager;

    .line 209
    .line 210
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    move-object v8, p0

    .line 215
    check-cast v8, Landroid/hardware/display/IDisplayManager;

    .line 216
    .line 217
    move-object v0, v9

    .line 218
    invoke-direct/range {v0 .. v8}, Lcom/android/server/desktopmode/HardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Landroid/hardware/input/InputManager;Landroid/hardware/display/DisplayManager;Landroid/os/PowerManagerInternal;Lcom/android/server/wm/WindowManagerService;Landroid/hardware/display/IDisplayManager;)V

    .line 219
    .line 220
    .line 221
    return-object v9

    .line 222
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 223
    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 234
    .line 235
    return-object p0

    .line 236
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 237
    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    const-class p0, Landroid/os/PowerManagerInternal;

    .line 242
    .line 243
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 248
    .line 249
    return-object p0

    .line 250
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 251
    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    const-class v0, Landroid/os/PowerManager;

    .line 256
    .line 257
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    check-cast p0, Landroid/os/PowerManager;

    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 265
    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0

    .line 274
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 275
    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    const-string/jumbo p0, "statusbar"

    .line 280
    .line 281
    .line 282
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 292
    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    return-object p0

    .line 301
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 302
    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    const-string/jumbo p0, "input"

    .line 307
    .line 308
    .line 309
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-static {p0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    check-cast p0, Lcom/android/server/input/InputManagerService;

    .line 318
    .line 319
    return-object p0

    .line 320
    :pswitch_e
    iget-object v5, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 321
    .line 322
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    new-instance p0, Lcom/android/server/desktopmode/BlockerManager;

    .line 326
    .line 327
    const-class v0, Landroid/content/Context;

    .line 328
    .line 329
    invoke-virtual {v5, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    move-object v1, v0

    .line 334
    check-cast v1, Landroid/content/Context;

    .line 335
    .line 336
    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 337
    .line 338
    invoke-virtual {v5, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    move-object v2, v0

    .line 343
    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    .line 344
    .line 345
    const-class v0, Landroid/app/ActivityManager;

    .line 346
    .line 347
    invoke-virtual {v5, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    move-object v3, v0

    .line 352
    check-cast v3, Landroid/app/ActivityManager;

    .line 353
    .line 354
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 355
    .line 356
    invoke-virtual {v5, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    move-object v4, v0

    .line 361
    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 362
    .line 363
    move-object v0, p0

    .line 364
    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/BlockerManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;Lcom/android/server/desktopmode/Injector;)V

    .line 365
    .line 366
    .line 367
    return-object p0

    .line 368
    :pswitch_f
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 369
    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    const-class v0, Landroid/hardware/input/InputManager;

    .line 374
    .line 375
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 380
    .line 381
    return-object p0

    .line 382
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 383
    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    const-string/jumbo p0, "uimode"

    .line 388
    .line 389
    .line 390
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    invoke-static {p0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    return-object p0

    .line 399
    :pswitch_11
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 400
    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    new-instance v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 405
    .line 406
    const-class v1, Landroid/content/Context;

    .line 407
    .line 408
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    check-cast v1, Landroid/content/Context;

    .line 413
    .line 414
    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    .line 415
    .line 416
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    .line 421
    .line 422
    const-class v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 423
    .line 424
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 429
    .line 430
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/Injector;)V

    .line 431
    .line 432
    .line 433
    return-object v0

    .line 434
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 435
    .line 436
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 440
    .line 441
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object p0

    .line 445
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 446
    .line 447
    return-object p0

    .line 448
    :pswitch_13
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 449
    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 454
    .line 455
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 460
    .line 461
    return-object p0

    .line 462
    :pswitch_14
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 463
    .line 464
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 468
    .line 469
    .line 470
    move-result-object p0

    .line 471
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 472
    .line 473
    return-object p0

    .line 474
    :pswitch_15
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 475
    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 480
    .line 481
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 486
    .line 487
    return-object p0

    .line 488
    :pswitch_16
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 489
    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    const-string p0, "activity"

    .line 494
    .line 495
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    check-cast p0, Lcom/android/server/am/ActivityManagerService;

    .line 500
    .line 501
    return-object p0

    .line 502
    :pswitch_17
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 503
    .line 504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    const-class v0, Landroid/app/ActivityManager;

    .line 508
    .line 509
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    check-cast p0, Landroid/app/ActivityManager;

    .line 514
    .line 515
    return-object p0

    .line 516
    :pswitch_18
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 517
    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    new-instance v6, Lcom/android/server/desktopmode/McfManager;

    .line 522
    .line 523
    const-class v0, Landroid/content/Context;

    .line 524
    .line 525
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    move-object v1, v0

    .line 530
    check-cast v1, Landroid/content/Context;

    .line 531
    .line 532
    const-class v0, Lcom/android/server/ServiceThread;

    .line 533
    .line 534
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    move-object v2, v0

    .line 539
    check-cast v2, Lcom/android/server/ServiceThread;

    .line 540
    .line 541
    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 542
    .line 543
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    move-object v3, v0

    .line 548
    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    .line 549
    .line 550
    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 551
    .line 552
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    move-object v4, v0

    .line 557
    check-cast v4, Lcom/android/server/desktopmode/SettingsHelper;

    .line 558
    .line 559
    const-class v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 560
    .line 561
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object p0

    .line 565
    move-object v5, p0

    .line 566
    check-cast v5, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 567
    .line 568
    move-object v0, v6

    .line 569
    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/McfManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    .line 570
    .line 571
    .line 572
    return-object v6

    .line 573
    :pswitch_19
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 574
    .line 575
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    new-instance v8, Lcom/android/server/desktopmode/WirelessDexManager;

    .line 579
    .line 580
    const-class v0, Landroid/content/Context;

    .line 581
    .line 582
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    move-object v1, v0

    .line 587
    check-cast v1, Landroid/content/Context;

    .line 588
    .line 589
    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 590
    .line 591
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    move-object v2, v0

    .line 596
    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    .line 597
    .line 598
    const-class v0, Lcom/android/server/desktopmode/UiManager;

    .line 599
    .line 600
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    move-object v3, v0

    .line 605
    check-cast v3, Lcom/android/server/desktopmode/UiManager;

    .line 606
    .line 607
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 608
    .line 609
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    move-object v4, v0

    .line 614
    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 615
    .line 616
    const-class v0, Landroid/hardware/input/InputManager;

    .line 617
    .line 618
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    move-object v5, v0

    .line 623
    check-cast v5, Landroid/hardware/input/InputManager;

    .line 624
    .line 625
    const-class v0, Lcom/android/server/ServiceThread;

    .line 626
    .line 627
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    move-object v6, v0

    .line 632
    check-cast v6, Lcom/android/server/ServiceThread;

    .line 633
    .line 634
    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 635
    .line 636
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object p0

    .line 640
    move-object v7, p0

    .line 641
    check-cast v7, Lcom/android/server/wm/WindowManagerService;

    .line 642
    .line 643
    move-object v0, v8

    .line 644
    invoke-direct/range {v0 .. v7}, Lcom/android/server/desktopmode/WirelessDexManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/UiManager;Landroid/hardware/display/DisplayManager;Landroid/hardware/input/InputManager;Lcom/android/server/ServiceThread;Lcom/android/server/wm/WindowManagerService;)V

    .line 645
    .line 646
    .line 647
    return-object v8

    .line 648
    :pswitch_1a
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 649
    .line 650
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    .line 652
    .line 653
    new-instance p0, Lcom/android/server/ServiceThread;

    .line 654
    .line 655
    const-string/jumbo v0, "desktopmode"

    .line 656
    .line 657
    .line 658
    const/4 v1, -0x4

    .line 659
    const/4 v2, 0x0

    .line 660
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 664
    .line 665
    .line 666
    return-object p0

    .line 667
    :pswitch_1b
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 668
    .line 669
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    new-instance v0, Lcom/android/server/desktopmode/UiManager;

    .line 673
    .line 674
    const-class v1, Landroid/content/Context;

    .line 675
    .line 676
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    check-cast v1, Landroid/content/Context;

    .line 681
    .line 682
    const-class v2, Lcom/android/server/ServiceThread;

    .line 683
    .line 684
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    check-cast v2, Lcom/android/server/ServiceThread;

    .line 689
    .line 690
    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 691
    .line 692
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object p0

    .line 696
    check-cast p0, Lcom/android/server/desktopmode/IStateManager;

    .line 697
    .line 698
    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V

    .line 699
    .line 700
    .line 701
    return-object v0

    .line 702
    :pswitch_1c
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/Injector;

    .line 703
    .line 704
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector;->mContext:Landroid/content/Context;

    .line 705
    .line 706
    return-object p0

    .line 707
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
