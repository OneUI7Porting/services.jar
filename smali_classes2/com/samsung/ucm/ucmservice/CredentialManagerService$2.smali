.class public final Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

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
    .locals 5

    .line 1
    iget p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "UcmService"

    .line 7
    .line 8
    const-string/jumbo v0, "mOnNotiRemoveBroadcastReceiver "

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string p1, "CS_NAME"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "USER_ID"

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 28
    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showEnforcedLockTypeNotificationIntenal(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "inside mRefreshReceiver onReceive : "

    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string v0, "UcmService"

    .line 52
    .line 53
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    const/4 v1, 0x1

    .line 63
    if-eqz p2, :cond_0

    .line 64
    .line 65
    const-string/jumbo p1, "onReceive : ACTION_BOOT_COMPLETED"

    .line 66
    .line 67
    .line 68
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :try_start_0
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "The exception occurs "

    .line 83
    .line 84
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletHelper:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->checkToRunLccmScript()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_0
    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_1

    .line 105
    .line 106
    const-string/jumbo p1, "onReceive : ACTION_LOCKED_BOOT_COMPLETED"

    .line 107
    .line 108
    .line 109
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletHelper:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->checkToRunLccmScript()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_3

    .line 129
    .line 130
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 131
    .line 132
    iget-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 133
    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    const-string p0, "Already UPSM is enabled nothing to do"

    .line 137
    .line 138
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 143
    .line 144
    const-string p0, "Already UPSM disabled -> enabled"

    .line 145
    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 151
    .line 152
    iget-boolean p1, p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 153
    .line 154
    if-eqz p1, :cond_4

    .line 155
    .line 156
    const-string p1, "Already UPSM enabled -> disabled"

    .line 157
    .line 158
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrefreshAgentList(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 170
    .line 171
    :cond_4
    :goto_1
    return-void

    .line 172
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string/jumbo v0, "onReceive "

    .line 175
    .line 176
    .line 177
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string v0, "UcmService"

    .line 192
    .line 193
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    const-string p1, "android.intent.extra.UID"

    .line 197
    .line 198
    const/4 v1, -0x1

    .line 199
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eq p1, v1, :cond_7

    .line 204
    .line 205
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    const-string v1, "Package update in userId-"

    .line 210
    .line 211
    const-string v2, " and uid-"

    .line 212
    .line 213
    invoke-static {p2, p1, v1, v2, v0}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 217
    .line 218
    iget-object v1, p2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    .line 219
    .line 220
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    const-string p0, "No active agent exist"

    .line 233
    .line 234
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_5
    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    .line 239
    .line 240
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    check-cast p2, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_7

    .line 255
    .line 256
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 261
    .line 262
    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 263
    .line 264
    iget v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    .line 265
    .line 266
    if-ne v1, p1, :cond_6

    .line 267
    .line 268
    const-string p2, "it is active plugin uid : "

    .line 269
    .line 270
    invoke-static {p1, p2, v0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 274
    .line 275
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    .line 276
    .line 277
    const/4 p1, 0x1

    .line 278
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    .line 280
    .line 281
    :cond_7
    :goto_2
    return-void

    .line 282
    :pswitch_2
    sget-boolean p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    .line 283
    .line 284
    const-string v0, "UcmService"

    .line 285
    .line 286
    if-eqz p1, :cond_8

    .line 287
    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string/jumbo v1, "onReceive "

    .line 291
    .line 292
    .line 293
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    :cond_8
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 311
    .line 312
    iget-boolean p1, p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    .line 313
    .line 314
    if-nez p1, :cond_9

    .line 315
    .line 316
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUCMODEEnabledWithPropFile()Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_9

    .line 321
    .line 322
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    .line 325
    .line 326
    .line 327
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    :try_start_1
    iget p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 332
    .line 333
    const/4 p2, 0x1

    .line 334
    if-le p1, p2, :cond_a

    .line 335
    .line 336
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 337
    .line 338
    if-eqz p1, :cond_a

    .line 339
    .line 340
    const/4 p1, 0x0

    .line 341
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 342
    .line 343
    const-string p1, "checkUcmOdeDefaultLanguage. remove default language"

    .line 344
    .line 345
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    .line 349
    .line 350
    .line 351
    move-result p0

    .line 352
    if-nez p0, :cond_a

    .line 353
    .line 354
    const-string p0, "checkUcmOdeDefaultLanguage. failed to save ode prop"

    .line 355
    .line 356
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    .line 358
    .line 359
    goto :goto_3

    .line 360
    :catch_1
    move-exception p0

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string p2, "The exception occurs "

    .line 364
    .line 365
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_9
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 373
    .line 374
    iget-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsVoldCompleteNotified:Z

    .line 375
    .line 376
    if-eqz p1, :cond_a

    .line 377
    .line 378
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    .line 379
    .line 380
    .line 381
    :cond_a
    :goto_3
    return-void

    .line 382
    :pswitch_3
    const-string p1, "USER_ID"

    .line 383
    .line 384
    const/4 v0, -0x1

    .line 385
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    const-string/jumbo v1, "onReceive : ACTION_ENFORCE_LOCKTYPE : "

    .line 392
    .line 393
    .line 394
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const-string v1, "UcmService"

    .line 405
    .line 406
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    const-string v0, "CS_NAME"

    .line 410
    .line 411
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 416
    .line 417
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    const-string v0, " csName : "

    .line 421
    .line 422
    const-string v2, "enforceLockType called for userID : "

    .line 423
    .line 424
    :try_start_2
    const-string/jumbo v3, "password_policy"

    .line 425
    .line 426
    .line 427
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    check-cast v3, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 432
    .line 433
    if-eqz v3, :cond_b

    .line 434
    .line 435
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-lez v4, :cond_b

    .line 440
    .line 441
    const/4 v4, 0x0

    .line 442
    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 443
    .line 444
    .line 445
    goto :goto_4

    .line 446
    :catch_2
    move-exception p0

    .line 447
    goto :goto_5

    .line 448
    :cond_b
    :goto_4
    new-instance v3, Landroid/os/UserHandle;

    .line 449
    .line 450
    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 451
    .line 452
    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    new-instance p1, Landroid/content/Intent;

    .line 469
    .line 470
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 471
    .line 472
    .line 473
    const-string v2, "com.android.settings"

    .line 474
    .line 475
    const-string v4, "com.samsung.android.settings.knox.ConfirmUCMLockPassword"

    .line 476
    .line 477
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    .line 479
    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    const-string v0, "lockscreen.ucscredentialstoragename"

    .line 496
    .line 497
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    .line 499
    .line 500
    const/high16 p2, 0x10000000

    .line 501
    .line 502
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 503
    .line 504
    .line 505
    const/high16 p2, 0x400000

    .line 506
    .line 507
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    .line 509
    .line 510
    const/high16 p2, 0x800000

    .line 511
    .line 512
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    .line 514
    .line 515
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 516
    .line 517
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 518
    .line 519
    .line 520
    goto :goto_6

    .line 521
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    const-string p2, "The exception occurs "

    .line 524
    .line 525
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-static {p0, p1, v1}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    :goto_6
    return-void

    .line 532
    nop

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
