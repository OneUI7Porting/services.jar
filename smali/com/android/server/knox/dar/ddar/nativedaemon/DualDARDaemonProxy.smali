.class public final Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;


# instance fields
.field public isDaemonConnectionFailed:Z

.field public mAm:Landroid/app/ActivityManager;

.field public final mBlockedClearablePackages:Ljava/util/List;

.field public mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

.field public mConnectorThread:Ljava/lang/Thread;

.field public final mDualDARDOPolicyPackages:Ljava/util/List;

.field public mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    .line 36
    .line 37
    new-array v0, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v1, "DualDARDaemonProxy"

    .line 40
    .line 41
    const-string v2, "DualDARDaemonProxy() called"

    .line 42
    .line 43
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sput-object p1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public static fetchDumpStateInfo(Lcom/samsung/android/knox/ddar/FileInfo;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string/jumbo v2, "fetchDumpStateInfo()"

    .line 5
    .line 6
    .line 7
    const-string v3, "DualDARDaemonProxy"

    .line 8
    .line 9
    invoke-static {v3, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 13
    .line 14
    const-string v1, "/data/log/ddar_log.txt"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v5, Ljava/io/FileOutputStream;

    .line 31
    .line 32
    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 33
    .line 34
    .line 35
    :try_start_2
    new-instance p0, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/io/FileInputStream;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    :goto_0
    if-eqz p0, :cond_1

    .line 50
    .line 51
    const/16 v2, 0x400

    .line 52
    .line 53
    new-array v4, v2, [B

    .line 54
    .line 55
    if-le p0, v2, :cond_0

    .line 56
    .line 57
    add-int/lit16 p0, p0, -0x400

    .line 58
    .line 59
    move v6, v2

    .line 60
    move v2, p0

    .line 61
    move p0, v6

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    move v2, v0

    .line 64
    :goto_1
    invoke-virtual {v1, v4, v0, p0}, Ljava/io/FileInputStream;->read([BII)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-virtual {v5, v4, v0, p0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .line 70
    .line 71
    move p0, v2

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    :goto_2
    move-object v2, v5

    .line 75
    goto/16 :goto_8

    .line 76
    .line 77
    :catch_0
    move-exception p0

    .line 78
    :goto_3
    move-object v2, v5

    .line 79
    goto :goto_5

    .line 80
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :catch_1
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    new-array v2, v0, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static {v3, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 95
    .line 96
    .line 97
    goto :goto_7

    .line 98
    :catch_2
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    new-array v1, v0, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {v3, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_7

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    move-object v1, v2

    .line 111
    goto :goto_2

    .line 112
    :catch_3
    move-exception p0

    .line 113
    move-object v1, v2

    .line 114
    goto :goto_3

    .line 115
    :catchall_2
    move-exception p0

    .line 116
    move-object v1, v2

    .line 117
    move-object v2, v4

    .line 118
    goto :goto_8

    .line 119
    :catch_4
    move-exception p0

    .line 120
    move-object v1, v2

    .line 121
    move-object v2, v4

    .line 122
    goto :goto_5

    .line 123
    :catchall_3
    move-exception p0

    .line 124
    move-object v1, v2

    .line 125
    goto :goto_8

    .line 126
    :catch_5
    move-exception p0

    .line 127
    move-object v1, v2

    .line 128
    :goto_5
    :try_start_6
    const-string/jumbo v4, "fail to open inputstream from FileDescriptor"

    .line 129
    .line 130
    .line 131
    new-array v5, v0, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    new-array v4, v0, [Ljava/lang/Object;

    .line 141
    .line 142
    invoke-static {v3, p0, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 143
    .line 144
    .line 145
    if-eqz v2, :cond_2

    .line 146
    .line 147
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :catch_6
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    new-array v2, v0, [Ljava/lang/Object;

    .line 157
    .line 158
    invoke-static {v3, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    :goto_6
    if-eqz v1, :cond_3

    .line 162
    .line 163
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 164
    .line 165
    .line 166
    goto :goto_7

    .line 167
    :catch_7
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    new-array v1, v0, [Ljava/lang/Object;

    .line 173
    .line 174
    invoke-static {v3, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    :goto_7
    const-string/jumbo p0, "fetchDumpStateInfo() successfullly read the log file"

    .line 178
    .line 179
    .line 180
    new-array v0, v0, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {v3, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :catchall_4
    move-exception p0

    .line 187
    :goto_8
    if-eqz v2, :cond_4

    .line 188
    .line 189
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 190
    .line 191
    .line 192
    goto :goto_9

    .line 193
    :catch_8
    move-exception v2

    .line 194
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    new-array v4, v0, [Ljava/lang/Object;

    .line 199
    .line 200
    invoke-static {v3, v2, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_4
    :goto_9
    if-eqz v1, :cond_5

    .line 204
    .line 205
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 206
    .line 207
    .line 208
    goto :goto_a

    .line 209
    :catch_9
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    new-array v0, v0, [Ljava/lang/Object;

    .line 215
    .line 216
    invoke-static {v3, v1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_5
    :goto_a
    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method

.method public static setDualDARPOPolicy(II)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-class v3, Landroid/os/storage/StorageManager;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p0, p1}, Landroid/os/storage/StorageManager;->setDualDARPolicy(II)Z

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :try_start_1
    const-string p0, "EnterprisePartitionManager"

    .line 40
    .line 41
    const-string p1, "StorageManager instance is NULL"

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    move p0, v3

    .line 50
    :goto_0
    if-nez p0, :cond_1

    .line 51
    .line 52
    new-array p0, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    const-string p1, "DualDARDaemonProxy"

    .line 55
    .line 56
    const-string/jumbo v0, "setDualDARPolicy failed!"

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return v3

    .line 63
    :cond_1
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public static setEviction(IZ)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "EnterprisePartitionManager"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "setEviction(user:"

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " evict:"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ")"

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    const/4 v1, 0x0

    .line 40
    :try_start_0
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    iget-object v2, v2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 46
    .line 47
    invoke-interface {v2, p0, p1}, Landroid/os/IInstalld;->setEviction(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    :try_start_3
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    throw p0
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :catch_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    move p0, v1

    .line 63
    :goto_0
    if-nez p0, :cond_0

    .line 64
    .line 65
    const-string p0, "DualDARDaemonProxy"

    .line 66
    .line 67
    const-string/jumbo p1, "setEviction failed!"

    .line 68
    .line 69
    .line 70
    new-array v0, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :cond_0
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    throw p0
.end method

.method public static setSystemPropertyBoolean(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "persist.sys.knox.dualdard"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [Ljava/lang/Object;

    .line 12
    .line 13
    const-string v0, "DualDARDaemonProxy"

    .line 14
    .line 15
    const-string v1, "Invalid property"

    .line 16
    .line 17
    invoke-static {v0, v1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception p0

    .line 39
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_1
    return-void

    .line 44
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method


# virtual methods
.method public final clearApplicationUserDataForPackages(ILjava/util/List;)Z
    .locals 7

    .line 1
    const-string v0, "DualDARDaemonProxy"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_4

    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    .line 15
    .line 16
    check-cast p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string/jumbo p0, "clearApplicationUserDataForPackages - there is no package to clear"

    .line 26
    .line 27
    .line 28
    new-array p1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    :try_start_0
    check-cast p2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->clearUserData(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_2

    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string/jumbo v6, "clearApplicationUserData failed! : "

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    new-array v5, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v0, p2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v6, "clearApplicationUserData success! : "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    new-array v5, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {v0, p2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    .line 116
    .line 117
    const-string/jumbo p0, "clear app user data for initialize DualDAR at DO. success"

    .line 118
    .line 119
    .line 120
    new-array p1, v1, [Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return v2

    .line 126
    :goto_1
    :try_start_1
    const-string/jumbo p1, "clearApplicationUserDataForPackages exception"

    .line 127
    .line 128
    .line 129
    new-array p2, v1, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-static {v0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    .line 139
    .line 140
    return v1

    .line 141
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_4
    :goto_3
    const-string/jumbo p0, "clearApplicationUserDataForPackages failed! : (reason) DualDAR at DO user"

    .line 146
    .line 147
    .line 148
    new-array p1, v1, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return v1
.end method

.method public final clearSecret(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array p0, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string p1, "DualDARDaemonProxy"

    .line 9
    .line 10
    const-string/jumbo v0, "clearSecret failed! Error: native interface not yet connected failed"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    :try_start_0
    const-string/jumbo v2, "key"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "evict"

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v4, "all"

    .line 28
    .line 29
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    .line 48
    .line 49
    .line 50
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 57
    :cond_2
    return v1

    .line 58
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return v1
.end method

.method public final clearUserData(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "Couldn\'t clear application user data for package: "

    .line 2
    .line 3
    const-string v1, " try to clear application User Data"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    new-instance v3, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-boolean v2, v3, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->finished:Z

    .line 14
    .line 15
    iput-boolean v2, v3, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->success:Z

    .line 16
    .line 17
    :try_start_0
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    sget-object v4, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v5, "activity"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroid/app/ActivityManager;

    .line 30
    .line 31
    iput-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_4

    .line 36
    :cond_0
    :goto_0
    const-string v4, "DualDARDaemonProxy"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-array v5, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v4, v1, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    const-string p0, "DualDARDaemonProxy"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-array v0, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_1
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    :try_start_1
    iget-boolean p0, v3, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    if-nez p0, :cond_2

    .line 71
    .line 72
    const-wide/16 v0, 0x64

    .line 73
    .line 74
    :try_start_2
    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_3

    .line 80
    :catch_1
    move-exception p0

    .line 81
    :try_start_3
    const-string v0, "DualDARDaemonProxy"

    .line 82
    .line 83
    const-string v1, "InterruptedException occur"

    .line 84
    .line 85
    new-array v4, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {v0, v1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-boolean p0, v3, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->success:Z

    .line 95
    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    iget-object p0, v3, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_3

    .line 105
    .line 106
    const/4 p0, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move p0, v2

    .line 109
    :goto_2
    monitor-exit v3

    .line 110
    return p0

    .line 111
    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    :goto_4
    const-string p1, "DualDARDaemonProxy"

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-array v0, v2, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-static {p1, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_5
    return v2
.end method

.method public final getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string/jumbo v0, "startClientLibrary failed! Error code: "

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 5
    .line 6
    const-string v1, "DualDARDaemonProxy"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, ""

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "startClientLibrary failed! Error: native interface not yet connected failed"

    .line 14
    .line 15
    .line 16
    new-array p1, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    :try_start_0
    const-string/jumbo v4, "vendor_lib"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v5, "version"

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    filled-new-array {v6, p1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string/jumbo p1, "getClientLibraryVersion() got response from executeSync"

    .line 41
    .line 42
    .line 43
    new-array v4, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {v1, p1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mResponseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 51
    .line 52
    if-ltz p1, :cond_1

    .line 53
    .line 54
    move-object v3, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, " message: "

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-array p1, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    .line 83
    :goto_0
    return-object v3

    .line 84
    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    return-object v3
.end method

.method public final loadClientLibrary(ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array p0, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string p1, "DualDARDaemonProxy"

    .line 9
    .line 10
    const-string/jumbo p2, "loadClientLibrary failed! Error: native interface not yet connected failed"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    :try_start_0
    const-string/jumbo v2, "vendor_lib"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "load"

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 55
    :cond_2
    return v1

    .line 56
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    return v1
.end method

.method public final onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .line 1
    const-string/jumbo p1, "onMessage() "

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string v2, "DualDARDaemonProxy"

    .line 8
    .line 9
    const-string/jumbo v3, "enforceCallingUser"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0x1482

    .line 24
    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ne v1, v3, :cond_6

    .line 37
    .line 38
    :goto_0
    const/4 v1, 0x0

    .line 39
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-array v3, v0, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v2, p1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/16 v4, 0x9

    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    const/4 v6, 0x1

    .line 69
    sparse-switch v3, :sswitch_data_0

    .line 70
    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_0
    const-string v3, "SET_DUALDAR_DO_POLICY"

    .line 75
    .line 76
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_1

    .line 81
    .line 82
    const/4 p2, 0x4

    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :catch_0
    move-exception p0

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :sswitch_1
    const-string v3, "UNLOAD_CLIENT_LIBRARY"

    .line 89
    .line 90
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_1

    .line 95
    .line 96
    const/4 p2, 0x7

    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :sswitch_2
    const-string v3, "CLEAR_SECRET"

    .line 100
    .line 101
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_1

    .line 106
    .line 107
    const/16 p2, 0xb

    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :sswitch_3
    const-string v3, "SET_DUALDAR_POLICY"

    .line 112
    .line 113
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_1

    .line 118
    .line 119
    const/4 p2, 0x3

    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :sswitch_4
    const-string v3, "PUSH_SECRET"

    .line 123
    .line 124
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_1

    .line 129
    .line 130
    const/16 p2, 0xa

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :sswitch_5
    const-string v3, "SET_EVICTION"

    .line 134
    .line 135
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_1

    .line 140
    .line 141
    move p2, v5

    .line 142
    goto :goto_2

    .line 143
    :sswitch_6
    const-string v3, "START_DAEMON"

    .line 144
    .line 145
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_1

    .line 150
    .line 151
    move p2, v0

    .line 152
    goto :goto_2

    .line 153
    :sswitch_7
    const-string v3, "GET_CLIENTLIB_VERSION"

    .line 154
    .line 155
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_1

    .line 160
    .line 161
    move p2, v4

    .line 162
    goto :goto_2

    .line 163
    :sswitch_8
    const-string v3, "START_CLIENT_LIBRARY"

    .line 164
    .line 165
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-eqz p2, :cond_1

    .line 170
    .line 171
    const/16 p2, 0x8

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :sswitch_9
    const-string v3, "FETCH_DUMPSTATE_REQUEST"

    .line 175
    .line 176
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_1

    .line 181
    .line 182
    const/16 p2, 0xc

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :sswitch_a
    const-string v3, "STOP_DAEMON"

    .line 186
    .line 187
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_1

    .line 192
    .line 193
    move p2, v6

    .line 194
    goto :goto_2

    .line 195
    :sswitch_b
    const-string v3, "LOAD_CLIENT_LIBRARY"

    .line 196
    .line 197
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_1

    .line 202
    .line 203
    const/4 p2, 0x6

    .line 204
    goto :goto_2

    .line 205
    :sswitch_c
    const-string v3, "CLEAR_APP_DATA"

    .line 206
    .line 207
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    if-eqz p2, :cond_1

    .line 212
    .line 213
    const/4 p2, 0x5

    .line 214
    goto :goto_2

    .line 215
    :cond_1
    :goto_1
    const/4 p2, -0x1

    .line 216
    :goto_2
    const-string v3, "CRYPTO_PATH"

    .line 217
    .line 218
    const-string/jumbo v7, "dual_dar_response_message"

    .line 219
    .line 220
    .line 221
    const-string/jumbo v8, "user_id"

    .line 222
    .line 223
    .line 224
    const-string/jumbo v9, "dual_dar_response"

    .line 225
    .line 226
    .line 227
    packed-switch p2, :pswitch_data_0

    .line 228
    .line 229
    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :pswitch_0
    :try_start_1
    const-string p0, "FSLOG_FILE_INFO"

    .line 233
    .line 234
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    check-cast p0, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 239
    .line 240
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->fetchDumpStateInfo(Lcom/samsung/android/knox/ddar/FileInfo;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_4

    .line 247
    .line 248
    :pswitch_1
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->clearSecret(I)Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    invoke-virtual {p1, v9, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    .line 258
    .line 259
    if-nez p2, :cond_5

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 262
    .line 263
    if-eqz p0, :cond_5

    .line 264
    .line 265
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {p1, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_4

    .line 271
    .line 272
    :pswitch_2
    const-string p2, "INNER_LAYER_SECRET"

    .line 273
    .line 274
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    const-string v2, "ORIGINATING_SECURE_CLIENT_ID"

    .line 283
    .line 284
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p3

    .line 288
    invoke-virtual {p0, v0, p3, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->pushSecret(ILjava/lang/String;Ljava/util/List;)Z

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    invoke-virtual {p1, v9, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    .line 294
    .line 295
    if-nez p2, :cond_5

    .line 296
    .line 297
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 298
    .line 299
    if-eqz p0, :cond_5

    .line 300
    .line 301
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {p1, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_4

    .line 307
    .line 308
    :pswitch_3
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-virtual {p1, v9, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_4

    .line 320
    .line 321
    :pswitch_4
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startClientLibrary(I)Z

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    invoke-virtual {p1, v9, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    .line 331
    .line 332
    if-nez p2, :cond_5

    .line 333
    .line 334
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 335
    .line 336
    if-eqz p0, :cond_5

    .line 337
    .line 338
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {p1, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_4

    .line 344
    .line 345
    :pswitch_5
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result p2

    .line 349
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->unloadClientLibrary(I)Z

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    invoke-virtual {p1, v9, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    .line 355
    .line 356
    if-nez p2, :cond_5

    .line 357
    .line 358
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 359
    .line 360
    if-eqz p0, :cond_5

    .line 361
    .line 362
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {p1, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_4

    .line 368
    .line 369
    :pswitch_6
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    move-result p2

    .line 373
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p3

    .line 377
    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->loadClientLibrary(ILjava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result p2

    .line 381
    invoke-virtual {p1, v9, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    .line 383
    .line 384
    if-nez p2, :cond_5

    .line 385
    .line 386
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 387
    .line 388
    if-eqz p0, :cond_5

    .line 389
    .line 390
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {p1, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_4

    .line 396
    .line 397
    :pswitch_7
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result p2

    .line 401
    iget-object p3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    .line 402
    .line 403
    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->clearApplicationUserDataForPackages(ILjava/util/List;)Z

    .line 404
    .line 405
    .line 406
    move-result p2

    .line 407
    invoke-virtual {p1, v9, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    .line 409
    .line 410
    if-nez p2, :cond_5

    .line 411
    .line 412
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 413
    .line 414
    if-eqz p0, :cond_5

    .line 415
    .line 416
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {p1, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto :goto_4

    .line 422
    :pswitch_8
    invoke-virtual {p0, p3, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForManagedDevice(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 423
    .line 424
    .line 425
    goto :goto_4

    .line 426
    :pswitch_9
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result p2

    .line 430
    const-string v2, "CRYPTO_TYPE"

    .line 431
    .line 432
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    const-string v3, "STORAGE_TYPE"

    .line 437
    .line 438
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    move-result p3

    .line 442
    if-ne p3, v6, :cond_2

    .line 443
    .line 444
    invoke-static {p2, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPOPolicy(II)Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    goto :goto_3

    .line 449
    :cond_2
    if-ne p3, v5, :cond_3

    .line 450
    .line 451
    invoke-static {p2, v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPOPolicy(II)Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    :cond_3
    :goto_3
    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    .line 457
    .line 458
    if-nez v0, :cond_5

    .line 459
    .line 460
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 461
    .line 462
    if-eqz p0, :cond_5

    .line 463
    .line 464
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {p1, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    goto :goto_4

    .line 470
    :pswitch_a
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    move-result p2

    .line 474
    const-string v2, "EVICT"

    .line 475
    .line 476
    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 477
    .line 478
    .line 479
    move-result p3

    .line 480
    invoke-static {p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setEviction(IZ)Z

    .line 481
    .line 482
    .line 483
    move-result p2

    .line 484
    invoke-virtual {p1, v9, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 485
    .line 486
    .line 487
    if-nez p2, :cond_5

    .line 488
    .line 489
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 490
    .line 491
    if-eqz p0, :cond_5

    .line 492
    .line 493
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {p1, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    goto :goto_4

    .line 499
    :pswitch_b
    new-array p2, v0, [Ljava/lang/Object;

    .line 500
    .line 501
    const-string/jumbo p3, "stopConnectorThread() "

    .line 502
    .line 503
    .line 504
    invoke-static {v2, p3, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 508
    .line 509
    if-eqz p2, :cond_4

    .line 510
    .line 511
    iput-boolean v0, p2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    .line 512
    .line 513
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    .line 514
    .line 515
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 516
    .line 517
    .line 518
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 519
    .line 520
    :cond_4
    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Z)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 524
    .line 525
    .line 526
    goto :goto_4

    .line 527
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startDualDARDaemon(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 528
    .line 529
    .line 530
    :cond_5
    :goto_4
    return-object p1

    .line 531
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 532
    .line 533
    .line 534
    return-object v1

    .line 535
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 536
    .line 537
    const-string p1, "Can only be called by system user"

    .line 538
    .line 539
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    throw p0

    .line 543
    :sswitch_data_0
    .sparse-switch
        -0x7832af06 -> :sswitch_c
        -0x74c33360 -> :sswitch_b
        -0x41169e9f -> :sswitch_a
        -0x39e32f38 -> :sswitch_9
        -0x398c663c -> :sswitch_8
        0x432f76a -> :sswitch_7
        0xd454d21 -> :sswitch_6
        0x132d527c -> :sswitch_5
        0x205d4775 -> :sswitch_4
        0x2b3c5855 -> :sswitch_3
        0x2dada502 -> :sswitch_2
        0x4d55a167 -> :sswitch_1
        0x69e2b563 -> :sswitch_0
    .end sparse-switch

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final pushSecret(ILjava/lang/String;Ljava/util/List;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 2
    .line 3
    const-string v1, "DualDARDaemonProxy"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo p0, "pushSecret failed! Error: native interface not yet connected failed"

    .line 9
    .line 10
    .line 11
    new-array p1, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/samsung/android/knox/ddar/Secret;

    .line 32
    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 34
    .line 35
    iget-object v4, v0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    .line 36
    .line 37
    invoke-virtual {v3, p2, v4}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    const-string/jumbo p0, "pushSecret failed ! decData is null"

    .line 44
    .line 45
    .line 46
    new-array p1, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    array-length v5, v3

    .line 57
    mul-int/lit8 v5, v5, 0x2

    .line 58
    .line 59
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .line 61
    .line 62
    array-length v5, v3

    .line 63
    move v6, v2

    .line 64
    :goto_0
    if-ge v6, v5, :cond_3

    .line 65
    .line 66
    aget-byte v7, v3, v6

    .line 67
    .line 68
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    const-string v8, "%02x"

    .line 77
    .line 78
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v4, v2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 100
    .line 101
    const-string/jumbo v6, "key"

    .line 102
    .line 103
    .line 104
    const-string/jumbo v7, "install"

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    iget-object v0, v0, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    .line 112
    .line 113
    filled-new-array {v8, v0, v5}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 122
    .line 123
    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_1

    .line 133
    .line 134
    const-string/jumbo p0, "pushSecret failed !"

    .line 135
    .line 136
    .line 137
    new-array p1, v2, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    return v2

    .line 143
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    return v2

    .line 147
    :cond_4
    const/4 p0, 0x1

    .line 148
    return p0
.end method

.method public final setDualDARPolicyForManagedDevice(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string/jumbo v3, "user_id"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-string v4, "CRYPTO_TYPE"

    .line 15
    .line 16
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string/jumbo v4, "setDualDARDOPolicy for user "

    .line 21
    .line 22
    .line 23
    const-string v5, " type "

    .line 24
    .line 25
    invoke-static {v3, v0, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x0

    .line 30
    new-array v6, v5, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v7, "DualDARDaemonProxy"

    .line 33
    .line 34
    invoke-static {v7, v4, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v6, "/data/media/"

    .line 40
    .line 41
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget-object v6, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v6}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v0, v4}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const-string/jumbo v8, "setDualDARPolicyDirRecursively failed! : "

    .line 65
    .line 66
    .line 67
    if-nez v6, :cond_0

    .line 68
    .line 69
    invoke-static {v8, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-array v3, v5, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {v7, v0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "Failed to set the policy to shared folders..."

    .line 79
    .line 80
    new-array v3, v5, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v7, v0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_d

    .line 86
    .line 87
    :cond_0
    sget-object v4, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v4}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-string v6, "/data/user/"

    .line 94
    .line 95
    invoke-static {v3, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    new-instance v10, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v11, "/data/user_de/"

    .line 102
    .line 103
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v3, v0, v9}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDir(IILjava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    const-string/jumbo v12, "setDualDARPolicyDir user failed! : "

    .line 121
    .line 122
    .line 123
    if-nez v4, :cond_1

    .line 124
    .line 125
    invoke-static {v12, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-array v3, v5, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-static {v7, v0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "Failed to set the policy to data package folder..."

    .line 135
    .line 136
    new-array v3, v5, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-static {v7, v0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_d

    .line 142
    .line 143
    :cond_1
    const/16 v4, 0x9

    .line 144
    .line 145
    invoke-static {v3, v4, v10}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDir(IILjava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-nez v9, :cond_2

    .line 150
    .line 151
    invoke-static {v12, v10}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    new-array v10, v5, [Ljava/lang/Object;

    .line 156
    .line 157
    invoke-static {v7, v9, v10}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_2
    const-string/jumbo v9, "dar"

    .line 161
    .line 162
    .line 163
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    check-cast v10, Lcom/android/server/knox/dar/DarManagerService;

    .line 168
    .line 169
    if-eqz v10, :cond_16

    .line 170
    .line 171
    new-instance v12, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    new-instance v13, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 182
    .line 183
    .line 184
    move-result-wide v14

    .line 185
    :try_start_0
    const-string/jumbo v4, "pkg_clearable_system"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v4}, Lcom/android/server/knox/dar/DarManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    const-string/jumbo v5, "pkg_not_system"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10, v5}, Lcom/android/server/knox/dar/DarManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string/jumbo v2, "pkg_not_clearable_system"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v2}, Lcom/android/server/knox/dar/DarManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    .line 208
    .line 209
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    check-cast v9, Lcom/android/server/knox/dar/DarManagerService;

    .line 214
    .line 215
    if-eqz v9, :cond_3

    .line 216
    .line 217
    invoke-virtual {v9, v3}, Lcom/android/server/knox/dar/DarManagerService;->getBlockedClearablePackages(I)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    goto :goto_0

    .line 222
    :cond_3
    const/4 v9, 0x0

    .line 223
    :goto_0
    if-eqz v9, :cond_4

    .line 224
    .line 225
    iget-object v10, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 226
    .line 227
    check-cast v10, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 230
    .line 231
    .line 232
    iget-object v10, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 233
    .line 234
    check-cast v10, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    .line 238
    .line 239
    :cond_4
    iget-object v9, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 240
    .line 241
    if-eqz v9, :cond_5

    .line 242
    .line 243
    check-cast v9, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-eqz v10, :cond_5

    .line 254
    .line 255
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    check-cast v10, Ljava/lang/String;

    .line 260
    .line 261
    const-string/jumbo v14, "refreshNonClearablePackagesList = "

    .line 262
    .line 263
    .line 264
    invoke-static {v14, v10}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    const/4 v14, 0x0

    .line 269
    new-array v15, v14, [Ljava/lang/Object;

    .line 270
    .line 271
    invoke-static {v7, v10, v15}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_5
    if-eqz v4, :cond_6

    .line 276
    .line 277
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    if-eqz v9, :cond_7

    .line 282
    .line 283
    :cond_6
    const/4 v14, 0x0

    .line 284
    goto :goto_3

    .line 285
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    if-eqz v9, :cond_9

    .line 294
    .line 295
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    check-cast v9, Ljava/lang/String;

    .line 300
    .line 301
    iget-object v10, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 302
    .line 303
    check-cast v10, Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    if-nez v10, :cond_8

    .line 310
    .line 311
    iget-object v10, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 312
    .line 313
    check-cast v10, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v10

    .line 319
    if-eqz v10, :cond_8

    .line 320
    .line 321
    const-string v10, "1. Skip ddar policy for the pkg "

    .line 322
    .line 323
    invoke-static {v10, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    const/4 v14, 0x0

    .line 328
    new-array v15, v14, [Ljava/lang/Object;

    .line 329
    .line 330
    invoke-static {v7, v10, v15}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_8
    const/4 v14, 0x0

    .line 338
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    goto :goto_2

    .line 342
    :goto_3
    const-string v4, "Clearable system package list is Empty."

    .line 343
    .line 344
    new-array v9, v14, [Ljava/lang/Object;

    .line 345
    .line 346
    invoke-static {v7, v4, v9}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    :cond_9
    if-eqz v5, :cond_a

    .line 350
    .line 351
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-eqz v4, :cond_b

    .line 356
    .line 357
    :cond_a
    const/4 v10, 0x0

    .line 358
    goto :goto_5

    .line 359
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_d

    .line 368
    .line 369
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    check-cast v5, Ljava/lang/String;

    .line 374
    .line 375
    iget-object v9, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 376
    .line 377
    check-cast v9, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    if-nez v9, :cond_c

    .line 384
    .line 385
    iget-object v9, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 386
    .line 387
    check-cast v9, Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    if-eqz v9, :cond_c

    .line 394
    .line 395
    const-string v9, "2. Skip ddar policy for the pkg "

    .line 396
    .line 397
    invoke-static {v9, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    const/4 v10, 0x0

    .line 402
    new-array v14, v10, [Ljava/lang/Object;

    .line 403
    .line 404
    invoke-static {v7, v9, v14}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    goto :goto_4

    .line 411
    :cond_c
    const/4 v10, 0x0

    .line 412
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :goto_5
    const-string v4, "Not system package list is Empty."

    .line 417
    .line 418
    new-array v5, v10, [Ljava/lang/Object;

    .line 419
    .line 420
    invoke-static {v7, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :cond_d
    if-eqz v2, :cond_e

    .line 424
    .line 425
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    if-eqz v4, :cond_f

    .line 430
    .line 431
    :cond_e
    const/4 v9, 0x0

    .line 432
    goto :goto_7

    .line 433
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-eqz v4, :cond_10

    .line 442
    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    check-cast v4, Ljava/lang/String;

    .line 448
    .line 449
    const-string v5, "3. Skip ddar policy for the pkg "

    .line 450
    .line 451
    invoke-static {v5, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    const/4 v9, 0x0

    .line 456
    new-array v10, v9, [Ljava/lang/Object;

    .line 457
    .line 458
    invoke-static {v7, v5, v10}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    goto :goto_6

    .line 465
    :goto_7
    const-string v2, "Not clearable system package list is Empty."

    .line 466
    .line 467
    new-array v4, v9, [Ljava/lang/Object;

    .line 468
    .line 469
    invoke-static {v7, v2, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    :cond_10
    sget-object v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 473
    .line 474
    invoke-static {v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-eqz v5, :cond_15

    .line 487
    .line 488
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    check-cast v5, Ljava/lang/String;

    .line 493
    .line 494
    const-string v9, "/"

    .line 495
    .line 496
    invoke-static {v3, v6, v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    new-instance v13, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    invoke-static {v3, v0, v10}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    .line 522
    .line 523
    .line 524
    move-result v13

    .line 525
    if-nez v13, :cond_13

    .line 526
    .line 527
    sget-object v9, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 528
    .line 529
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    if-eqz v9, :cond_12

    .line 534
    .line 535
    const/4 v13, 0x0

    .line 536
    :try_start_1
    invoke-virtual {v9, v5, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 537
    .line 538
    .line 539
    move-result-object v9

    .line 540
    sget-object v13, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 541
    .line 542
    if-eqz v9, :cond_12

    .line 543
    .line 544
    iget-object v13, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 545
    .line 546
    if-eqz v13, :cond_12

    .line 547
    .line 548
    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 549
    .line 550
    if-nez v13, :cond_11

    .line 551
    .line 552
    goto :goto_9

    .line 553
    :cond_11
    const-string v14, "/data/overlays/current_locale_apks/files"

    .line 554
    .line 555
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    move-result v13

    .line 559
    if-eqz v13, :cond_12

    .line 560
    .line 561
    const-string/jumbo v13, "zipped-overlay"

    .line 562
    .line 563
    .line 564
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 565
    .line 566
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 570
    if-eqz v9, :cond_12

    .line 571
    .line 572
    const-string/jumbo v9, "setDualDARPolicyDirRecursively failure exceptional! : "

    .line 573
    .line 574
    .line 575
    invoke-static {v9, v10}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v9

    .line 579
    const/4 v10, 0x0

    .line 580
    new-array v13, v10, [Ljava/lang/Object;

    .line 581
    .line 582
    invoke-static {v7, v9, v13}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    const/16 v10, 0x9

    .line 589
    .line 590
    goto :goto_b

    .line 591
    :cond_12
    :goto_9
    const/4 v13, 0x0

    .line 592
    goto :goto_a

    .line 593
    :catch_0
    move-exception v0

    .line 594
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    const/4 v13, 0x0

    .line 599
    new-array v2, v13, [Ljava/lang/Object;

    .line 600
    .line 601
    invoke-static {v7, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    :goto_a
    invoke-static {v8, v10}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    new-array v2, v13, [Ljava/lang/Object;

    .line 609
    .line 610
    invoke-static {v7, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    const-string/jumbo v0, "setDualDARPolicyForPackages failed!"

    .line 614
    .line 615
    .line 616
    new-array v2, v13, [Ljava/lang/Object;

    .line 617
    .line 618
    invoke-static {v7, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    move v5, v13

    .line 622
    goto :goto_d

    .line 623
    :cond_13
    const/16 v10, 0x9

    .line 624
    .line 625
    const/4 v13, 0x0

    .line 626
    invoke-static {v3, v10, v9}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    .line 627
    .line 628
    .line 629
    move-result v14

    .line 630
    if-nez v14, :cond_14

    .line 631
    .line 632
    invoke-static {v8, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v9

    .line 636
    new-array v14, v13, [Ljava/lang/Object;

    .line 637
    .line 638
    invoke-static {v7, v9, v14}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    :cond_14
    :goto_b
    iget-object v9, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    .line 642
    .line 643
    check-cast v9, Ljava/util/ArrayList;

    .line 644
    .line 645
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    goto/16 :goto_8

    .line 649
    .line 650
    :cond_15
    sget-object v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 651
    .line 652
    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    if-eqz v3, :cond_16

    .line 668
    .line 669
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    check-cast v3, Ljava/lang/String;

    .line 674
    .line 675
    iget-object v4, v0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    .line 676
    .line 677
    check-cast v4, Ljava/util/ArrayList;

    .line 678
    .line 679
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    goto :goto_c

    .line 683
    :catchall_0
    move-exception v0

    .line 684
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    .line 686
    .line 687
    throw v0

    .line 688
    :cond_16
    const-string/jumbo v0, "setDualDARDOPolicy res : true"

    .line 689
    .line 690
    .line 691
    const/4 v2, 0x0

    .line 692
    new-array v2, v2, [Ljava/lang/Object;

    .line 693
    .line 694
    invoke-static {v7, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    const/4 v5, 0x1

    .line 698
    :goto_d
    const-string/jumbo v0, "dual_dar_response"

    .line 699
    .line 700
    .line 701
    move-object/from16 v2, p2

    .line 702
    .line 703
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 704
    .line 705
    .line 706
    if-nez v5, :cond_17

    .line 707
    .line 708
    iget-object v0, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 709
    .line 710
    if-eqz v0, :cond_17

    .line 711
    .line 712
    const-string/jumbo v1, "dual_dar_response_message"

    .line 713
    .line 714
    .line 715
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 716
    .line 717
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    :cond_17
    return-void
.end method

.method public final startClientLibrary(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array p0, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string p1, "DualDARDaemonProxy"

    .line 9
    .line 10
    const-string/jumbo v0, "startClientLibrary failed! Error: native interface not yet connected failed"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    :try_start_0
    const-string/jumbo v2, "vendor_lib"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "start"

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 v4, 0x10

    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    .line 52
    .line 53
    .line 54
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 61
    :cond_2
    return v1

    .line 62
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    return v1
.end method

.method public final startConnectorThread()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string/jumbo v1, "startConnectorThread() "

    .line 5
    .line 6
    .line 7
    const-string v2, "DualDARDaemonProxy"

    .line 8
    .line 9
    invoke-static {v2, v1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;-><init>(Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Thread;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final startDualDARDaemon(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/android/server/knox/dar/DarUtil;->isDaemonRunning()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "DualDARDaemonProxy"

    .line 13
    .line 14
    const-string/jumbo v4, "start newly dualdard daemon ! "

    .line 15
    .line 16
    .line 17
    new-array v5, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v1, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v4, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;

    .line 43
    .line 44
    invoke-direct {v4, p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;-><init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v5, 0x2710

    .line 48
    .line 49
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 55
    .line 56
    .line 57
    iget-boolean v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    const-string/jumbo v1, "dual_dar_response"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const-string v1, "DualDARDaemonProxy"

    .line 69
    .line 70
    const-string/jumbo v2, "failed to start newly dualdard daemon ! "

    .line 71
    .line 72
    .line 73
    new-array v4, v3, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {v1, v2, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "dual_dar_response"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Z)V

    .line 85
    .line 86
    .line 87
    :goto_1
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 96
    .line 97
    monitor-exit v0

    .line 98
    goto :goto_3

    .line 99
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :goto_3
    return-void
.end method

.method public final unloadClientLibrary(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array p0, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string p1, "DualDARDaemonProxy"

    .line 9
    .line 10
    const-string/jumbo v0, "unloadClientLibrary failed! Error: native interface not yet connected failed"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    :try_start_0
    const-string/jumbo v2, "vendor_lib"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "unload"

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 55
    :cond_2
    return v1

    .line 56
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    return v1
.end method
