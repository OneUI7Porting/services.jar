.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;->f$0:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;->f$0:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/knox/dar/DarManagerService;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Save secured escrow data for user "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "DarManagerService"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/io/File;

    .line 37
    .line 38
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string/jumbo v3, "spblob"

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/io/File;

    .line 49
    .line 50
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string/jumbo v6, "e0"

    .line 57
    .line 58
    .line 59
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "%016x.%s"

    .line 64
    .line 65
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Ljava/io/File;

    .line 73
    .line 74
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string/jumbo v4, "p1"

    .line 79
    .line 80
    .line 81
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_1

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService;->fileRead(Ljava/lang/String;)[B

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v3}, Lcom/android/server/knox/dar/DarManagerService;->fileRead(Ljava/lang/String;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_2

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_2
    const-string v4, "SdpSecureDataKey"

    .line 135
    .line 136
    invoke-virtual {p1, v4, p0}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_3

    .line 145
    .line 146
    new-instance p0, Ljava/lang/Exception;

    .line 147
    .line 148
    const-string p1, "Unexpected failure while get secure data key"

    .line 149
    .line 150
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_3
    iget-object v6, p1, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 163
    .line 164
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {v4, v0}, Lcom/android/server/knox/dar/KeyProtector;->encryptFast([B[B)[B

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object p1, p1, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v4, v3}, Lcom/android/server/knox/dar/KeyProtector;->encryptFast([B[B)[B

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v2, ".bku"

    .line 193
    .line 194
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v3, v0}, Lcom/android/server/knox/dar/DarManagerService;->fileWrite(Ljava/lang/String;[B)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2, p1}, Lcom/android/server/knox/dar/DarManagerService;->fileWrite(Ljava/lang/String;[B)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    const-string p1, "Escrow data for SYSTEM user %d got secured [ Res : %b/%b ]"

    .line 245
    .line 246
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_4
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 255
    .line 256
    .line 257
    move-result p0

    .line 258
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v2, "Escrow data doesn\'t exist [ "

    .line 265
    .line 266
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p0, "/"

    .line 273
    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string p0, " ]"

    .line 281
    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    :goto_1
    return-void

    .line 293
    :pswitch_0
    check-cast p1, Lcom/android/server/pm/PersonaManagerService;

    .line 294
    .line 295
    iget-object v0, p1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 296
    .line 297
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 298
    .line 299
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 300
    .line 301
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const-string/jumbo v2, "knox_finger_print_plus"

    .line 306
    .line 307
    .line 308
    const/4 v3, 0x0

    .line 309
    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    const/4 v4, 0x1

    .line 314
    if-ne v1, v4, :cond_5

    .line 315
    .line 316
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-nez p1, :cond_5

    .line 321
    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {p1, v2, v3, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 327
    .line 328
    .line 329
    const-string p0, "ContainerDependencyWrapper"

    .line 330
    .line 331
    const-string/jumbo p1, "unset two-factor setting value."

    .line 332
    .line 333
    .line 334
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    :cond_5
    return-void

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
