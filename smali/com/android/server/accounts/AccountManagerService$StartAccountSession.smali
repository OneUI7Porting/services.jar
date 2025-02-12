.class public abstract Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mIsPasswordForwardingAllowed:Z

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v10, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v9, 0x1

    .line 8
    move-object v0, p0

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move/from16 v5, p5

    .line 13
    .line 14
    move-object/from16 v7, p6

    .line 15
    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 17
    .line 18
    .line 19
    move/from16 v0, p7

    .line 20
    .line 21
    iput-boolean v0, v10, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 9
    .line 10
    const-string/jumbo v0, "invalid intent in bundle returned"

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0, v2, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string/jumbo v2, "intent"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_0
    if-nez v2, :cond_2

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string v3, "AccountManagerService"

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " calling onError() on response "

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 98
    .line 99
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const-string/jumbo p0, "null bundle returned"

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v1, p0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    const-string/jumbo v5, "errorCode"

    .line 112
    .line 113
    .line 114
    const/4 v6, -0x1

    .line 115
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-lez v6, :cond_5

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 122
    .line 123
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const-string/jumbo v1, "errorMessage"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    .line 144
    .line 145
    if-nez v5, :cond_6

    .line 146
    .line 147
    const-string/jumbo v5, "password"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    const-string/jumbo v5, "authtoken"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    invoke-virtual {p0, v5, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-nez v5, :cond_7

    .line 168
    .line 169
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_7
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v5, " calling onResult() on response "

    .line 196
    .line 197
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :cond_8
    const-string v0, "accountSessionBundle"

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    if-eqz v5, :cond_c

    .line 217
    .line 218
    const-string v6, "accountType"

    .line 219
    .line 220
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-nez v8, :cond_9

    .line 229
    .line 230
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-nez v7, :cond_a

    .line 237
    .line 238
    :cond_9
    const-string v7, "Account type in session bundle doesn\'t match request."

    .line 239
    .line 240
    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :cond_a
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v6, v5}, Lcom/android/server/accounts/CryptoHelper;->encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :catch_0
    move-exception p1

    .line 261
    const/4 v0, 0x3

    .line 262
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_b

    .line 267
    .line 268
    const-string v0, "Failed to encrypt session bundle!"

    .line 269
    .line 270
    invoke-static {v3, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .line 272
    .line 273
    :cond_b
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 274
    .line 275
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 276
    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    const-string/jumbo p0, "failed to encrypt session bundle"

    .line 281
    .line 282
    .line 283
    invoke-static {v2, v1, p0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_c
    :goto_1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 288
    .line 289
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 290
    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    :try_start_1
    invoke-interface {v2, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :catch_1
    move-exception p0

    .line 299
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-eqz p1, :cond_d

    .line 304
    .line 305
    const-string/jumbo p1, "failure while notifying response"

    .line 306
    .line 307
    .line 308
    invoke-static {v3, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .line 310
    .line 311
    :cond_d
    :goto_2
    return-void
.end method
