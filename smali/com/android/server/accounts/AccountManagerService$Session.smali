.class public abstract Lcom/android/server/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mAccountName:Ljava/lang/String;

.field public final mAccountType:Ljava/lang/String;

.field public final mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final mAuthDetailsRequired:Z

.field public mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field public mAuthenticatorUid:I

.field public mBindingStartTime:J

.field public mCanStartAccountManagerActivity:Z

.field public final mCreationTime:J

.field public final mExpectActivityLaunch:Z

.field public mNumErrors:I

.field public mNumRequestContinued:I

.field public mNumResults:I

.field public mResponse:Landroid/accounts/IAccountManagerResponse;

.field public final mSessionLock:Ljava/lang/Object;

.field public final mStripAuthTokenFromResult:Z

.field public final mUpdateLastAuthenticatedTime:Z

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCanStartAccountManagerActivity:Z

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 28
    .line 29
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 30
    .line 31
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 32
    .line 33
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide p4

    .line 39
    iput-wide p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 40
    .line 41
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 42
    .line 43
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 44
    .line 45
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 46
    .line 47
    iget-object p2, p1, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    monitor-enter p2

    .line 50
    :try_start_0
    iget-object p4, p1, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p5

    .line 56
    invoke-virtual {p4, p5, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 61
    .line 62
    const/4 p2, 0x3

    .line 63
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-wide/32 p4, 0xdbba0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 71
    .line 72
    .line 73
    if-eqz p3, :cond_0

    .line 74
    .line 75
    :try_start_1
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 80
    .line 81
    .line 82
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->binderDied()V

    .line 86
    .line 87
    .line 88
    :cond_0
    :goto_0
    return-void

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    throw p0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    const-string p1, "accountType is null"

    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method


# virtual methods
.method public final bind()V
    .locals 6

    .line 1
    const-string v0, "AccountManagerService"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v3, "initiating bind to authenticator type "

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 35
    .line 36
    invoke-static {v2}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 41
    .line 42
    iget v5, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 43
    .line 44
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/RegisteredServicesCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v3, "there is no authenticator for "

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ", bailing out"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 78
    .line 79
    iget v4, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_2

    .line 86
    .line 87
    iget-object v2, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    .line 88
    .line 89
    iget-boolean v2, v2, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 90
    .line 91
    if-nez v2, :cond_2

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "Blocking binding to authenticator "

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, " which isn\'t encryption aware"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .line 119
    .line 120
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v4, "android.accounts.AccountAuthenticator"

    .line 124
    .line 125
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 129
    .line 130
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string/jumbo v4, "performing bindService to "

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :cond_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 160
    .line 161
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 162
    .line 163
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 164
    .line 165
    iget v4, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 166
    .line 167
    invoke-virtual {v1, v4}, Landroid/content/pm/RegisteredServicesCache;->getBindInstantServiceAllowed(I)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    const-wide/32 v4, 0x400001

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_4
    const-wide/16 v4, 0x1

    .line 178
    .line 179
    :goto_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 180
    .line 181
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-static {v4, v5}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 188
    .line 189
    iget v5, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 190
    .line 191
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v1, v2, p0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_5

    .line 200
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string/jumbo v2, "bindService to "

    .line 204
    .line 205
    .line 206
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v2, " failed"

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 227
    .line 228
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 231
    .line 232
    .line 233
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string/jumbo v2, "bind attempt failed for "

    .line 236
    .line 237
    .line 238
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 242
    .line 243
    .line 244
    move-result-wide v2

    .line 245
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    const/4 v0, 0x1

    .line 260
    const-string/jumbo v1, "bind failure"

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_5
    iget v0, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 268
    .line 269
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticatorUid:I

    .line 270
    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 272
    .line 273
    .line 274
    move-result-wide v0

    .line 275
    iput-wide v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mBindingStartTime:J

    .line 276
    .line 277
    :goto_2
    return-void
.end method

.method public final binderDied()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final checkKeyIntent(ILandroid/os/Bundle;)Z
    .locals 10

    .line 1
    const-string v0, "KEY_INTENT resolved to an Activity ("

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 19
    .line 20
    .line 21
    const-class v1, Landroid/content/Intent;

    .line 22
    .line 23
    const-string/jumbo v4, "intent"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/content/Intent;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-class v6, Landroid/content/Intent;

    .line 39
    .line 40
    if-eq v5, v6, :cond_0

    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    const-class v5, Landroid/content/Intent;

    .line 45
    .line 46
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/content/Intent;

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    if-nez v3, :cond_c

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_2

    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eq v1, v5, :cond_3

    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    and-int/lit16 v1, v1, 0xc3

    .line 82
    .line 83
    if-nez v1, :cond_c

    .line 84
    .line 85
    :goto_0
    const-class v1, Landroid/content/Intent;

    .line 86
    .line 87
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Landroid/content/Intent;

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    if-nez p2, :cond_4

    .line 95
    .line 96
    return v1

    .line 97
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-static {v3, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 116
    .line 117
    iget-object v5, v5, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 124
    .line 125
    iget v6, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 126
    .line 127
    invoke-virtual {v5, p2, v2, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-nez v5, :cond_6

    .line 132
    .line 133
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    return v2

    .line 137
    :cond_6
    :try_start_1
    const-string/jumbo v6, "content"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    if-eqz p2, :cond_7

    .line 149
    .line 150
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    .line 152
    .line 153
    return v2

    .line 154
    :cond_7
    :try_start_2
    iget-object p2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 155
    .line 156
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 157
    .line 158
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 159
    .line 160
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    .line 161
    .line 162
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 167
    .line 168
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 169
    .line 170
    const-string v8, "android"

    .line 171
    .line 172
    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-nez v8, :cond_8

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_8
    iget-boolean v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCanStartAccountManagerActivity:Z

    .line 182
    .line 183
    if-eqz v8, :cond_9

    .line 184
    .line 185
    const-class v8, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 186
    .line 187
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-nez v8, :cond_b

    .line 196
    .line 197
    :cond_9
    const-class v8, Landroid/accounts/CantAddAccountActivity;

    .line 198
    .line 199
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-eqz v7, :cond_a

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_a
    :goto_1
    invoke-virtual {v6, v5, p1}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(II)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-nez p1, :cond_b

    .line 215
    .line 216
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 217
    .line 218
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 219
    .line 220
    const-string v1, "AccountManagerService"

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 223
    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string p2, ") in a package ("

    .line 233
    .line 234
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string p1, ") that does not share a signature with the supplying authenticator ("

    .line 241
    .line 242
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string p0, ")."

    .line 249
    .line 250
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    .line 259
    .line 260
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    .line 262
    .line 263
    return v2

    .line 264
    :catchall_0
    move-exception p0

    .line 265
    goto :goto_3

    .line 266
    :cond_b
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    .line 268
    .line 269
    return v1

    .line 270
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    .line 272
    .line 273
    throw p0

    .line 274
    :cond_c
    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    const-string p1, ""

    .line 279
    .line 280
    const-string p2, "250588548"

    .line 281
    .line 282
    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    const p1, 0x534e4554

    .line 287
    .line 288
    .line 289
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 290
    .line 291
    .line 292
    return v2
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v2

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    monitor-exit v2

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    throw p0

    .line 71
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p0
.end method

.method public final getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticatorUid:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mBindingStartTime:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->sResponseLatency:Lcom/android/modules/expresslog/Histogram;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-wide v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mBindingStartTime:J

    .line 20
    .line 21
    sub-long/2addr v2, v4

    .line 22
    long-to-float v2, v2

    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const-string v2, "AccountManagerService"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, " calling onError() on response "

    .line 39
    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    const-string p1, "Session.onError: caught RemoteException while responding"

    .line 65
    .line 66
    invoke-static {v2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    const-string p0, "Session.onError: already closed"

    .line 77
    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public final onRequestContinued()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 6
    .line 7
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "errorCode"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {p1, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 9
    .line 10
    add-int/2addr v2, v1

    .line 11
    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 12
    .line 13
    const-string v2, "accountType"

    .line 14
    .line 15
    const-string/jumbo v3, "authAccount"

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_8

    .line 19
    .line 20
    const-string/jumbo v4, "booleanResult"

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    move v6, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v6, v5

    .line 43
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 44
    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    :cond_1
    move v4, v1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v4, v5

    .line 54
    :goto_1
    if-nez v4, :cond_3

    .line 55
    .line 56
    iget-boolean v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 57
    .line 58
    if-eqz v6, :cond_8

    .line 59
    .line 60
    :cond_3
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 61
    .line 62
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 65
    .line 66
    sget-object v9, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    invoke-virtual {v6, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    iget-object v9, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_5

    .line 86
    .line 87
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    invoke-virtual {v6, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iget-object v6, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, [Landroid/accounts/Account;

    .line 102
    .line 103
    array-length v8, v6

    .line 104
    move v9, v5

    .line 105
    :goto_2
    if-ge v9, v8, :cond_5

    .line 106
    .line 107
    aget-object v10, v6, v9

    .line 108
    .line 109
    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-eqz v10, :cond_4

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    add-int/2addr v9, v1

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    move v1, v5

    .line 121
    :goto_3
    if-eqz v4, :cond_6

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 126
    .line 127
    new-instance v5, Landroid/accounts/Account;

    .line 128
    .line 129
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 132
    .line 133
    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    .line 137
    .line 138
    .line 139
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 140
    .line 141
    if-eqz v4, :cond_8

    .line 142
    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 148
    .line 149
    new-instance v4, Landroid/accounts/Account;

    .line 150
    .line 151
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 154
    .line 155
    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v1, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 167
    .line 168
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const-string v5, "SELECT last_password_entry_time_millis_epoch FROM accounts WHERE name=? AND type=?"

    .line 173
    .line 174
    invoke-static {v1, v5, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    const-wide/16 v4, -0x1

    .line 180
    .line 181
    :goto_4
    const-string/jumbo v1, "lastAuthenticatedTime"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    .line 186
    .line 187
    :cond_8
    const-string/jumbo v1, "invalid intent in bundle returned"

    .line 188
    .line 189
    .line 190
    const/4 v4, 0x5

    .line 191
    if-eqz p1, :cond_9

    .line 192
    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-virtual {p0, v5, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-nez v5, :cond_9

    .line 202
    .line 203
    invoke-virtual {p0, v4, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_9
    const-string/jumbo v5, "authtoken"

    .line 208
    .line 209
    .line 210
    if-eqz p1, :cond_a

    .line 211
    .line 212
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-nez v6, :cond_a

    .line 221
    .line 222
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-nez v6, :cond_a

    .line 235
    .line 236
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-nez v6, :cond_a

    .line 241
    .line 242
    new-instance v6, Landroid/accounts/Account;

    .line 243
    .line 244
    invoke-direct {v6, v3, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 248
    .line 249
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 250
    .line 251
    sget-object v7, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-static {v6, v3}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 261
    .line 262
    invoke-virtual {v2, v3, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 263
    .line 264
    .line 265
    :cond_a
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 266
    .line 267
    if-eqz v2, :cond_b

    .line 268
    .line 269
    if-eqz p1, :cond_b

    .line 270
    .line 271
    const-string/jumbo v2, "intent"

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_b

    .line 279
    .line 280
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    :goto_5
    if-eqz v2, :cond_11

    .line 288
    .line 289
    const/4 v3, 0x2

    .line 290
    const-string v6, "AccountManagerService"

    .line 291
    .line 292
    if-nez p1, :cond_d

    .line 293
    .line 294
    :try_start_0
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_c

    .line 299
    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string p0, " calling onError() on response "

    .line 317
    .line 318
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    invoke-static {v6, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    goto :goto_6

    .line 332
    :catch_0
    move-exception p0

    .line 333
    goto :goto_7

    .line 334
    :cond_c
    :goto_6
    const-string/jumbo p0, "null bundle returned"

    .line 335
    .line 336
    .line 337
    invoke-interface {v2, v4, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_d
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 342
    .line 343
    if-eqz v7, :cond_e

    .line 344
    .line 345
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    invoke-virtual {p0, v5, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-nez v5, :cond_e

    .line 357
    .line 358
    invoke-virtual {p0, v4, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :cond_e
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_f

    .line 367
    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string p0, " calling onResult() on response "

    .line 385
    .line 386
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    invoke-static {v6, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    :cond_f
    const/4 p0, -0x1

    .line 400
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 401
    .line 402
    .line 403
    move-result p0

    .line 404
    if-lez p0, :cond_10

    .line 405
    .line 406
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result p0

    .line 410
    const-string/jumbo v0, "errorMessage"

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-interface {v2, p0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 418
    .line 419
    .line 420
    goto :goto_8

    .line 421
    :cond_10
    invoke-interface {v2, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .line 423
    .line 424
    goto :goto_8

    .line 425
    :goto_7
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    if-eqz p1, :cond_11

    .line 430
    .line 431
    const-string/jumbo p1, "failure while notifying response"

    .line 432
    .line 433
    .line 434
    invoke-static {v6, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .line 436
    .line 437
    :cond_11
    :goto_8
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    :try_start_2
    const-string/jumbo p2, "remote exception"

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    monitor-exit p1

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string/jumbo p1, "disconnected"

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-interface {p0, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const/4 p1, 0x2

    .line 17
    const-string v0, "AccountManagerService"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, "Session.onServiceDisconnected: caught RemoteException while responding"

    .line 26
    .line 27
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public abstract run()V
.end method

.method public toDebugString(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Session: expectLaunch "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", connected "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", stats ("

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "/"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "), lifetime "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 62
    .line 63
    sub-long/2addr p1, v1

    .line 64
    long-to-double p0, p1

    .line 65
    const-wide v1, 0x408f400000000000L    # 1000.0

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    div-double/2addr p0, v1

    .line 71
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
