.class public final Lcom/android/server/wm/DexCompatController$H;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexCompatController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexCompatController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DexCompatController$H;->this$0:Lcom/android/server/wm/DexCompatController;

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
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget v1, v0, Landroid/os/Message;->what:I

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/android/server/wm/DexCompatController$Request;

    .line 12
    .line 13
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    move-object/from16 v4, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object/from16 v4, p0

    .line 25
    .line 26
    move v0, v3

    .line 27
    :goto_0
    iget-object v4, v4, Lcom/android/server/wm/DexCompatController$H;->this$0:Lcom/android/server/wm/DexCompatController;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v5, "startActivityAsToggleFreeform: failed, cannot find display#"

    .line 33
    .line 34
    .line 35
    iget-object v6, v1, Lcom/android/server/wm/DexCompatController$Request;->wpc:Lcom/android/server/wm/WindowProcessController;

    .line 36
    .line 37
    if-eqz v6, :cond_9

    .line 38
    .line 39
    iget-object v7, v4, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 42
    .line 43
    iget-object v8, v1, Lcom/android/server/wm/DexCompatController$Request;->reason:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v9, v7, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 46
    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 48
    .line 49
    .line 50
    monitor-enter v9

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const/4 v10, 0x2

    .line 54
    if-ne v2, v10, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :try_start_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_3
    :goto_1
    :try_start_1
    iget-object v10, v7, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 67
    .line 68
    iget-object v11, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 69
    .line 70
    iget v12, v6, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 71
    .line 72
    invoke-virtual {v10, v12, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    if-eq v10, v6, :cond_4

    .line 77
    .line 78
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 80
    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_4
    :try_start_2
    iget v10, v6, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 84
    .line 85
    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 86
    .line 87
    if-ne v10, v11, :cond_5

    .line 88
    .line 89
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_5
    :try_start_3
    const-string/jumbo v10, "startActivityForDexRestart"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-nez v10, :cond_7

    .line 102
    .line 103
    const-string/jumbo v10, "toggleFreeformWindowingMode"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_6

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_7
    :goto_2
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    .line 121
    .line 122
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v8, "("

    .line 131
    .line 132
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v8, ")"

    .line 139
    .line 140
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda11;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    iget-object v9, v7, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 155
    .line 156
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 157
    .line 158
    iget v6, v6, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 159
    .line 160
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-static {v0, v9, v6, v10, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v6, v7, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 173
    .line 174
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 175
    .line 176
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_8
    iget-object v0, v7, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 181
    .line 182
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 183
    .line 184
    iget v6, v6, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 185
    .line 186
    invoke-virtual {v0, v6, v2, v8}, Landroid/app/ActivityManagerInternal;->killProcessForDex(IILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :goto_4
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_9
    :goto_5
    iget-object v6, v4, Lcom/android/server/wm/DexCompatController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 196
    .line 197
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 198
    .line 199
    .line 200
    monitor-enter v6

    .line 201
    :try_start_6
    iget-object v0, v4, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 202
    .line 203
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-nez v0, :cond_a

    .line 210
    .line 211
    const-string v0, "DexCompatController"

    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 229
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :catchall_1
    move-exception v0

    .line 234
    goto :goto_7

    .line 235
    :cond_a
    const/4 v2, 0x6

    .line 236
    :try_start_7
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 237
    .line 238
    .line 239
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 240
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 241
    .line 242
    .line 243
    iget-object v0, v4, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 244
    .line 245
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 246
    .line 247
    iget v3, v1, Lcom/android/server/wm/DexCompatController$Request;->callingUid:I

    .line 248
    .line 249
    iget v4, v1, Lcom/android/server/wm/DexCompatController$Request;->realCallingPid:I

    .line 250
    .line 251
    iget v5, v1, Lcom/android/server/wm/DexCompatController$Request;->realCallingUid:I

    .line 252
    .line 253
    iget-object v6, v1, Lcom/android/server/wm/DexCompatController$Request;->callingPackage:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v7, v1, Lcom/android/server/wm/DexCompatController$Request;->callingFeatureId:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v8, v1, Lcom/android/server/wm/DexCompatController$Request;->intent:Landroid/content/Intent;

    .line 258
    .line 259
    iget-object v13, v1, Lcom/android/server/wm/DexCompatController$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 260
    .line 261
    iget v14, v1, Lcom/android/server/wm/DexCompatController$Request;->userId:I

    .line 262
    .line 263
    iget-object v0, v1, Lcom/android/server/wm/DexCompatController$Request;->reason:Ljava/lang/String;

    .line 264
    .line 265
    move-object/from16 v16, v0

    .line 266
    .line 267
    sget-object v18, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 268
    .line 269
    const/4 v12, 0x0

    .line 270
    const/4 v15, 0x0

    .line 271
    const/4 v9, 0x0

    .line 272
    const/4 v10, 0x0

    .line 273
    const/4 v11, 0x0

    .line 274
    const/16 v17, 0x0

    .line 275
    .line 276
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;)I

    .line 277
    .line 278
    .line 279
    :goto_6
    return-void

    .line 280
    :goto_7
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 281
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 282
    .line 283
    .line 284
    throw v0
.end method
