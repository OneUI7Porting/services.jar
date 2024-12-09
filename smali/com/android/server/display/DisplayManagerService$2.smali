.class public final Lcom/android/server/display/DisplayManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

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
    .locals 7

    .line 1
    iget p1, p0, Lcom/android/server/display/DisplayManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "com.samsung.intent.action.ROTATION_CHANGED"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    const-string/jumbo p1, "rotation"

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const-string/jumbo v1, "updateDisplayDevice"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    monitor-exit v1

    .line 48
    goto :goto_3

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v2, v2, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iput p1, v2, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotationForHiddenDisplay:I

    .line 56
    .line 57
    :cond_1
    monitor-exit v1

    .line 58
    goto :goto_1

    .line 59
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0

    .line 61
    :cond_2
    :goto_1
    const-string/jumbo v1, "waitForDeviceAdded"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 71
    .line 72
    new-instance v1, Lcom/android/server/display/DisplayManagerService$4$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayManagerService$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerService$2;I)V

    .line 75
    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    const-wide/16 p0, 0x12c

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const-wide/16 p0, 0x0

    .line 83
    .line 84
    :goto_2
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_3
    return-void

    .line 88
    :pswitch_0
    const-string p1, "android.os.action.SETTING_RESTORED"

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_b

    .line 99
    .line 100
    const-string/jumbo p1, "screen_resolution_mode"

    .line 101
    .line 102
    .line 103
    const-string/jumbo v0, "setting_name"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_b

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 117
    .line 118
    const-string p1, "Restoring resolution from backup: ("

    .line 119
    .line 120
    const-string p2, "Skipping resolution restore - "

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string/jumbo v1, "screen_resolution_mode"

    .line 129
    .line 130
    .line 131
    const/4 v2, -0x2

    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    goto/16 :goto_6

    .line 140
    .line 141
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 142
    .line 143
    monitor-enter v1

    .line 144
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 145
    .line 146
    const/4 v4, 0x1

    .line 147
    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-nez v2, :cond_6

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    goto :goto_4

    .line 155
    :cond_6
    iget-object v2, v2, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 156
    .line 157
    :goto_4
    if-nez v2, :cond_7

    .line 158
    .line 159
    const-string p0, "DisplayManagerService"

    .line 160
    .line 161
    const-string p1, "No default display device present to restore resolution mode"

    .line 162
    .line 163
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    monitor-exit v1

    .line 167
    goto :goto_6

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    goto :goto_5

    .line 170
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getSupportedResolutionsLocked()[Landroid/graphics/Point;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    array-length v5, v2

    .line 175
    const/4 v6, 0x2

    .line 176
    if-eq v5, v6, :cond_9

    .line 177
    .line 178
    sget-boolean p0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 179
    .line 180
    if-eqz p0, :cond_8

    .line 181
    .line 182
    const-string p0, "DisplayManagerService"

    .line 183
    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    array-length p2, v2

    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    :cond_8
    monitor-exit v1

    .line 201
    goto :goto_6

    .line 202
    :cond_9
    if-ne v0, v4, :cond_a

    .line 203
    .line 204
    move v4, v3

    .line 205
    :cond_a
    aget-object p2, v2, v4

    .line 206
    .line 207
    new-instance v2, Landroid/view/Display$Mode;

    .line 208
    .line 209
    iget v4, p2, Landroid/graphics/Point;->x:I

    .line 210
    .line 211
    iget v5, p2, Landroid/graphics/Point;->y:I

    .line 212
    .line 213
    const/4 v6, 0x0

    .line 214
    invoke-direct {v2, v4, v5, v6}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 215
    .line 216
    .line 217
    const-string v4, "DisplayManagerService"

    .line 218
    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string p1, ") "

    .line 228
    .line 229
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 233
    .line 234
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string/jumbo p1, "x"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget p1, p2, Landroid/graphics/Point;->y:I

    .line 244
    .line 245
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {v4, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

    .line 256
    .line 257
    .line 258
    monitor-exit v1

    .line 259
    goto :goto_6

    .line 260
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    throw p0

    .line 262
    :cond_b
    :goto_6
    return-void

    .line 263
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    const-string v0, "android.intent.action.DOCK_EVENT"

    .line 268
    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    const/4 v0, 0x1

    .line 274
    const/4 v1, 0x0

    .line 275
    if-eqz p1, :cond_e

    .line 276
    .line 277
    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 278
    .line 279
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 284
    .line 285
    if-eq p1, v0, :cond_d

    .line 286
    .line 287
    const/4 v3, 0x3

    .line 288
    if-eq p1, v3, :cond_d

    .line 289
    .line 290
    const/4 v3, 0x4

    .line 291
    if-ne p1, v3, :cond_c

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_c
    move p1, v1

    .line 295
    goto :goto_8

    .line 296
    :cond_d
    :goto_7
    move p1, v0

    .line 297
    :goto_8
    iput-boolean p1, v2, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    .line 298
    .line 299
    :cond_e
    const-string p1, "android.intent.action.DREAMING_STARTED"

    .line 300
    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_f

    .line 310
    .line 311
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 312
    .line 313
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    .line 314
    .line 315
    goto :goto_9

    .line 316
    :cond_f
    const-string p1, "android.intent.action.DREAMING_STOPPED"

    .line 317
    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-eqz p1, :cond_10

    .line 327
    .line 328
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 329
    .line 330
    iput-boolean v1, p1, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    .line 331
    .line 332
    :cond_10
    :goto_9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 333
    .line 334
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    .line 335
    .line 336
    if-eqz p1, :cond_11

    .line 337
    .line 338
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    .line 339
    .line 340
    if-eqz p1, :cond_11

    .line 341
    .line 342
    goto :goto_a

    .line 343
    :cond_11
    move v0, v1

    .line 344
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(Z)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    nop

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
