.class public final Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

.field public final synthetic val$errorCode:[I

.field public final synthetic val$finished:[Z

.field public final synthetic val$mutex:Ljava/lang/Object;

.field public final synthetic val$success:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DualDarProvisioningHelper;[Z[ILjava/lang/Object;[ZI)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$errorCode:[I

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$finished:[Z

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->$r8$classId:I

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
    const-string v0, "DualDarProvisioningHelper"

    .line 11
    .line 12
    const-string v1, "DualDAR Managed Device Completed Service onReceived is called: "

    .line 13
    .line 14
    invoke-static {v1, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->connection:Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "com.android.dualdar.completed.provisioning_success"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x1

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 45
    .line 46
    aput-boolean v0, p1, v1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 50
    .line 51
    aput-boolean v1, p1, v1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$errorCode:[I

    .line 54
    .line 55
    const-string v2, "ERROR_CODE"

    .line 56
    .line 57
    const/4 v3, 0x5

    .line 58
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    aput p2, p1, v1

    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter p1

    .line 67
    :try_start_0
    iget-object p2, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$finished:[Z

    .line 68
    .line 69
    aput-boolean v0, p2, v1

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 74
    .line 75
    .line 76
    monitor-exit p1

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0

    .line 81
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "DualDarProvisioningHelper"

    .line 86
    .line 87
    const-string v1, "DualDAR Managed Device Started Service onReceived is called: "

    .line 88
    .line 89
    invoke-static {v1, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    .line 100
    .line 101
    iget-object v1, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->connection:Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    .line 107
    .line 108
    const-string/jumbo v0, "com.android.dualdar.started.provisioning_success"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    const/4 v0, 0x1

    .line 116
    const/4 v1, 0x0

    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 120
    .line 121
    aput-boolean v0, p1, v1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 125
    .line 126
    aput-boolean v1, p1, v1

    .line 127
    .line 128
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$errorCode:[I

    .line 129
    .line 130
    const-string v2, "ERROR_CODE"

    .line 131
    .line 132
    const/4 v3, 0x5

    .line 133
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    aput p2, p1, v1

    .line 138
    .line 139
    :goto_1
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter p1

    .line 142
    :try_start_1
    iget-object p2, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$finished:[Z

    .line 143
    .line 144
    aput-boolean v0, p2, v1

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 149
    .line 150
    .line 151
    monitor-exit p1

    .line 152
    return-void

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    throw p0

    .line 156
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const-string v0, "DualDarProvisioningHelper"

    .line 161
    .line 162
    const-string v1, "DualDAR Managed Profile Completed Service onReceived is called: "

    .line 163
    .line 164
    invoke-static {v1, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    .line 175
    .line 176
    iget-object v1, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->connection:Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 181
    .line 182
    .line 183
    const-string/jumbo v0, "com.android.dualdar.completed.provisioning_success"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    const/4 v1, 0x1

    .line 191
    const/4 v2, 0x0

    .line 192
    if-eqz v0, :cond_2

    .line 193
    .line 194
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 195
    .line 196
    aput-boolean v1, p1, v2

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_2
    const-string/jumbo v0, "com.android.dualdar.completed.cancelled"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_3

    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 209
    .line 210
    aput-boolean v1, p1, v2

    .line 211
    .line 212
    const-string p1, "DualDarProvisioningHelper"

    .line 213
    .line 214
    const-string p2, "DualDAR is not enabled. dualdar completed provisinoing cacelled."

    .line 215
    .line 216
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_3
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 221
    .line 222
    aput-boolean v2, p1, v2

    .line 223
    .line 224
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$errorCode:[I

    .line 225
    .line 226
    const-string v0, "ERROR_CODE"

    .line 227
    .line 228
    const/4 v3, 0x5

    .line 229
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    aput p2, p1, v2

    .line 234
    .line 235
    :goto_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 236
    .line 237
    monitor-enter p1

    .line 238
    :try_start_2
    iget-object p2, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$finished:[Z

    .line 239
    .line 240
    aput-boolean v1, p2, v2

    .line 241
    .line 242
    iget-object p0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 245
    .line 246
    .line 247
    monitor-exit p1

    .line 248
    return-void

    .line 249
    :catchall_2
    move-exception p0

    .line 250
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 251
    throw p0

    .line 252
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    const-string v0, "DualDarProvisioningHelper"

    .line 257
    .line 258
    const-string v1, "DualDAR Managed Profile Started Service onReceived is called: "

    .line 259
    .line 260
    invoke-static {v1, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    .line 264
    .line 265
    iget-object v0, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 266
    .line 267
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    .line 271
    .line 272
    iget-object v1, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->connection:Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 277
    .line 278
    .line 279
    const-string/jumbo v0, "com.android.dualdar.started.provisioning_success"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    const/4 v0, 0x1

    .line 287
    const/4 v1, 0x0

    .line 288
    if-eqz p1, :cond_4

    .line 289
    .line 290
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 291
    .line 292
    aput-boolean v0, p1, v1

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    .line 296
    .line 297
    aput-boolean v1, p1, v1

    .line 298
    .line 299
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$errorCode:[I

    .line 300
    .line 301
    const-string v2, "ERROR_CODE"

    .line 302
    .line 303
    const/4 v3, 0x5

    .line 304
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 305
    .line 306
    .line 307
    move-result p2

    .line 308
    aput p2, p1, v1

    .line 309
    .line 310
    :goto_3
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 311
    .line 312
    monitor-enter p1

    .line 313
    :try_start_3
    iget-object p2, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$finished:[Z

    .line 314
    .line 315
    aput-boolean v0, p2, v1

    .line 316
    .line 317
    iget-object p0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 318
    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 320
    .line 321
    .line 322
    monitor-exit p1

    .line 323
    return-void

    .line 324
    :catchall_3
    move-exception p0

    .line 325
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 326
    throw p0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
