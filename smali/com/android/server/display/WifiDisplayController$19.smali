.class public final Lcom/android/server/display/WifiDisplayController$19;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$flags:I

.field public final synthetic val$height:I

.field public final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$oldSurface:Landroid/view/Surface;

.field public final synthetic val$surface:Landroid/view/Surface;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/display/WifiDisplayController$19;->val$width:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/display/WifiDisplayController$19;->val$height:I

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/display/WifiDisplayController$19;->val$flags:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    .line 9
    .line 10
    if-eqz v4, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    .line 13
    .line 14
    if-eqz v4, :cond_5

    .line 15
    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 19
    .line 20
    invoke-virtual {v4, v0}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_5

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 33
    .line 34
    monitor-enter v4

    .line 35
    :try_start_0
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    .line 38
    .line 39
    .line 40
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 41
    .line 42
    iget v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    .line 43
    .line 44
    if-nez v6, :cond_2

    .line 45
    .line 46
    iget-object v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 47
    .line 48
    if-eqz v6, :cond_4

    .line 49
    .line 50
    :cond_2
    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 51
    .line 52
    iget-object v6, v5, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_3

    .line 59
    .line 60
    new-instance v6, Lcom/android/server/display/DlnaController$1;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-direct {v6, v7, v5}, Lcom/android/server/display/DlnaController$1;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v5, v5, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 72
    .line 73
    iput v3, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    .line 74
    .line 75
    iput-object v2, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 76
    .line 77
    sget-object v6, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 78
    .line 79
    iput-object v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 80
    .line 81
    iput-object v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v6, Lcom/android/server/display/WifiDisplayAdapter$11;

    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    invoke-direct {v6, v5, v1, v7}, Lcom/android/server/display/WifiDisplayAdapter$11;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ZI)V

    .line 95
    .line 96
    .line 97
    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string/jumbo v4, "wifi_display_on"

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mfinish(Lcom/android/server/display/WifiDisplayController;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    .line 127
    .line 128
    if-eqz v0, :cond_8

    .line 129
    .line 130
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_8

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    .line 141
    .line 142
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 143
    .line 144
    iget-object v4, v4, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 145
    .line 146
    monitor-enter v4

    .line 147
    :try_start_2
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 148
    .line 149
    iget v5, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    .line 150
    .line 151
    if-nez v5, :cond_6

    .line 152
    .line 153
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 154
    .line 155
    if-eqz v5, :cond_7

    .line 156
    .line 157
    :cond_6
    iput v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    .line 158
    .line 159
    iput-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 162
    .line 163
    .line 164
    :cond_7
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mfinish(Lcom/android/server/display/WifiDisplayController;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    throw p0

    .line 174
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 175
    .line 176
    if-eqz v0, :cond_11

    .line 177
    .line 178
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    .line 179
    .line 180
    invoke-virtual {v0, v4}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_b

    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 187
    .line 188
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    .line 189
    .line 190
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 191
    .line 192
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 193
    .line 194
    iget-object v4, v4, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 195
    .line 196
    monitor-enter v4

    .line 197
    :try_start_4
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 198
    .line 199
    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 200
    .line 201
    invoke-virtual {v5, v2}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 206
    .line 207
    iget v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    .line 208
    .line 209
    if-ne v6, v1, :cond_9

    .line 210
    .line 211
    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 212
    .line 213
    if-eqz v5, :cond_9

    .line 214
    .line 215
    invoke-virtual {v5, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-nez v5, :cond_a

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catchall_2
    move-exception p0

    .line 223
    goto :goto_2

    .line 224
    :cond_9
    :goto_1
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 225
    .line 226
    iput v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    .line 227
    .line 228
    iput-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 229
    .line 230
    new-array v1, v1, [Landroid/hardware/display/WifiDisplay;

    .line 231
    .line 232
    aput-object v2, v1, v3

    .line 233
    .line 234
    iput-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 237
    .line 238
    .line 239
    :cond_a
    monitor-exit v4

    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :goto_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 243
    throw p0

    .line 244
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 245
    .line 246
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_c

    .line 253
    .line 254
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    .line 255
    .line 256
    if-eqz v0, :cond_10

    .line 257
    .line 258
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    .line 259
    .line 260
    if-eq v0, v1, :cond_10

    .line 261
    .line 262
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    .line 265
    .line 266
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 267
    .line 268
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    .line 269
    .line 270
    iget v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$width:I

    .line 271
    .line 272
    iget v5, p0, Lcom/android/server/display/WifiDisplayController$19;->val$height:I

    .line 273
    .line 274
    iget-object v6, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 275
    .line 276
    iget-object v6, v6, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 277
    .line 278
    monitor-enter v6

    .line 279
    :try_start_5
    const-string v7, "WifiDisplayAdapter"

    .line 280
    .line 281
    const-string/jumbo v8, "onDisplayChanged"

    .line 282
    .line 283
    .line 284
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    iget-object v7, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 288
    .line 289
    iget-object v7, v7, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 290
    .line 291
    invoke-virtual {v7, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iget-object v7, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 296
    .line 297
    iget-object v7, v7, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 298
    .line 299
    if-eqz v7, :cond_f

    .line 300
    .line 301
    invoke-virtual {v7, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eqz v7, :cond_f

    .line 306
    .line 307
    iget-object v7, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 308
    .line 309
    iget-object v7, v7, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 310
    .line 311
    invoke-virtual {v7, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-nez v7, :cond_d

    .line 316
    .line 317
    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 318
    .line 319
    iput-object v1, v3, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 320
    .line 321
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iget-object v4, v3, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .line 326
    .line 327
    if-eqz v4, :cond_e

    .line 328
    .line 329
    invoke-virtual {v4}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_e

    .line 340
    .line 341
    iget-object v4, v3, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .line 342
    .line 343
    iput-object v1, v4, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 344
    .line 345
    iput-object v2, v4, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 346
    .line 347
    const/4 v1, 0x2

    .line 348
    invoke-virtual {v3, v4, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 349
    .line 350
    .line 351
    goto :goto_3

    .line 352
    :catchall_3
    move-exception p0

    .line 353
    goto :goto_5

    .line 354
    :cond_d
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 355
    .line 356
    invoke-static {v1, v3, v4, v5}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mupdateDisplaySurfaceLocked(Lcom/android/server/display/WifiDisplayAdapter;Landroid/view/Surface;II)V

    .line 357
    .line 358
    .line 359
    :cond_e
    :goto_3
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 360
    .line 361
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 362
    .line 363
    .line 364
    :cond_f
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 365
    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    .line 366
    .line 367
    if-nez v0, :cond_11

    .line 368
    .line 369
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    .line 370
    .line 371
    if-eqz v3, :cond_11

    .line 372
    .line 373
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 374
    .line 375
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    .line 376
    .line 377
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 378
    .line 379
    iget v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$width:I

    .line 380
    .line 381
    iget v5, p0, Lcom/android/server/display/WifiDisplayController$19;->val$height:I

    .line 382
    .line 383
    iget v6, p0, Lcom/android/server/display/WifiDisplayController$19;->val$flags:I

    .line 384
    .line 385
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayAdapter$14;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 386
    .line 387
    .line 388
    goto :goto_6

    .line 389
    :goto_5
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 390
    throw p0

    .line 391
    :cond_11
    :goto_6
    return-void
.end method
