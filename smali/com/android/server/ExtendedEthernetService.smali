.class public final Lcom/android/server/ExtendedEthernetService;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 6

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_3

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo p1, "eth_disabled"

    .line 11
    .line 12
    .line 13
    const-string v0, "ExtendedEthernetServiceImpl"

    .line 14
    .line 15
    const-string/jumbo v1, "handleSystemReady"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string/jumbo v2, "tethering"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/TetheringManager;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string/jumbo v2, "ethernet"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/net/EthernetManager;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    .line 46
    .line 47
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mStateListener:Lcom/android/server/ExtendedEthernetServiceImpl$2;

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "ETHERNET_TETHERING_MODE"

    .line 66
    .line 67
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string/jumbo v3, "on"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    const-string v2, "ETHERNET_TETHERING_MODE is on"

    .line 81
    .line 82
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    .line 86
    .line 87
    new-instance v3, Landroid/os/HandlerExecutor;

    .line 88
    .line 89
    iget-object v4, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    invoke-direct {v3, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 92
    .line 93
    .line 94
    iget-object v4, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetCallback:Lcom/android/server/ExtendedEthernetServiceImpl$1;

    .line 95
    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/net/EthernetManager;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)Landroid/net/EthernetManager$TetheredInterfaceRequest;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iput-object v2, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    .line 101
    .line 102
    :cond_0
    const/4 v2, 0x0

    .line 103
    :try_start_0
    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    const/4 v4, 0x1

    .line 108
    if-ne v3, v4, :cond_1

    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v3, "call setLinkDown"

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/ExtendedEthernetServiceImpl;->setLinkDown()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    const-string v3, "Not found ETH_DISABLED"

    .line 126
    .line 127
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    .line 132
    .line 133
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/ExtendedEthernetConfigStore;

    .line 134
    .line 135
    invoke-direct {v0}, Lcom/android/server/ExtendedEthernetConfigStore;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mConfigStore:Lcom/android/server/ExtendedEthernetConfigStore;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/android/server/ExtendedEthernetConfigStore;->read()V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mConfigStore:Lcom/android/server/ExtendedEthernetConfigStore;

    .line 144
    .line 145
    iget-object v1, v0, Lcom/android/server/ExtendedEthernetConfigStore;->mSync:Ljava/lang/Object;

    .line 146
    .line 147
    monitor-enter v1

    .line 148
    :try_start_1
    new-instance v3, Landroid/util/ArrayMap;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetConfigStore;->mIpConfigurations:Landroid/util/ArrayMap;

    .line 151
    .line 152
    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 153
    .line 154
    .line 155
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    move v0, v2

    .line 157
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ge v0, v1, :cond_2

    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 164
    .line 165
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    check-cast v5, Landroid/net/IpConfiguration;

    .line 176
    .line 177
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mStateObserver:Lcom/android/server/ExtendedEthernetServiceImpl$3;

    .line 194
    .line 195
    invoke-virtual {v0, p1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    throw p0

    .line 202
    :cond_3
    :goto_2
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "ExtendedEthernetService"

    .line 2
    .line 3
    const-string v1, "Registering extendedethernetservice"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "extendedethernetservice"

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
