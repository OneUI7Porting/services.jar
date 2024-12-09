.class public final Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final val$extra:Ljava/lang/Object;

.field public final val$id:I

.field public final val$info:Ljava/lang/Object;

.field public final val$pkg:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;ILandroid/os/Bundle;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    .line 5
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    .line 6
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public postNotification()Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "WARNING: In a future release this will crash the app: "

    .line 4
    .line 5
    const-string v3, "Not posting notification without small icon: "

    .line 6
    .line 7
    const-string v4, "MultiStar Ghost Floatiog on, List = "

    .line 8
    .line 9
    const-string/jumbo v5, "postNotification postAtFrontOfQueue key = "

    .line 10
    .line 11
    .line 12
    const-string v6, "There are not grouped notifications. groupKey:"

    .line 13
    .line 14
    const-string v7, "Suppressing notification from package "

    .line 15
    .line 16
    const-string v8, "Cannot find enqueued record for key: "

    .line 17
    .line 18
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v9, Lcom/android/server/notification/NotificationManagerService;

    .line 21
    .line 22
    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    .line 23
    .line 24
    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 25
    .line 26
    invoke-virtual {v9, v10}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    const/4 v10, 0x1

    .line 31
    xor-int/2addr v9, v10

    .line 32
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v11, Lcom/android/server/notification/NotificationManagerService;

    .line 35
    .line 36
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v12, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v11, v12}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v12, Lcom/android/server/notification/NotificationManagerService;

    .line 47
    .line 48
    iget-object v12, v12, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v12

    .line 51
    const/4 v13, 0x0

    .line 52
    :try_start_0
    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v14, Lcom/android/server/notification/NotificationManagerService;

    .line 55
    .line 56
    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 57
    .line 58
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v15, v14}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smfindNotificationByListLocked(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/server/notification/NotificationRecord;

    .line 61
    .line 62
    .line 63
    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 64
    if-nez v14, :cond_2

    .line 65
    .line 66
    :try_start_1
    const-string v2, "NotificationService"

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    .line 85
    :try_start_2
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 88
    .line 89
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    move v3, v13

    .line 96
    :goto_0
    if-ge v3, v2, :cond_1

    .line 97
    .line 98
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    .line 101
    .line 102
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 109
    .line 110
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_0

    .line 121
    .line 122
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 125
    .line 126
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    move-object v1, v0

    .line 134
    goto/16 :goto_28

    .line 135
    .line 136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    :goto_1
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    return v13

    .line 141
    :catchall_1
    move-exception v0

    .line 142
    :goto_2
    move-object v2, v0

    .line 143
    move v4, v13

    .line 144
    goto/16 :goto_26

    .line 145
    .line 146
    :cond_2
    :try_start_3
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 151
    .line 152
    .line 153
    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    .line 154
    if-eqz v11, :cond_3

    .line 155
    .line 156
    :try_start_4
    const-class v11, Landroid/app/Notification$CallStyle;

    .line 157
    .line 158
    invoke-virtual {v15, v11}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 159
    .line 160
    .line 161
    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    if-eqz v11, :cond_3

    .line 163
    .line 164
    move v11, v10

    .line 165
    goto :goto_3

    .line 166
    :cond_3
    move v11, v13

    .line 167
    :goto_3
    :try_start_5
    invoke-virtual {v15}, Landroid/app/Notification;->isMediaNotification()Z

    .line 168
    .line 169
    .line 170
    move-result v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    .line 171
    if-nez v16, :cond_8

    .line 172
    .line 173
    if-nez v11, :cond_8

    .line 174
    .line 175
    if-nez v9, :cond_4

    .line 176
    .line 177
    :try_start_6
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v9, Lcom/android/server/notification/NotificationManagerService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 180
    .line 181
    :try_start_7
    invoke-virtual {v9, v14}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    .line 182
    .line 183
    .line 184
    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 185
    if-eqz v9, :cond_8

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :catchall_2
    move-exception v0

    .line 189
    goto :goto_2

    .line 190
    :cond_4
    :goto_4
    :try_start_8
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 193
    .line 194
    :try_start_9
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 195
    .line 196
    invoke-virtual {v2, v14}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 197
    .line 198
    .line 199
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 200
    .line 201
    if-eqz v2, :cond_5

    .line 202
    .line 203
    const-string v2, "NotificationService"

    .line 204
    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 208
    .line 209
    .line 210
    :try_start_a
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v4, Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 213
    .line 214
    :try_start_b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 222
    .line 223
    .line 224
    :cond_5
    :try_start_c
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 227
    .line 228
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    move v3, v13

    .line 235
    :goto_5
    if-ge v3, v2, :cond_7

    .line 236
    .line 237
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    .line 240
    .line 241
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 248
    .line 249
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_6

    .line 260
    .line 261
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 264
    .line 265
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_7
    :goto_6
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 275
    return v13

    .line 276
    :cond_8
    :try_start_d
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v15}, Landroid/app/Notification;->isGroupSummary()Z

    .line 281
    .line 282
    .line 283
    move-result v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    .line 284
    if-eqz v9, :cond_b

    .line 285
    .line 286
    :try_start_e
    const-string/jumbo v9, "ranker_group"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v15}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 297
    if-eqz v9, :cond_b

    .line 298
    .line 299
    :try_start_f
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v9, Lcom/android/server/notification/NotificationManagerService;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 302
    .line 303
    :try_start_10
    iget-object v11, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 304
    .line 305
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 309
    :try_start_11
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    invoke-virtual {v9, v10, v7, v11}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 317
    :try_start_12
    check-cast v7, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 323
    if-eqz v7, :cond_b

    .line 324
    .line 325
    :try_start_13
    const-string v2, "NotificationService"

    .line 326
    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 330
    .line 331
    .line 332
    :try_start_14
    iget-object v4, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 333
    .line 334
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 338
    :try_start_15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 346
    .line 347
    .line 348
    :try_start_16
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 351
    .line 352
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    move v3, v13

    .line 359
    :goto_7
    if-ge v3, v2, :cond_a

    .line 360
    .line 361
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    .line 364
    .line 365
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 372
    .line 373
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    if-eqz v4, :cond_9

    .line 384
    .line 385
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 388
    .line 389
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    goto :goto_8

    .line 395
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_a
    :goto_8
    monitor-exit v12
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 399
    return v13

    .line 400
    :catchall_3
    move-exception v0

    .line 401
    goto/16 :goto_2

    .line 402
    .line 403
    :catchall_4
    move-exception v0

    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :cond_b
    :try_start_17
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    .line 409
    .line 410
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    iget-object v9, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 419
    .line 420
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    invoke-virtual {v6, v9, v7}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(ILjava/lang/String;)Z

    .line 425
    .line 426
    .line 427
    move-result v6

    .line 428
    iput-boolean v6, v14, Lcom/android/server/notification/NotificationRecord;->mHidden:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 429
    .line 430
    if-eqz v6, :cond_c

    .line 431
    .line 432
    :try_start_18
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v6, Lcom/android/server/notification/NotificationManagerService;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 435
    .line 436
    :try_start_19
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 437
    .line 438
    invoke-virtual {v6, v14}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 439
    .line 440
    .line 441
    :cond_c
    :try_start_1a
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v6, Lcom/android/server/notification/NotificationManagerService;

    .line 444
    .line 445
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 446
    .line 447
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    check-cast v6, Lcom/android/server/notification/NotificationRecord;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    .line 454
    .line 455
    if-eqz v6, :cond_e

    .line 456
    .line 457
    :try_start_1b
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    if-nez v7, :cond_d

    .line 466
    .line 467
    goto :goto_9

    .line 468
    :cond_d
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 469
    .line 470
    .line 471
    move-result-object v7

    .line 472
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-virtual {v8, v7}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 477
    .line 478
    .line 479
    goto :goto_a

    .line 480
    :cond_e
    :goto_9
    :try_start_1c
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    .line 483
    .line 484
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    invoke-virtual {v7}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 489
    .line 490
    .line 491
    move-result-object v7

    .line 492
    invoke-virtual {v8, v7}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    .line 493
    .line 494
    .line 495
    :goto_a
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    .line 498
    .line 499
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v9

    .line 503
    invoke-virtual {v7, v9}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    move-result v7
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    .line 507
    const/4 v9, 0x0

    .line 508
    if-gez v7, :cond_11

    .line 509
    .line 510
    :try_start_1d
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 513
    .line 514
    :try_start_1e
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 515
    .line 516
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 517
    .line 518
    .line 519
    :try_start_1f
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 522
    .line 523
    :try_start_20
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 524
    .line 525
    invoke-virtual {v7, v14}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 526
    .line 527
    .line 528
    :try_start_21
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    .line 531
    .line 532
    :try_start_22
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 533
    .line 534
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 535
    .line 536
    .line 537
    move-result-object v10

    .line 538
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v10

    .line 542
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 543
    .line 544
    .line 545
    move-result-object v11

    .line 546
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 547
    .line 548
    .line 549
    move-result-object v11
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 550
    :try_start_23
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v13, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    .line 553
    .line 554
    move-object/from16 v17, v2

    .line 555
    .line 556
    move-object/from16 v18, v3

    .line 557
    .line 558
    :try_start_24
    iget-wide v2, v13, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    .line 559
    .line 560
    invoke-virtual {v7, v10, v11, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    .line 561
    .line 562
    .line 563
    :try_start_25
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 564
    .line 565
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    .line 566
    .line 567
    :try_start_26
    invoke-virtual {v2, v9, v14}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    invoke-virtual {v14, v2}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 572
    .line 573
    .line 574
    iput-boolean v2, v14, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    .line 575
    .line 576
    :try_start_27
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 577
    .line 578
    check-cast v3, Lcom/android/server/notification/NotificationManagerService;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    .line 579
    .line 580
    :try_start_28
    invoke-static {v3, v14}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpostedNotificationLog(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    .line 581
    .line 582
    .line 583
    :try_start_29
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v3, Lcom/android/server/notification/NotificationManagerService;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    .line 586
    .line 587
    :try_start_2a
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Lcom/android/server/notification/NotificationReminder;

    .line 588
    .line 589
    if-eqz v3, :cond_f

    .line 590
    .line 591
    invoke-virtual {v3, v14}, Lcom/android/server/notification/NotificationReminder;->addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    .line 592
    .line 593
    .line 594
    goto :goto_c

    .line 595
    :catchall_5
    move-exception v0

    .line 596
    :goto_b
    move-object v2, v0

    .line 597
    const/4 v4, 0x0

    .line 598
    goto/16 :goto_26

    .line 599
    .line 600
    :cond_f
    :goto_c
    :try_start_2b
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 601
    .line 602
    check-cast v3, Lcom/android/server/notification/NotificationManagerService;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_6

    .line 603
    .line 604
    :try_start_2c
    invoke-static {v3, v9, v14, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedSaveHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Z

    .line 605
    .line 606
    .line 607
    move-result v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    .line 608
    if-eqz v2, :cond_10

    .line 609
    .line 610
    :try_start_2d
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_6

    .line 613
    .line 614
    const/4 v3, 0x1

    .line 615
    :try_start_2e
    iput-boolean v3, v2, Lcom/android/server/notification/NotificationManagerService;->mIsInterruptivePostNotif:Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5

    .line 616
    .line 617
    goto :goto_d

    .line 618
    :catchall_6
    move-exception v0

    .line 619
    goto :goto_b

    .line 620
    :cond_10
    :goto_d
    const/4 v3, 0x1

    .line 621
    goto/16 :goto_f

    .line 622
    .line 623
    :cond_11
    move-object/from16 v17, v2

    .line 624
    .line 625
    move-object/from16 v18, v3

    .line 626
    .line 627
    :try_start_2f
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 630
    .line 631
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 632
    .line 633
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    move-object v6, v2

    .line 638
    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 639
    .line 640
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 641
    .line 642
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 643
    .line 644
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 645
    .line 646
    invoke-virtual {v2, v7, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 652
    .line 653
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 654
    .line 655
    invoke-virtual {v2, v14, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 656
    .line 657
    .line 658
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 659
    .line 660
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 661
    .line 662
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 663
    .line 664
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 677
    .line 678
    .line 679
    move-result-object v7

    .line 680
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v10, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 683
    .line 684
    iget-wide v10, v10, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    .line 685
    .line 686
    invoke-virtual {v2, v3, v7, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 687
    .line 688
    .line 689
    iget v2, v15, Landroid/app/Notification;->flags:I

    .line 690
    .line 691
    iget-object v3, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 692
    .line 693
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    iget v3, v3, Landroid/app/Notification;->flags:I

    .line 698
    .line 699
    and-int/lit8 v3, v3, 0x40

    .line 700
    .line 701
    or-int/2addr v2, v3

    .line 702
    iput v2, v15, Landroid/app/Notification;->flags:I

    .line 703
    .line 704
    const/4 v2, 0x1

    .line 705
    iput-boolean v2, v14, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 706
    .line 707
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 710
    .line 711
    invoke-virtual {v2, v6, v14}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    .line 712
    .line 713
    .line 714
    move-result v2

    .line 715
    iput-boolean v2, v14, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    .line 716
    .line 717
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    .line 718
    .line 719
    .line 720
    move-result v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    .line 721
    if-eqz v3, :cond_12

    .line 722
    .line 723
    if-eqz v2, :cond_12

    .line 724
    .line 725
    :try_start_30
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->resetRankingTime()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5

    .line 726
    .line 727
    .line 728
    :cond_12
    :try_start_31
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 729
    .line 730
    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    .line 731
    .line 732
    invoke-static {v3, v6, v14, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedSaveHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Z

    .line 733
    .line 734
    .line 735
    move-result v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_d

    .line 736
    if-eqz v2, :cond_13

    .line 737
    .line 738
    :try_start_32
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_6

    .line 741
    .line 742
    const/4 v3, 0x1

    .line 743
    :try_start_33
    iput-boolean v3, v2, Lcom/android/server/notification/NotificationManagerService;->mIsInterruptivePostNotif:Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5

    .line 744
    .line 745
    goto :goto_e

    .line 746
    :cond_13
    const/4 v3, 0x1

    .line 747
    :goto_e
    :try_start_34
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 750
    .line 751
    invoke-static {v2, v6, v14}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedDeletePrevHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    .line 752
    .line 753
    .line 754
    move-result v2
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_d

    .line 755
    if-eqz v2, :cond_14

    .line 756
    .line 757
    :try_start_35
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_6

    .line 760
    .line 761
    :try_start_36
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmNeedDeletePrevHistory(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_5

    .line 762
    .line 763
    .line 764
    :cond_14
    :goto_f
    :try_start_37
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 765
    .line 766
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 767
    .line 768
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 769
    .line 770
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v7

    .line 774
    invoke-virtual {v2, v7, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 780
    .line 781
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmIsMaxNotiLimitEnabled(Lcom/android/server/notification/NotificationManagerService;)Z

    .line 782
    .line 783
    .line 784
    move-result v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_d

    .line 785
    if-eqz v2, :cond_15

    .line 786
    .line 787
    :try_start_38
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 788
    .line 789
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_6

    .line 790
    .line 791
    :try_start_39
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 792
    .line 793
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 794
    .line 795
    .line 796
    move-result v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_5

    .line 797
    :try_start_3a
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    .line 800
    .line 801
    :try_start_3b
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMaxNotiLimitCount(Lcom/android/server/notification/NotificationManagerService;)I

    .line 802
    .line 803
    .line 804
    move-result v7

    .line 805
    if-lt v2, v7, :cond_15

    .line 806
    .line 807
    const-string v7, "NotificationService"

    .line 808
    .line 809
    new-instance v10, Ljava/lang/StringBuilder;

    .line 810
    .line 811
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v5

    .line 818
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    const-string v5, ", count = "

    .line 822
    .line 823
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_5

    .line 834
    .line 835
    .line 836
    :try_start_3c
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6

    .line 839
    .line 840
    :try_start_3d
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 841
    .line 842
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;

    .line 843
    .line 844
    const/4 v7, 0x1

    .line 845
    invoke-direct {v5, v7, v1}, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v2, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_5

    .line 849
    .line 850
    .line 851
    :cond_15
    :try_start_3e
    iget v2, v15, Landroid/app/Notification;->flags:I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_d

    .line 852
    .line 853
    and-int/lit8 v5, v2, 0x40

    .line 854
    .line 855
    if-eqz v5, :cond_16

    .line 856
    .line 857
    or-int/lit8 v2, v2, 0x20

    .line 858
    .line 859
    :try_start_3f
    iput v2, v15, Landroid/app/Notification;->flags:I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_5

    .line 860
    .line 861
    :cond_16
    :try_start_40
    invoke-static {}, Landroid/app/Flags;->checkAutogroupBeforePost()Z

    .line 862
    .line 863
    .line 864
    move-result v2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_d

    .line 865
    const/4 v5, 0x2

    .line 866
    if-eqz v2, :cond_1c

    .line 867
    .line 868
    :try_start_41
    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 869
    .line 870
    .line 871
    move-result-object v2
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_5

    .line 872
    if-eqz v2, :cond_1c

    .line 873
    .line 874
    :try_start_42
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 875
    .line 876
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_6

    .line 877
    .line 878
    :try_start_43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    iget v2, v14, Lcom/android/server/notification/NotificationRecord;->mCriticality:I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_8

    .line 882
    .line 883
    if-ge v2, v5, :cond_17

    .line 884
    .line 885
    goto/16 :goto_14

    .line 886
    .line 887
    :cond_17
    if-eqz v6, :cond_18

    .line 888
    .line 889
    :try_start_44
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    goto :goto_10

    .line 894
    :cond_18
    move-object v2, v9

    .line 895
    :goto_10
    if-eqz v2, :cond_19

    .line 896
    .line 897
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v7

    .line 901
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v10

    .line 905
    invoke-static {v7, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result v7

    .line 909
    if-eqz v7, :cond_19

    .line 910
    .line 911
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 912
    .line 913
    .line 914
    move-result-object v2

    .line 915
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 916
    .line 917
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 918
    .line 919
    .line 920
    move-result-object v7

    .line 921
    iget v7, v7, Landroid/app/Notification;->flags:I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_5

    .line 922
    .line 923
    if-eq v2, v7, :cond_1c

    .line 924
    .line 925
    :cond_19
    :try_start_45
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 926
    .line 927
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_6

    .line 928
    .line 929
    :try_start_46
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 930
    .line 931
    monitor-enter v2
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_5

    .line 932
    :try_start_47
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 933
    .line 934
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    .line 935
    .line 936
    iget-object v10, v7, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 937
    .line 938
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 939
    .line 940
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 941
    .line 942
    .line 943
    move-result v11

    .line 944
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 945
    .line 946
    .line 947
    move-result-object v11

    .line 948
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v7

    .line 952
    check-cast v7, Landroid/util/ArrayMap;

    .line 953
    .line 954
    if-eqz v7, :cond_1a

    .line 955
    .line 956
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v11

    .line 960
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-result v7

    .line 964
    if-eqz v7, :cond_1a

    .line 965
    .line 966
    move v7, v3

    .line 967
    goto :goto_11

    .line 968
    :cond_1a
    const/4 v7, 0x0

    .line 969
    :goto_11
    invoke-virtual {v10, v8, v7}, Lcom/android/server/notification/GroupHelper;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)Z

    .line 970
    .line 971
    .line 972
    move-result v7

    .line 973
    if-eqz v7, :cond_1b

    .line 974
    .line 975
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 976
    .line 977
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;

    .line 978
    .line 979
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 980
    .line 981
    const/4 v11, 0x0

    .line 982
    invoke-virtual {v7, v10, v11}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;Z)V

    .line 983
    .line 984
    .line 985
    goto :goto_12

    .line 986
    :catchall_7
    move-exception v0

    .line 987
    move-object v3, v0

    .line 988
    goto :goto_13

    .line 989
    :cond_1b
    :goto_12
    monitor-exit v2

    .line 990
    goto :goto_14

    .line 991
    :goto_13
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_7

    .line 992
    :try_start_48
    throw v3
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_5

    .line 993
    :catchall_8
    move-exception v0

    .line 994
    goto/16 :goto_b

    .line 995
    .line 996
    :cond_1c
    :goto_14
    :try_start_49
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 997
    .line 998
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 999
    .line 1000
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1001
    .line 1002
    invoke-virtual {v2, v14}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 1008
    .line 1009
    iget-object v7, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1010
    .line 1011
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 1012
    .line 1013
    invoke-virtual {v7, v2}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 1014
    .line 1015
    .line 1016
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1017
    .line 1018
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 1019
    .line 1020
    iget-object v7, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1021
    .line 1022
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 1023
    .line 1024
    iget-object v7, v7, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 1025
    .line 1026
    invoke-static {v2, v14, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 1027
    .line 1028
    .line 1029
    move-result v2

    .line 1030
    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v7
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_d

    .line 1034
    const/4 v10, 0x4

    .line 1035
    if-eqz v7, :cond_31

    .line 1036
    .line 1037
    :try_start_4a
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1038
    .line 1039
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_6

    .line 1040
    .line 1041
    :try_start_4b
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 1042
    .line 1043
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    .line 1044
    .line 1045
    .line 1046
    move-result v7
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_5

    .line 1047
    if-eqz v7, :cond_1d

    .line 1048
    .line 1049
    :try_start_4c
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1050
    .line 1051
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_6

    .line 1052
    .line 1053
    :try_start_4d
    iget-boolean v7, v7, Lcom/android/server/notification/NotificationManagerService;->mIsDisableHunByCall:Z

    .line 1054
    .line 1055
    if-eqz v7, :cond_1d

    .line 1056
    .line 1057
    const-string v7, "NotificationService"

    .line 1058
    .line 1059
    const-string v11, "Disable HeadsUp by Call"

    .line 1060
    .line 1061
    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    .line 1063
    .line 1064
    iget v7, v15, Landroid/app/Notification;->semFlags:I

    .line 1065
    .line 1066
    or-int/lit8 v7, v7, 0x8

    .line 1067
    .line 1068
    iput v7, v15, Landroid/app/Notification;->semFlags:I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_5

    .line 1069
    .line 1070
    move v7, v3

    .line 1071
    goto :goto_15

    .line 1072
    :cond_1d
    const/4 v7, 0x0

    .line 1073
    :goto_15
    if-nez v7, :cond_1f

    .line 1074
    .line 1075
    :try_start_4e
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1076
    .line 1077
    check-cast v11, Lcom/android/server/notification/NotificationManagerService;
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_6

    .line 1078
    .line 1079
    :try_start_4f
    invoke-static {v11}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSmartPopupEnable(Lcom/android/server/notification/NotificationManagerService;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v11
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_5

    .line 1083
    if-eqz v11, :cond_1f

    .line 1084
    .line 1085
    :try_start_50
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1086
    .line 1087
    check-cast v11, Lcom/android/server/notification/NotificationManagerService;
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_6

    .line 1088
    .line 1089
    :try_start_51
    iget-boolean v13, v11, Lcom/android/server/notification/NotificationManagerService;->mMultiStarEnable:Z

    .line 1090
    .line 1091
    if-eqz v13, :cond_1f

    .line 1092
    .line 1093
    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    .line 1094
    .line 1095
    if-eqz v11, :cond_1f

    .line 1096
    .line 1097
    const-string v11, "NotificationService"

    .line 1098
    .line 1099
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_5

    .line 1102
    .line 1103
    .line 1104
    :try_start_52
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_6

    .line 1107
    .line 1108
    :try_start_53
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    .line 1109
    .line 1110
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v4

    .line 1117
    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_5

    .line 1118
    .line 1119
    .line 1120
    :try_start_54
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1121
    .line 1122
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_6

    .line 1123
    .line 1124
    :try_start_55
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    .line 1125
    .line 1126
    const-string v11, "all"

    .line 1127
    .line 1128
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v4
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_5

    .line 1132
    if-nez v4, :cond_1e

    .line 1133
    .line 1134
    :try_start_56
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1135
    .line 1136
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_6

    .line 1137
    .line 1138
    :try_start_57
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    .line 1139
    .line 1140
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v11

    .line 1144
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v11

    .line 1148
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1149
    .line 1150
    .line 1151
    move-result v4

    .line 1152
    if-eqz v4, :cond_1f

    .line 1153
    .line 1154
    :cond_1e
    const-string v4, "call"

    .line 1155
    .line 1156
    invoke-virtual {v14, v4}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v4

    .line 1160
    if-nez v4, :cond_1f

    .line 1161
    .line 1162
    const-class v4, Landroid/app/Notification$CallStyle;

    .line 1163
    .line 1164
    invoke-virtual {v15, v4}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v4

    .line 1168
    if-nez v4, :cond_1f

    .line 1169
    .line 1170
    iget v4, v15, Landroid/app/Notification;->semFlags:I

    .line 1171
    .line 1172
    or-int/lit8 v4, v4, 0x8

    .line 1173
    .line 1174
    iput v4, v15, Landroid/app/Notification;->semFlags:I
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_5

    .line 1175
    .line 1176
    :cond_1f
    if-nez v7, :cond_29

    .line 1177
    .line 1178
    :try_start_58
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1179
    .line 1180
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_6

    .line 1181
    .line 1182
    :try_start_59
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 1183
    .line 1184
    if-eqz v4, :cond_29

    .line 1185
    .line 1186
    new-instance v4, Landroid/os/Bundle;

    .line 1187
    .line 1188
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1189
    .line 1190
    .line 1191
    const-string v7, "isHeadUp"

    .line 1192
    .line 1193
    iget v11, v14, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 1194
    .line 1195
    if-lt v11, v10, :cond_20

    .line 1196
    .line 1197
    move v11, v3

    .line 1198
    goto :goto_16

    .line 1199
    :cond_20
    const/4 v11, 0x0

    .line 1200
    :goto_16
    invoke-virtual {v4, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1201
    .line 1202
    .line 1203
    const-string v7, "isUpdate"

    .line 1204
    .line 1205
    iget-boolean v11, v14, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 1206
    .line 1207
    invoke-virtual {v4, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1208
    .line 1209
    .line 1210
    const-string v7, "isInterrupt"

    .line 1211
    .line 1212
    iget-boolean v11, v14, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_5

    .line 1213
    .line 1214
    if-eqz v11, :cond_21

    .line 1215
    .line 1216
    :try_start_5a
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1217
    .line 1218
    check-cast v11, Lcom/android/server/notification/NotificationManagerService;
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_6

    .line 1219
    .line 1220
    :try_start_5b
    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1221
    .line 1222
    invoke-virtual {v11}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v11
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_5

    .line 1226
    if-eqz v11, :cond_21

    .line 1227
    .line 1228
    :try_start_5c
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1229
    .line 1230
    check-cast v11, Lcom/android/server/notification/NotificationManagerService;
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_6

    .line 1231
    .line 1232
    :try_start_5d
    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1233
    .line 1234
    invoke-virtual {v11}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v11

    .line 1238
    iget v11, v11, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1239
    .line 1240
    and-int/lit8 v11, v11, 0x10

    .line 1241
    .line 1242
    if-eqz v11, :cond_21

    .line 1243
    .line 1244
    move v11, v3

    .line 1245
    goto :goto_17

    .line 1246
    :cond_21
    const/4 v11, 0x0

    .line 1247
    :goto_17
    invoke-virtual {v4, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1248
    .line 1249
    .line 1250
    const-string/jumbo v7, "visibility"

    .line 1251
    .line 1252
    .line 1253
    iget-object v11, v14, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1254
    .line 1255
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 1256
    .line 1257
    .line 1258
    move-result v11

    .line 1259
    invoke-virtual {v4, v7, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1260
    .line 1261
    .line 1262
    const-string/jumbo v7, "sound"

    .line 1263
    .line 1264
    .line 1265
    iget-object v11, v14, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 1266
    .line 1267
    invoke-virtual {v4, v7, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1268
    .line 1269
    .line 1270
    const-string/jumbo v7, "vibrate"

    .line 1271
    .line 1272
    .line 1273
    iget-object v11, v14, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    .line 1274
    .line 1275
    invoke-virtual {v4, v7, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1276
    .line 1277
    .line 1278
    sget-boolean v7, Lcom/android/server/notification/NmRune;->NM_SUPPORT_SUB_DISPLAY_EDGE_LIGHTING:Z

    .line 1279
    .line 1280
    if-eqz v7, :cond_23

    .line 1281
    .line 1282
    iget-boolean v7, v14, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_5

    .line 1283
    .line 1284
    if-eqz v7, :cond_22

    .line 1285
    .line 1286
    :try_start_5e
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1287
    .line 1288
    check-cast v11, Lcom/android/server/notification/NotificationManagerService;
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_6

    .line 1289
    .line 1290
    :try_start_5f
    iget-boolean v11, v11, Lcom/android/server/notification/NotificationManagerService;->mFoldState:Z

    .line 1291
    .line 1292
    if-eqz v11, :cond_22

    .line 1293
    .line 1294
    const-string v7, "NotificationService"

    .line 1295
    .line 1296
    const-string v11, "Support sub display edge lighting and folded so edge lighting working"

    .line 1297
    .line 1298
    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    .line 1300
    .line 1301
    const/4 v7, 0x0

    .line 1302
    :cond_22
    const-string v11, "bubble"

    .line 1303
    .line 1304
    invoke-virtual {v4, v11, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1305
    .line 1306
    .line 1307
    goto :goto_18

    .line 1308
    :cond_23
    const-string v7, "bubble"

    .line 1309
    .line 1310
    iget-boolean v11, v14, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 1311
    .line 1312
    invoke-virtual {v4, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1313
    .line 1314
    .line 1315
    :goto_18
    const-string/jumbo v7, "smartPopup"

    .line 1316
    .line 1317
    .line 1318
    const/4 v11, 0x0

    .line 1319
    invoke-virtual {v4, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1320
    .line 1321
    .line 1322
    const-string v7, "canBypassDnd"

    .line 1323
    .line 1324
    iget-object v11, v14, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1325
    .line 1326
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 1327
    .line 1328
    .line 1329
    move-result v11

    .line 1330
    invoke-virtual {v4, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1331
    .line 1332
    .line 1333
    iget v7, v14, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 1334
    .line 1335
    if-lt v7, v10, :cond_29

    .line 1336
    .line 1337
    const-string v7, "call"

    .line 1338
    .line 1339
    invoke-virtual {v14, v7}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result v7

    .line 1343
    if-nez v7, :cond_28

    .line 1344
    .line 1345
    iget-object v7, v15, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1346
    .line 1347
    if-eqz v7, :cond_24

    .line 1348
    .line 1349
    goto/16 :goto_1b

    .line 1350
    .line 1351
    :cond_24
    iget-boolean v7, v14, Lcom/android/server/notification/NotificationRecord;->mHidden:Z
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_5

    .line 1352
    .line 1353
    if-nez v7, :cond_25

    .line 1354
    .line 1355
    :try_start_60
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1356
    .line 1357
    check-cast v7, Lcom/android/server/notification/NotificationManagerService;
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_6

    .line 1358
    .line 1359
    :try_start_61
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 1360
    .line 1361
    invoke-virtual {v7, v8, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v4

    .line 1365
    if-eqz v4, :cond_25

    .line 1366
    .line 1367
    const-string v4, "NotificationService"

    .line 1368
    .line 1369
    const-string v7, "Changed notification by edgelighting."

    .line 1370
    .line 1371
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    .line 1373
    .line 1374
    iget v4, v15, Landroid/app/Notification;->semFlags:I

    .line 1375
    .line 1376
    or-int/lit16 v4, v4, 0x2008

    .line 1377
    .line 1378
    iput v4, v15, Landroid/app/Notification;->semFlags:I
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_5

    .line 1379
    .line 1380
    :try_start_62
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1381
    .line 1382
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_6

    .line 1383
    .line 1384
    :try_start_63
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v7

    .line 1388
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v7

    .line 1392
    invoke-static {v4, v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mreceiveFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1393
    .line 1394
    .line 1395
    goto :goto_1c

    .line 1396
    :cond_25
    sget-boolean v4, Lcom/android/server/notification/NmRune;->NM_SUPPORT_CLEAR_COVER_NOTI_LIST:Z
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_5

    .line 1397
    .line 1398
    if-eqz v4, :cond_29

    .line 1399
    .line 1400
    :try_start_64
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1401
    .line 1402
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_6

    .line 1403
    .line 1404
    :try_start_65
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1405
    .line 1406
    if-eqz v4, :cond_29

    .line 1407
    .line 1408
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v4
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_5

    .line 1412
    if-eqz v4, :cond_29

    .line 1413
    .line 1414
    :try_start_66
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1415
    .line 1416
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_6

    .line 1417
    .line 1418
    :try_start_67
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1419
    .line 1420
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v4

    .line 1424
    if-eqz v4, :cond_26

    .line 1425
    .line 1426
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 1427
    .line 1428
    .line 1429
    move-result v7

    .line 1430
    if-nez v7, :cond_26

    .line 1431
    .line 1432
    move v7, v3

    .line 1433
    goto :goto_19

    .line 1434
    :cond_26
    const/4 v7, 0x0

    .line 1435
    :goto_19
    if-eqz v4, :cond_27

    .line 1436
    .line 1437
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 1438
    .line 1439
    .line 1440
    move-result v4

    .line 1441
    goto :goto_1a

    .line 1442
    :cond_27
    move v4, v5

    .line 1443
    :goto_1a
    if-eqz v7, :cond_29

    .line 1444
    .line 1445
    const/16 v7, 0x11

    .line 1446
    .line 1447
    if-ne v4, v7, :cond_29

    .line 1448
    .line 1449
    const-string v4, "NotificationService"

    .line 1450
    .line 1451
    const-string v7, "clear view cover is closed, so cancel delayed wakelock"

    .line 1452
    .line 1453
    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_5

    .line 1454
    .line 1455
    .line 1456
    :try_start_68
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1457
    .line 1458
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_6

    .line 1459
    .line 1460
    :try_start_69
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v7

    .line 1464
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v7

    .line 1468
    invoke-static {v4, v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mreceiveFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1469
    .line 1470
    .line 1471
    goto :goto_1c

    .line 1472
    :cond_28
    :goto_1b
    const-string v4, "NotificationService"

    .line 1473
    .line 1474
    const-string v7, "Category call notification, so make not work edgelighting"

    .line 1475
    .line 1476
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    .line 1478
    .line 1479
    iget v4, v15, Landroid/app/Notification;->semFlags:I

    .line 1480
    .line 1481
    or-int/lit16 v4, v4, 0x1000

    .line 1482
    .line 1483
    iput v4, v15, Landroid/app/Notification;->semFlags:I

    .line 1484
    .line 1485
    :cond_29
    :goto_1c
    iget-boolean v4, v14, Lcom/android/server/notification/NotificationRecord;->mHidden:Z
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_5

    .line 1486
    .line 1487
    if-nez v4, :cond_2a

    .line 1488
    .line 1489
    :try_start_6a
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1490
    .line 1491
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_6

    .line 1492
    .line 1493
    :try_start_6b
    iget-object v7, v4, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 1494
    .line 1495
    new-instance v10, Lcom/android/server/notification/NotificationAttentionHelper$Signals;

    .line 1496
    .line 1497
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_5

    .line 1498
    .line 1499
    :try_start_6c
    iget-object v11, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1500
    .line 1501
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 1502
    .line 1503
    .line 1504
    move-result v11
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_9

    .line 1505
    :try_start_6d
    invoke-virtual {v4, v11}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    .line 1506
    .line 1507
    .line 1508
    move-result v4
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_5

    .line 1509
    :try_start_6e
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1510
    .line 1511
    check-cast v11, Lcom/android/server/notification/NotificationManagerService;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_6

    .line 1512
    .line 1513
    :try_start_6f
    iget v11, v11, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1514
    .line 1515
    invoke-direct {v10, v11, v4}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;-><init>(IZ)V

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v7, v14, v10}, Lcom/android/server/notification/NotificationAttentionHelper;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    .line 1519
    .line 1520
    .line 1521
    move-result v11
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_5

    .line 1522
    goto :goto_1d

    .line 1523
    :catchall_9
    move-exception v0

    .line 1524
    goto/16 :goto_b

    .line 1525
    .line 1526
    :cond_2a
    const/4 v11, 0x0

    .line 1527
    :goto_1d
    :try_start_70
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1528
    .line 1529
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_6

    .line 1530
    .line 1531
    :try_start_71
    iget-object v7, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 1532
    .line 1533
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v10

    .line 1537
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v10
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_5

    .line 1541
    if-nez v10, :cond_2b

    .line 1542
    .line 1543
    :try_start_72
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1544
    .line 1545
    .line 1546
    :goto_1e
    move-object v4, v9

    .line 1547
    goto :goto_1f

    .line 1548
    :catchall_a
    move-exception v0

    .line 1549
    goto/16 :goto_b

    .line 1550
    .line 1551
    :cond_2b
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 1552
    .line 1553
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v4

    .line 1557
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 1558
    .line 1559
    if-nez v4, :cond_2c

    .line 1560
    .line 1561
    goto :goto_1e

    .line 1562
    :cond_2c
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1563
    .line 1564
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v4
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_a

    .line 1568
    :goto_1f
    :try_start_73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1569
    .line 1570
    .line 1571
    invoke-static {v14, v6, v2, v11, v4}, Lcom/android/server/notification/NotificationRecordLogger;->prepareToLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v2

    .line 1575
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1576
    .line 1577
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    .line 1578
    .line 1579
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    .line 1580
    .line 1581
    check-cast v7, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_6

    .line 1582
    .line 1583
    :try_start_74
    invoke-static {v4, v14, v6, v7, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mnotifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    .line 1584
    .line 1585
    .line 1586
    invoke-static {}, Landroid/app/Flags;->checkAutogroupBeforePost()Z

    .line 1587
    .line 1588
    .line 1589
    move-result v2

    .line 1590
    if-nez v2, :cond_30

    .line 1591
    .line 1592
    if-eqz v6, :cond_2d

    .line 1593
    .line 1594
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v9

    .line 1598
    :cond_2d
    if-eqz v9, :cond_2e

    .line 1599
    .line 1600
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v2

    .line 1604
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v4

    .line 1608
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1609
    .line 1610
    .line 1611
    move-result v2

    .line 1612
    if-eqz v2, :cond_2e

    .line 1613
    .line 1614
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v2

    .line 1618
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 1619
    .line 1620
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v4

    .line 1624
    iget v4, v4, Landroid/app/Notification;->flags:I
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_5

    .line 1625
    .line 1626
    if-eq v2, v4, :cond_30

    .line 1627
    .line 1628
    :cond_2e
    :try_start_75
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1629
    .line 1630
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_6

    .line 1631
    .line 1632
    :try_start_76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1633
    .line 1634
    .line 1635
    iget v2, v14, Lcom/android/server/notification/NotificationRecord;->mCriticality:I
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_b

    .line 1636
    .line 1637
    if-ge v2, v5, :cond_2f

    .line 1638
    .line 1639
    goto :goto_20

    .line 1640
    :cond_2f
    :try_start_77
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1641
    .line 1642
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_6

    .line 1643
    .line 1644
    :try_start_78
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1645
    .line 1646
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    .line 1647
    .line 1648
    const/4 v5, 0x4

    .line 1649
    invoke-direct {v4, v5, v1, v8}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_5

    .line 1653
    .line 1654
    .line 1655
    goto :goto_20

    .line 1656
    :catchall_b
    move-exception v0

    .line 1657
    goto/16 :goto_b

    .line 1658
    .line 1659
    :cond_30
    :goto_20
    move v10, v3

    .line 1660
    goto :goto_21

    .line 1661
    :cond_31
    :try_start_79
    const-string v2, "NotificationService"

    .line 1662
    .line 1663
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1664
    .line 1665
    move-object/from16 v4, v18

    .line 1666
    .line 1667
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1671
    .line 1672
    .line 1673
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v3

    .line 1677
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_d

    .line 1678
    .line 1679
    .line 1680
    if-eqz v6, :cond_32

    .line 1681
    .line 1682
    :try_start_7a
    iget-boolean v2, v6, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_5

    .line 1683
    .line 1684
    if-nez v2, :cond_32

    .line 1685
    .line 1686
    :try_start_7b
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1687
    .line 1688
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_6

    .line 1689
    .line 1690
    :try_start_7c
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1691
    .line 1692
    iget-object v3, v14, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 1693
    .line 1694
    invoke-virtual {v2, v14, v10, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_5

    .line 1695
    .line 1696
    .line 1697
    :try_start_7d
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1698
    .line 1699
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_6

    .line 1700
    .line 1701
    :try_start_7e
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1702
    .line 1703
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$22;

    .line 1704
    .line 1705
    const/4 v4, 0x1

    .line 1706
    invoke-direct {v3, v4, v1, v8}, Lcom/android/server/notification/NotificationManagerService$22;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1707
    .line 1708
    .line 1709
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_5

    .line 1710
    .line 1711
    .line 1712
    :cond_32
    :try_start_7f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->callstyleCallbackApi()Z

    .line 1713
    .line 1714
    .line 1715
    move-result v2
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_d

    .line 1716
    if-eqz v2, :cond_33

    .line 1717
    .line 1718
    :try_start_80
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1719
    .line 1720
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_6

    .line 1721
    .line 1722
    :try_start_81
    invoke-virtual {v2, v14}, Lcom/android/server/notification/NotificationManagerService;->notifyCallNotificationEventListenerOnRemoved(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_5

    .line 1723
    .line 1724
    .line 1725
    :cond_33
    :try_start_82
    const-string v2, "NotificationService"

    .line 1726
    .line 1727
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1728
    .line 1729
    move-object/from16 v4, v17

    .line 1730
    .line 1731
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v4

    .line 1738
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v3

    .line 1745
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    .line 1747
    .line 1748
    const/4 v10, 0x0

    .line 1749
    :goto_21
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1750
    .line 1751
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 1752
    .line 1753
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 1754
    .line 1755
    if-eqz v3, :cond_34

    .line 1756
    .line 1757
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_d

    .line 1758
    .line 1759
    const/4 v4, 0x0

    .line 1760
    :try_start_83
    invoke-virtual {v3, v14, v4, v2}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    .line 1761
    .line 1762
    .line 1763
    goto :goto_23

    .line 1764
    :catchall_c
    move-exception v0

    .line 1765
    :goto_22
    move-object v2, v0

    .line 1766
    goto :goto_26

    .line 1767
    :catchall_d
    move-exception v0

    .line 1768
    const/4 v4, 0x0

    .line 1769
    goto :goto_22

    .line 1770
    :cond_34
    const/4 v4, 0x0

    .line 1771
    :goto_23
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1772
    .line 1773
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 1774
    .line 1775
    invoke-virtual {v2, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 1776
    .line 1777
    .line 1778
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1779
    .line 1780
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 1781
    .line 1782
    invoke-virtual {v2, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V

    .line 1783
    .line 1784
    .line 1785
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1786
    .line 1787
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 1788
    .line 1789
    invoke-virtual {v2, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeReportForegroundServiceUpdate(Lcom/android/server/notification/NotificationRecord;)V

    .line 1790
    .line 1791
    .line 1792
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1793
    .line 1794
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 1795
    .line 1796
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mSmartAlertController:Lcom/android/server/notification/SmartAlertController;

    .line 1797
    .line 1798
    if-eqz v3, :cond_35

    .line 1799
    .line 1800
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 1801
    .line 1802
    iget-object v5, v3, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    .line 1803
    .line 1804
    new-instance v6, Lcom/android/server/notification/SmartAlertController$2;

    .line 1805
    .line 1806
    invoke-direct {v6, v3, v2}, Lcom/android/server/notification/SmartAlertController$2;-><init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_c

    .line 1810
    .line 1811
    .line 1812
    :cond_35
    :try_start_84
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1813
    .line 1814
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 1815
    .line 1816
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1817
    .line 1818
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1819
    .line 1820
    .line 1821
    move-result v2

    .line 1822
    move v13, v4

    .line 1823
    :goto_24
    if-ge v13, v2, :cond_37

    .line 1824
    .line 1825
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1826
    .line 1827
    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    .line 1828
    .line 1829
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1830
    .line 1831
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v3

    .line 1835
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 1836
    .line 1837
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 1838
    .line 1839
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v3

    .line 1843
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1844
    .line 1845
    .line 1846
    move-result v3

    .line 1847
    if-eqz v3, :cond_36

    .line 1848
    .line 1849
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1850
    .line 1851
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 1852
    .line 1853
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1854
    .line 1855
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1856
    .line 1857
    .line 1858
    goto :goto_25

    .line 1859
    :cond_36
    add-int/lit8 v13, v13, 0x1

    .line 1860
    .line 1861
    goto :goto_24

    .line 1862
    :cond_37
    :goto_25
    monitor-exit v12

    .line 1863
    return v10

    .line 1864
    :catchall_e
    move-exception v0

    .line 1865
    move v4, v13

    .line 1866
    goto :goto_22

    .line 1867
    :goto_26
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1868
    .line 1869
    check-cast v3, Lcom/android/server/notification/NotificationManagerService;

    .line 1870
    .line 1871
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1872
    .line 1873
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1874
    .line 1875
    .line 1876
    move-result v3

    .line 1877
    move v13, v4

    .line 1878
    :goto_27
    if-ge v13, v3, :cond_39

    .line 1879
    .line 1880
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1881
    .line 1882
    check-cast v4, Lcom/android/server/notification/NotificationManagerService;

    .line 1883
    .line 1884
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1885
    .line 1886
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v4

    .line 1890
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 1891
    .line 1892
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 1893
    .line 1894
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v4

    .line 1898
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1899
    .line 1900
    .line 1901
    move-result v4

    .line 1902
    if-nez v4, :cond_38

    .line 1903
    .line 1904
    add-int/lit8 v13, v13, 0x1

    .line 1905
    .line 1906
    goto :goto_27

    .line 1907
    :cond_38
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 1908
    .line 1909
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 1910
    .line 1911
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1912
    .line 1913
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1914
    .line 1915
    .line 1916
    :cond_39
    throw v2

    .line 1917
    :goto_28
    monitor-exit v12
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_0

    .line 1918
    throw v1
.end method

.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->postNotification()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    :try_start_1
    const-string v1, "NotificationService"

    .line 24
    .line 25
    const-string v2, "Error posting"

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :goto_1
    return-void

    .line 32
    :goto_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 45
    .line 46
    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 47
    .line 48
    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 49
    .line 50
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-interface {v0, v1, v2, v3}, Landroid/service/notification/INotificationListener;->onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :catch_1
    move-exception v1

    .line 61
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v3, "unable to notify listener (posted): "

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p0, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :goto_3
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 91
    .line 92
    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 93
    .line 94
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    .line 95
    .line 96
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Landroid/os/Bundle;

    .line 101
    .line 102
    invoke-interface {v0, v1, v2, v3}, Landroid/service/notification/INotificationListener;->onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :catch_2
    move-exception v1

    .line 107
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string/jumbo v3, "unable to notify listener (posted): "

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {p0, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    :goto_4
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
