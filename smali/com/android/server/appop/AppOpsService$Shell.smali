.class public final Lcom/android/server/appop/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public attributionTag:Ljava/lang/String;

.field public final mInterface:Lcom/android/internal/app/IAppOpsService;

.field public final mInternal:Lcom/android/server/appop/AppOpsService;

.field public final mToken:Landroid/os/IBinder;

.field public mode:I

.field public modeStr:Ljava/lang/String;

.field public nonpackageUid:I

.field public op:I

.field public opStr:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public packageUid:I

.field public targetsUid:Z

.field public userId:I


# direct methods
.method public static bridge synthetic -$$Nest$smstrOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Binder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 10
    .line 11
    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    .line 16
    .line 17
    return-void
.end method

.method public static strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-ltz v0, :cond_1

    .line 7
    .line 8
    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    .line 9
    .line 10
    aget-object v1, v1, v0

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return p0

    .line 27
    :catch_0
    const-string v0, "Error: Mode "

    .line 28
    .line 29
    const-string v1, " is not valid"

    .line 30
    .line 31
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public static strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    return p0

    .line 11
    :catch_1
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 15
    return p0

    .line 16
    :catch_2
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Error: "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Default mode: "

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto/16 :goto_15

    .line 14
    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, -0x1

    .line 24
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x1

    .line 29
    const/4 v8, 0x0

    .line 30
    sparse-switch v6, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :sswitch_0
    const-string/jumbo v6, "read-settings"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    const/4 v6, 0x5

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto/16 :goto_14

    .line 48
    .line 49
    :sswitch_1
    const-string/jumbo v6, "start"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    const/4 v6, 0x7

    .line 59
    goto :goto_1

    .line 60
    :sswitch_2
    const-string/jumbo v6, "reset"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    const/4 v6, 0x3

    .line 70
    goto :goto_1

    .line 71
    :sswitch_3
    const-string/jumbo v6, "stop"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_1

    .line 79
    .line 80
    const/16 v6, 0x8

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :sswitch_4
    const-string/jumbo v6, "note"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_1

    .line 91
    .line 92
    const/4 v6, 0x6

    .line 93
    goto :goto_1

    .line 94
    :sswitch_5
    const-string/jumbo v6, "set"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_1

    .line 102
    .line 103
    move v6, v8

    .line 104
    goto :goto_1

    .line 105
    :sswitch_6
    const-string/jumbo v6, "get"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_1

    .line 113
    .line 114
    move v6, v7

    .line 115
    goto :goto_1

    .line 116
    :sswitch_7
    const-string/jumbo v6, "query-op"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_1

    .line 124
    .line 125
    const/4 v6, 0x2

    .line 126
    goto :goto_1

    .line 127
    :sswitch_8
    const-string/jumbo v6, "write-settings"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_1

    .line 135
    .line 136
    const/4 v6, 0x4

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    move v6, v5

    .line 139
    :goto_1
    const/4 v9, 0x0

    .line 140
    packed-switch v6, :pswitch_data_0

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    goto/16 :goto_15

    .line 148
    .line 149
    :pswitch_0
    invoke-virtual {v0, v4, v7}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-gez v1, :cond_2

    .line 154
    .line 155
    :goto_2
    move v0, v1

    .line 156
    goto/16 :goto_15

    .line 157
    .line 158
    :cond_2
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v13, :cond_4

    .line 161
    .line 162
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 163
    .line 164
    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    .line 165
    .line 166
    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 167
    .line 168
    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 169
    .line 170
    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 171
    .line 172
    invoke-interface/range {v9 .. v14}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_3
    move v0, v8

    .line 176
    goto/16 :goto_15

    .line 177
    .line 178
    :catch_1
    :cond_4
    :goto_4
    move v0, v5

    .line 179
    goto/16 :goto_15

    .line 180
    .line 181
    :pswitch_1
    invoke-virtual {v0, v4, v7}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-gez v1, :cond_5

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v13, :cond_4

    .line 191
    .line 192
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 193
    .line 194
    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    .line 195
    .line 196
    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 197
    .line 198
    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 199
    .line 200
    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 201
    .line 202
    const-string/jumbo v17, "appops start shell command"

    .line 203
    .line 204
    .line 205
    const/16 v20, -0x1

    .line 206
    .line 207
    const/4 v15, 0x1

    .line 208
    const/16 v16, 0x1

    .line 209
    .line 210
    const/16 v18, 0x1

    .line 211
    .line 212
    const/16 v19, 0x1

    .line 213
    .line 214
    invoke-interface/range {v9 .. v20}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :pswitch_2
    invoke-virtual {v0, v4, v7}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-gez v1, :cond_6

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_6
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v12, :cond_4

    .line 228
    .line 229
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 230
    .line 231
    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 232
    .line 233
    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 234
    .line 235
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 236
    .line 237
    const-string/jumbo v15, "appops note shell command"

    .line 238
    .line 239
    .line 240
    const/16 v16, 0x1

    .line 241
    .line 242
    const/4 v14, 0x1

    .line 243
    invoke-interface/range {v9 .. v16}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :pswitch_3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 248
    .line 249
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 258
    .line 259
    .line 260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 261
    .line 262
    .line 263
    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 265
    .line 266
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses()V

    .line 267
    .line 268
    .line 269
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 272
    .line 273
    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    .line 274
    .line 275
    .line 276
    const-string v0, "Last settings read."

    .line 277
    .line 278
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    .line 280
    .line 281
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :catchall_0
    move-exception v0

    .line 286
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 291
    .line 292
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 301
    .line 302
    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 304
    .line 305
    .line 306
    move-result-wide v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    :try_start_3
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 308
    .line 309
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    :try_start_4
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 311
    .line 312
    iget-object v7, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 313
    .line 314
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    .line 315
    .line 316
    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    .line 318
    .line 319
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 320
    :try_start_5
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 321
    .line 322
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    .line 323
    .line 324
    .line 325
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 326
    .line 327
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 328
    .line 329
    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V

    .line 330
    .line 331
    .line 332
    const-string v0, "Current settings written."

    .line 333
    .line 334
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 335
    .line 336
    .line 337
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 338
    .line 339
    .line 340
    goto/16 :goto_3

    .line 341
    .line 342
    :catchall_1
    move-exception v0

    .line 343
    goto :goto_5

    .line 344
    :catchall_2
    move-exception v0

    .line 345
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 346
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 347
    :goto_5
    :try_start_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    .line 349
    .line 350
    throw v0

    .line 351
    :pswitch_5
    const/4 v1, -0x2

    .line 352
    move v2, v1

    .line 353
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    if-eqz v6, :cond_9

    .line 358
    .line 359
    const-string v7, "--user"

    .line 360
    .line 361
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v7

    .line 365
    if-eqz v7, :cond_7

    .line 366
    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    goto :goto_6

    .line 376
    :cond_7
    if-nez v9, :cond_8

    .line 377
    .line 378
    move-object v9, v6

    .line 379
    goto :goto_6

    .line 380
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    const-string v1, "Error: Unsupported argument: "

    .line 386
    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_4

    .line 401
    .line 402
    :cond_9
    if-ne v2, v1, :cond_a

    .line 403
    .line 404
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    :cond_a
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 409
    .line 410
    invoke-interface {v0, v2, v9}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const-string v0, "Reset all modes for: "

    .line 414
    .line 415
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    if-ne v2, v5, :cond_b

    .line 419
    .line 420
    const-string v0, "all users"

    .line 421
    .line 422
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_b
    const-string/jumbo v0, "user "

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 433
    .line 434
    .line 435
    :goto_7
    const-string v0, ", "

    .line 436
    .line 437
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    if-nez v9, :cond_c

    .line 441
    .line 442
    const-string v0, "all packages"

    .line 443
    .line 444
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_3

    .line 448
    .line 449
    :cond_c
    const-string/jumbo v0, "package "

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_3

    .line 459
    .line 460
    :pswitch_6
    invoke-virtual {v0, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(Ljava/io/PrintWriter;)I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-gez v1, :cond_d

    .line 465
    .line 466
    goto/16 :goto_2

    .line 467
    .line 468
    :cond_d
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 469
    .line 470
    iget v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 471
    .line 472
    filled-new-array {v2}, [I

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    if-eqz v1, :cond_11

    .line 481
    .line 482
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-gtz v2, :cond_e

    .line 487
    .line 488
    goto :goto_b

    .line 489
    :cond_e
    move v2, v8

    .line 490
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    if-ge v2, v4, :cond_3

    .line 495
    .line 496
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 501
    .line 502
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 507
    .line 508
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    move v7, v8

    .line 513
    :goto_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 514
    .line 515
    .line 516
    move-result v9

    .line 517
    if-ge v7, v9, :cond_10

    .line 518
    .line 519
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v9

    .line 523
    check-cast v9, Landroid/app/AppOpsManager$OpEntry;

    .line 524
    .line 525
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    .line 526
    .line 527
    .line 528
    move-result v10

    .line 529
    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 530
    .line 531
    if-ne v10, v11, :cond_f

    .line 532
    .line 533
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    .line 534
    .line 535
    .line 536
    move-result v9

    .line 537
    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 538
    .line 539
    if-ne v9, v10, :cond_f

    .line 540
    .line 541
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    goto :goto_a

    .line 549
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 550
    .line 551
    goto :goto_9

    .line 552
    :cond_10
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 553
    .line 554
    goto :goto_8

    .line 555
    :cond_11
    :goto_b
    const-string v0, "No operations."

    .line 556
    .line 557
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_3

    .line 561
    .line 562
    :pswitch_7
    invoke-virtual {v0, v4, v8}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-gez v1, :cond_12

    .line 567
    .line 568
    goto/16 :goto_2

    .line 569
    .line 570
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    .line 571
    .line 572
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .line 574
    .line 575
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 576
    .line 577
    if-eqz v4, :cond_16

    .line 578
    .line 579
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 580
    .line 581
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 582
    .line 583
    iget v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 584
    .line 585
    if-eq v7, v5, :cond_13

    .line 586
    .line 587
    filled-new-array {v7}, [I

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    goto :goto_c

    .line 592
    :cond_13
    move-object v7, v9

    .line 593
    :goto_c
    invoke-interface {v4, v6, v7}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    if-eqz v4, :cond_14

    .line 598
    .line 599
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 600
    .line 601
    .line 602
    :cond_14
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 603
    .line 604
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 605
    .line 606
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 607
    .line 608
    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 609
    .line 610
    if-eq v10, v5, :cond_15

    .line 611
    .line 612
    filled-new-array {v10}, [I

    .line 613
    .line 614
    .line 615
    move-result-object v9

    .line 616
    :cond_15
    invoke-interface {v4, v6, v7, v9}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    .line 617
    .line 618
    .line 619
    move-result-object v4

    .line 620
    if-eqz v4, :cond_18

    .line 621
    .line 622
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 623
    .line 624
    .line 625
    goto :goto_d

    .line 626
    :cond_16
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 627
    .line 628
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 629
    .line 630
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 631
    .line 632
    if-eq v6, v5, :cond_17

    .line 633
    .line 634
    filled-new-array {v6}, [I

    .line 635
    .line 636
    .line 637
    move-result-object v9

    .line 638
    :cond_17
    invoke-interface {v1, v4, v9}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    :cond_18
    :goto_d
    if-eqz v1, :cond_25

    .line 643
    .line 644
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-gtz v4, :cond_19

    .line 649
    .line 650
    goto/16 :goto_13

    .line 651
    .line 652
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 653
    .line 654
    .line 655
    move-result-wide v6

    .line 656
    move v2, v8

    .line 657
    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    if-ge v2, v4, :cond_24

    .line 662
    .line 663
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 668
    .line 669
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v9

    .line 673
    if-nez v9, :cond_1a

    .line 674
    .line 675
    const-string v9, "Uid mode: "

    .line 676
    .line 677
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    :cond_1a
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    move v9, v8

    .line 685
    :goto_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 686
    .line 687
    .line 688
    move-result v10

    .line 689
    if-ge v9, v10, :cond_23

    .line 690
    .line 691
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v10

    .line 695
    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 696
    .line 697
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    .line 698
    .line 699
    .line 700
    move-result v11

    .line 701
    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v11

    .line 705
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    const-string v11, ": "

    .line 709
    .line 710
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    .line 714
    .line 715
    .line 716
    move-result v11

    .line 717
    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v11

    .line 721
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 725
    .line 726
    const-wide/16 v12, -0x1

    .line 727
    .line 728
    const/16 v14, 0x1f

    .line 729
    .line 730
    if-nez v11, :cond_1e

    .line 731
    .line 732
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    .line 733
    .line 734
    .line 735
    move-result-wide v15

    .line 736
    cmp-long v11, v15, v12

    .line 737
    .line 738
    if-eqz v11, :cond_1b

    .line 739
    .line 740
    const-string v11, "; time="

    .line 741
    .line 742
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    .line 746
    .line 747
    .line 748
    move-result-wide v15

    .line 749
    move/from16 v17, v9

    .line 750
    .line 751
    sub-long v8, v6, v15

    .line 752
    .line 753
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 754
    .line 755
    .line 756
    const-string v8, " ago"

    .line 757
    .line 758
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    goto :goto_10

    .line 762
    :cond_1b
    move/from16 v17, v9

    .line 763
    .line 764
    :goto_10
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    .line 765
    .line 766
    .line 767
    move-result-wide v8

    .line 768
    cmp-long v8, v8, v12

    .line 769
    .line 770
    if-eqz v8, :cond_1c

    .line 771
    .line 772
    const-string v8, "; rejectTime="

    .line 773
    .line 774
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    .line 778
    .line 779
    .line 780
    move-result-wide v8

    .line 781
    sub-long v8, v6, v8

    .line 782
    .line 783
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 784
    .line 785
    .line 786
    const-string v8, " ago"

    .line 787
    .line 788
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    :cond_1c
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    .line 792
    .line 793
    .line 794
    move-result v8

    .line 795
    if-eqz v8, :cond_1d

    .line 796
    .line 797
    const-string v8, " (running)"

    .line 798
    .line 799
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    goto/16 :goto_11

    .line 803
    .line 804
    :cond_1d
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    .line 805
    .line 806
    .line 807
    move-result-wide v8

    .line 808
    cmp-long v8, v8, v12

    .line 809
    .line 810
    if-eqz v8, :cond_22

    .line 811
    .line 812
    const-string v8, "; duration="

    .line 813
    .line 814
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    .line 818
    .line 819
    .line 820
    move-result-wide v8

    .line 821
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 822
    .line 823
    .line 824
    goto :goto_11

    .line 825
    :cond_1e
    move/from16 v17, v9

    .line 826
    .line 827
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    .line 828
    .line 829
    .line 830
    move-result-object v8

    .line 831
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 832
    .line 833
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v8

    .line 837
    check-cast v8, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 838
    .line 839
    if-eqz v8, :cond_22

    .line 840
    .line 841
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    .line 842
    .line 843
    .line 844
    move-result-wide v9

    .line 845
    cmp-long v9, v9, v12

    .line 846
    .line 847
    if-eqz v9, :cond_1f

    .line 848
    .line 849
    const-string v9, "; time="

    .line 850
    .line 851
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    .line 855
    .line 856
    .line 857
    move-result-wide v9

    .line 858
    sub-long v9, v6, v9

    .line 859
    .line 860
    invoke-static {v9, v10, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 861
    .line 862
    .line 863
    const-string v9, " ago"

    .line 864
    .line 865
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    :cond_1f
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    .line 869
    .line 870
    .line 871
    move-result-wide v9

    .line 872
    cmp-long v9, v9, v12

    .line 873
    .line 874
    if-eqz v9, :cond_20

    .line 875
    .line 876
    const-string v9, "; rejectTime="

    .line 877
    .line 878
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    .line 882
    .line 883
    .line 884
    move-result-wide v9

    .line 885
    sub-long v9, v6, v9

    .line 886
    .line 887
    invoke-static {v9, v10, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 888
    .line 889
    .line 890
    const-string v9, " ago"

    .line 891
    .line 892
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    :cond_20
    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    .line 896
    .line 897
    .line 898
    move-result v9

    .line 899
    if-eqz v9, :cond_21

    .line 900
    .line 901
    const-string v8, " (running)"

    .line 902
    .line 903
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    goto :goto_11

    .line 907
    :cond_21
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    .line 908
    .line 909
    .line 910
    move-result-wide v9

    .line 911
    cmp-long v9, v9, v12

    .line 912
    .line 913
    if-eqz v9, :cond_22

    .line 914
    .line 915
    const-string v9, "; duration="

    .line 916
    .line 917
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    .line 921
    .line 922
    .line 923
    move-result-wide v8

    .line 924
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 925
    .line 926
    .line 927
    :cond_22
    :goto_11
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 928
    .line 929
    .line 930
    add-int/lit8 v9, v17, 0x1

    .line 931
    .line 932
    const/4 v8, 0x0

    .line 933
    goto/16 :goto_f

    .line 934
    .line 935
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 936
    .line 937
    const/4 v8, 0x0

    .line 938
    goto/16 :goto_e

    .line 939
    .line 940
    :cond_24
    :goto_12
    const/4 v0, 0x0

    .line 941
    goto/16 :goto_15

    .line 942
    .line 943
    :cond_25
    :goto_13
    const-string v1, "No operations."

    .line 944
    .line 945
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    iget v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 949
    .line 950
    if-le v1, v5, :cond_24

    .line 951
    .line 952
    const/16 v4, 0x95

    .line 953
    .line 954
    if-ge v1, v4, :cond_24

    .line 955
    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    .line 957
    .line 958
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 962
    .line 963
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 964
    .line 965
    .line 966
    move-result v0

    .line 967
    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    goto :goto_12

    .line 982
    :pswitch_8
    invoke-virtual {v0, v4, v7}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 983
    .line 984
    .line 985
    move-result v1

    .line 986
    if-gez v1, :cond_26

    .line 987
    .line 988
    goto/16 :goto_2

    .line 989
    .line 990
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v1

    .line 994
    if-nez v1, :cond_27

    .line 995
    .line 996
    const-string v0, "Error: Mode not specified."

    .line 997
    .line 998
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    goto/16 :goto_4

    .line 1002
    .line 1003
    :cond_27
    invoke-static {v4, v1}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 1004
    .line 1005
    .line 1006
    move-result v1

    .line 1007
    if-gez v1, :cond_28

    .line 1008
    .line 1009
    goto/16 :goto_4

    .line 1010
    .line 1011
    :cond_28
    iget-boolean v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    .line 1012
    .line 1013
    if-nez v2, :cond_29

    .line 1014
    .line 1015
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 1016
    .line 1017
    if-eqz v4, :cond_29

    .line 1018
    .line 1019
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1020
    .line 1021
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 1022
    .line 1023
    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 1024
    .line 1025
    invoke-interface {v2, v6, v0, v4, v1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1026
    .line 1027
    .line 1028
    goto :goto_12

    .line 1029
    :cond_29
    if-eqz v2, :cond_2a

    .line 1030
    .line 1031
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1032
    .line 1033
    if-eqz v2, :cond_2a

    .line 1034
    .line 1035
    :try_start_a
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 1036
    .line 1037
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1038
    .line 1039
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v2

    .line 1043
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 1044
    .line 1045
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 1046
    .line 1047
    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 1048
    .line 1049
    .line 1050
    move-result v2

    .line 1051
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1052
    .line 1053
    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 1054
    .line 1055
    invoke-interface {v4, v0, v2, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 1056
    .line 1057
    .line 1058
    goto :goto_12

    .line 1059
    :cond_2a
    :try_start_b
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1060
    .line 1061
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 1062
    .line 1063
    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 1064
    .line 1065
    invoke-interface {v2, v4, v0, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    .line 1066
    .line 1067
    .line 1068
    goto/16 :goto_12

    .line 1069
    .line 1070
    :goto_14
    const-string v1, "Remote exception: "

    .line 1071
    .line 1072
    invoke-static {v1, v0, v3}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 1073
    .line 1074
    .line 1075
    goto/16 :goto_4

    .line 1076
    .line 1077
    :goto_15
    return v0

    .line 1078
    nop

    .line 1079
    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_8
        -0x458a76fa -> :sswitch_7
        0x18f56 -> :sswitch_6
        0x1bc62 -> :sswitch_5
        0x33aff2 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "AppOps service (appops) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Starts a given operation for a particular application."

    .line 26
    .line 27
    const-string v1, "  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    .line 28
    .line 29
    const-string v2, "    Stops a given operation for a particular application."

    .line 30
    .line 31
    const-string v3, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "    Set the mode for a particular application and operation."

    .line 37
    .line 38
    const-string v1, "  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]"

    .line 39
    .line 40
    const-string v2, "    Return the mode for a particular application and optional operation."

    .line 41
    .line 42
    const-string v3, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    .line 48
    .line 49
    const-string v1, "  reset [--user <USER_ID>] [<PACKAGE>]"

    .line 50
    .line 51
    const-string v2, "    Reset the given application or all applications to default modes."

    .line 52
    .line 53
    const-string v3, "  write-settings"

    .line 54
    .line 55
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "    Immediately write pending changes to storage."

    .line 59
    .line 60
    const-string v1, "  read-settings"

    .line 61
    .line 62
    const-string v2, "    Read the last written settings, replacing current state in RAM."

    .line 63
    .line 64
    const-string v3, "  options:"

    .line 65
    .line 66
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    .line 70
    .line 71
    const-string v1, "    <OP>      an AppOps operation."

    .line 72
    .line 73
    const-string v2, "    <MODE>    one of allow, ignore, deny, or default"

    .line 74
    .line 75
    const-string v3, "    <USER_ID> the user id under which the package is installed. If --user is"

    .line 76
    .line 77
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "              not specified, the current user is assumed."

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final parseUserOpMode(Ljava/io/PrintWriter;)I
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    const-string v1, "--user"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    const-string p0, "Error: Operation not specified."

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_4
    invoke-static {p1, v0}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 63
    .line 64
    if-gez v0, :cond_5

    .line 65
    .line 66
    return v1

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-static {p1, v0}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 76
    .line 77
    if-gez p1, :cond_7

    .line 78
    .line 79
    return v1

    .line 80
    :cond_6
    const/4 p1, 0x1

    .line 81
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 82
    .line 83
    :cond_7
    const/4 p0, 0x0

    .line 84
    return p0
.end method

.method public final parseUserPackageOp(Ljava/io/PrintWriter;Z)I
    .locals 9

    .line 1
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    const-string v4, "--user"

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v4, "--uid"

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iput-boolean v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v4, "--attribution"

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 69
    .line 70
    if-nez v4, :cond_0

    .line 71
    .line 72
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 73
    .line 74
    :cond_5
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    const/4 v4, -0x1

    .line 77
    if-nez v2, :cond_6

    .line 78
    .line 79
    const-string p0, "Error: Package name not specified."

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return v4

    .line 85
    :cond_6
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 86
    .line 87
    if-nez v2, :cond_7

    .line 88
    .line 89
    if-eqz p2, :cond_7

    .line 90
    .line 91
    const-string p0, "Error: Operation not specified."

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return v4

    .line 97
    :cond_7
    if-eqz v2, :cond_8

    .line 98
    .line 99
    invoke-static {p1, v2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 104
    .line 105
    if-gez p2, :cond_9

    .line 106
    .line 107
    return v4

    .line 108
    :cond_8
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 109
    .line 110
    :cond_9
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 111
    .line 112
    if-ne p2, v0, :cond_a

    .line 113
    .line 114
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 119
    .line 120
    :cond_a
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 121
    .line 122
    :try_start_0
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    :catch_0
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    if-ne p2, v4, :cond_e

    .line 134
    .line 135
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-le p2, v3, :cond_e

    .line 142
    .line 143
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    const/16 v2, 0x75

    .line 150
    .line 151
    if-ne p2, v2, :cond_e

    .line 152
    .line 153
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 154
    .line 155
    const/16 v2, 0x2e

    .line 156
    .line 157
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-gez p2, :cond_e

    .line 162
    .line 163
    move p2, v3

    .line 164
    :goto_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    const/16 v5, 0x39

    .line 171
    .line 172
    const/16 v6, 0x30

    .line 173
    .line 174
    if-ge p2, v2, :cond_b

    .line 175
    .line 176
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-lt v2, v6, :cond_b

    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-gt v2, v5, :cond_b

    .line 191
    .line 192
    add-int/lit8 p2, p2, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_b
    if-le p2, v3, :cond_e

    .line 196
    .line 197
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-ge p2, v2, :cond_e

    .line 204
    .line 205
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v7, p2}, Ljava/lang/String;->charAt(I)C

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    add-int/2addr p2, v3

    .line 222
    move v3, p2

    .line 223
    :goto_2
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-ge v3, v8, :cond_c

    .line 230
    .line 231
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-lt v8, v6, :cond_c

    .line 238
    .line 239
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-gt v8, v5, :cond_c

    .line 246
    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_c
    if-le v3, p2, :cond_e

    .line 251
    .line 252
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v5, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    const/16 v3, 0x61

    .line 263
    .line 264
    if-ne v7, v3, :cond_d

    .line 265
    .line 266
    add-int/lit16 p2, p2, 0x2710

    .line 267
    .line 268
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_d
    const/16 v3, 0x73

    .line 276
    .line 277
    if-ne v7, v3, :cond_e

    .line 278
    .line 279
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    .line 285
    :catch_1
    :cond_e
    :goto_3
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 286
    .line 287
    if-eq p2, v4, :cond_f

    .line 288
    .line 289
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_f
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 293
    .line 294
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 299
    .line 300
    if-gez p2, :cond_10

    .line 301
    .line 302
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 307
    .line 308
    const-wide/16 v2, 0x2000

    .line 309
    .line 310
    iget v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 311
    .line 312
    invoke-interface {p2, v1, v2, v3, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 313
    .line 314
    .line 315
    move-result p2

    .line 316
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 317
    .line 318
    :cond_10
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 319
    .line 320
    if-gez p2, :cond_11

    .line 321
    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v0, "Error: No UID for "

    .line 325
    .line 326
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v0, " in user "

    .line 335
    .line 336
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 340
    .line 341
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 342
    .line 343
    .line 344
    return v4

    .line 345
    :cond_11
    :goto_4
    return v0
.end method
