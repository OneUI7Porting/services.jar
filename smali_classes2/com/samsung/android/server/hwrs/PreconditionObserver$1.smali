.class public final Lcom/samsung/android/server/hwrs/PreconditionObserver$1;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

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
    .locals 8

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->stopUser()V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_1
    const-string/jumbo p1, "start entered"

    .line 21
    .line 22
    .line 23
    const-string v1, "[HWRS_SYS]PreconditionObserver"

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    const/16 p1, -0x2710

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    :goto_0
    new-instance v2, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    .line 42
    .line 43
    .line 44
    iput p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 45
    .line 46
    iput-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mListener:Lcom/samsung/android/server/hwrs/PreconditionObserver$2;

    .line 47
    .line 48
    const-string p1, "com.samsung.android.hwresourceshare"

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isPackageInstalled(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCameraShareInstalled:Z

    .line 55
    .line 56
    const-string p1, "com.samsung.android.hwresourceshare.storage"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isPackageInstalled(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mStorageShareInstalled:Z

    .line 63
    .line 64
    const-string p1, "initCheck"

    .line 65
    .line 66
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    new-instance p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->settingList:Ljava/util/List;

    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCameraShareInstalled:Z

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    const-string v2, "hwrs_camerashare_setting"

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mStorageShareInstalled:Z

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->settingList:Ljava/util/List;

    .line 90
    .line 91
    const-string v2, "hwrs_storageshare_setting"

    .line 92
    .line 93
    check-cast p1, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isSamsungAccountLogin()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->updateFlag(IZ)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x2

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isSettingEnabled$1()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->updateFlag(IZ)V

    .line 111
    .line 112
    .line 113
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    .line 114
    .line 115
    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    if-nez p1, :cond_5

    .line 119
    .line 120
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCameraShareInstalled:Z

    .line 121
    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v4, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_CAMERASHARE:Landroid/net/Uri;

    .line 131
    .line 132
    iget v5, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 133
    .line 134
    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 135
    .line 136
    .line 137
    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    .line 138
    .line 139
    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredStorageShareObserver:Z

    .line 140
    .line 141
    if-nez p1, :cond_6

    .line 142
    .line 143
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mStorageShareInstalled:Z

    .line 144
    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v4, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_STORAGESHARE:Landroid/net/Uri;

    .line 154
    .line 155
    iget v5, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 156
    .line 157
    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 158
    .line 159
    .line 160
    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredStorageShareObserver:Z

    .line 161
    .line 162
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 163
    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    const-string p1, "addOnAccountsUpdatedListener - already added"

    .line 167
    .line 168
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_7
    const-string p1, "addOnAccountsUpdatedListener"

    .line 173
    .line 174
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string v2, "com.osp.app.signin"

    .line 184
    .line 185
    filled-new-array {v2}, [Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const/4 v3, 0x0

    .line 190
    iget-object v4, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

    .line 191
    .line 192
    invoke-virtual {p1, v4, v3, v0, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 196
    .line 197
    if-eqz p1, :cond_8

    .line 198
    .line 199
    const-string p1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 200
    .line 201
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    new-instance v4, Landroid/os/UserHandle;

    .line 208
    .line 209
    iget p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 210
    .line 211
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 212
    .line 213
    .line 214
    const/4 v6, 0x0

    .line 215
    const/4 v7, 0x0

    .line 216
    iget-object v3, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

    .line 217
    .line 218
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 219
    .line 220
    .line 221
    :cond_8
    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 222
    .line 223
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->meetConditions()Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    iput-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    .line 228
    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string/jumbo v0, "mIsValidState : "

    .line 232
    .line 233
    .line 234
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-boolean p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    .line 238
    .line 239
    invoke-static {v1, p1, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 240
    .line 241
    .line 242
    :goto_2
    return-void
.end method
