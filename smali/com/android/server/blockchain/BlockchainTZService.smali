.class public Lcom/android/server/blockchain/BlockchainTZService;
.super Landroid/blockchain/IBlockchainManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG:Z

.field public static mContext:Landroid/content/Context;


# instance fields
.field public mRegisteredFWKClientMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.product_ship"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/2addr v0, v1

    .line 10
    sput-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    .line 11
    .line 12
    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "BlockchainTZService"

    .line 12
    .line 13
    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p0, "BlockchainTZService() - Valid Caller"

    .line 20
    .line 21
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Security Exception Occurred while pid["

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "] with uid["

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "] trying to access methodName ["

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, "] in [BlockchainTZService] service"

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p0, "BlockchainTZService() - Invalid Caller"

    .line 74
    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    throw v0
.end method


# virtual methods
.method public final getCredential(I)[B
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    .line 2
    .line 3
    const-string/jumbo v1, "getCredential"

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "BlockchainTZService"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/blockchain/BlockchainTZService;->nativeGetCredential(I)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getMeasurementFile()[B
    .locals 8

    .line 1
    const-string/jumbo p0, "getMeasurementFile"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p0, "Error closing InputStream"

    .line 8
    .line 9
    const-string v0, "File Read - Length = "

    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    const-string v2, "/system/tima_measurement_info"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "In readFile - Path /system/tima_measurement_info"

    .line 19
    .line 20
    const-string/jumbo v3, "com.android.server.blockchain.Utils"

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 28
    .line 29
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    long-to-int v0, v0

    .line 56
    new-array v1, v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eq v5, v0, :cond_0

    .line 63
    .line 64
    const-string v0, "File Read Failed"

    .line 65
    .line 66
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object v2, v4

    .line 72
    goto :goto_5

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :goto_0
    move-object v2, v4

    .line 75
    goto :goto_2

    .line 76
    :cond_0
    move-object v2, v1

    .line 77
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :catch_1
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :catch_2
    move-exception v0

    .line 86
    move-object v1, v2

    .line 87
    goto :goto_0

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    goto :goto_5

    .line 90
    :catch_3
    move-exception v0

    .line 91
    move-object v1, v2

    .line 92
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    .line 94
    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catch_4
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_3
    move-object v2, v1

    .line 105
    :goto_4
    return-object v2

    .line 106
    :goto_5
    if-eqz v2, :cond_2

    .line 107
    .line 108
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 109
    .line 110
    .line 111
    goto :goto_6

    .line 112
    :catch_5
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_6
    throw v0
.end method

.method public native nativeGetCredential(I)[B
.end method

.method public native nativePutCredential(I[B)Z
.end method

.method public native nativeSspExit()I
.end method

.method public native nativeSspInit()I
.end method

.method public final putCredential(I[B)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    .line 2
    .line 3
    const-string/jumbo v1, "putCredential"

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "BlockchainTZService"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/blockchain/BlockchainTZService;->nativePutCredential(I[B)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final registerBlockchainFW(Landroid/blockchain/BlockchainTZServiceConfig;)Landroid/blockchain/BlockchainTZServiceCommnInfo;
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    sget-object v1, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v2, "activity"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/app/ActivityManager;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    const-string v7, "BlockchainTZService"

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 49
    .line 50
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 51
    .line 52
    if-ne v5, v4, :cond_0

    .line 53
    .line 54
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "Error: am.getRunningAppProcesses() is null"

    .line 58
    .line 59
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    move-object v1, v3

    .line 63
    :goto_0
    if-nez v1, :cond_3

    .line 64
    .line 65
    const-string v1, "Error: can\'t find processname for PID"

    .line 66
    .line 67
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :cond_3
    move-object v8, v1

    .line 75
    const-string v1, "Inside registerBlockchainFW, uid: "

    .line 76
    .line 77
    const-string v2, ", pid: "

    .line 78
    .line 79
    const-string v5, ", package: "

    .line 80
    .line 81
    invoke-static {v0, v4, v1, v2, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0, v8, v7}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v6, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 89
    .line 90
    check-cast v0, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    iget-object v0, v6, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 99
    .line 100
    check-cast v0, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    .line 107
    .line 108
    iget v1, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPid:I

    .line 109
    .line 110
    if-eq v4, v1, :cond_4

    .line 111
    .line 112
    const-string v1, "Registered Client Died. Need to Rebind"

    .line 113
    .line 114
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    const-string v0, "Error: Framework App is already registered. Re-Registration not allowed"

    .line 124
    .line 125
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    return-object v3

    .line 129
    :cond_5
    :goto_1
    const-string/jumbo v0, "registerBlockchainFW"

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v9, Landroid/blockchain/BlockchainTZServiceCommnInfo;

    .line 136
    .line 137
    invoke-direct {v9}, Landroid/blockchain/BlockchainTZServiceCommnInfo;-><init>()V

    .line 138
    .line 139
    .line 140
    const/4 v0, 0x1

    .line 141
    iput v0, v9, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mServiceVersion:I

    .line 142
    .line 143
    move-object/from16 v2, p1

    .line 144
    .line 145
    iget-object v0, v2, Landroid/blockchain/BlockchainTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    check-cast v1, Ljava/util/Map$Entry;

    .line 166
    .line 167
    new-instance v3, Lcom/android/server/blockchain/TAController;

    .line 168
    .line 169
    sget-object v5, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    check-cast v10, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    check-cast v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;

    .line 186
    .line 187
    invoke-direct {v3}, Landroid/blockchain/ITAController$Stub;-><init>()V

    .line 188
    .line 189
    .line 190
    const/4 v12, 0x0

    .line 191
    iput-boolean v12, v3, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    .line 192
    .line 193
    sget-boolean v13, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    .line 194
    .line 195
    if-eqz v13, :cond_6

    .line 196
    .line 197
    const-string v13, "TAController constructor: taId = "

    .line 198
    .line 199
    const-string v14, "; maxSendCmdSize = "

    .line 200
    .line 201
    invoke-static {v10, v13, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    iget v14, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    .line 206
    .line 207
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v14, "; maxRecvRespSize = "

    .line 211
    .line 212
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget v14, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    .line 216
    .line 217
    invoke-static {v13, v14, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_6
    iput-object v5, v3, Lcom/android/server/blockchain/TAController;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    iput v10, v3, Lcom/android/server/blockchain/TAController;->mTAId:I

    .line 223
    .line 224
    new-instance v5, Lcom/android/server/blockchain/BlockchainTZNative;

    .line 225
    .line 226
    iget-object v13, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    .line 227
    .line 228
    iget-object v14, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    .line 229
    .line 230
    iget-object v15, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    .line 231
    .line 232
    iget v12, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    .line 233
    .line 234
    iget v11, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    .line 235
    .line 236
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 237
    .line 238
    .line 239
    sget-boolean v16, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    .line 240
    .line 241
    if-eqz v16, :cond_7

    .line 242
    .line 243
    move-object/from16 v16, v0

    .line 244
    .line 245
    const-string v0, "BlockchainTZNative constructor: taId = "

    .line 246
    .line 247
    invoke-static {v10, v0, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_7
    move-object/from16 v16, v0

    .line 252
    .line 253
    :goto_3
    iput v10, v5, Lcom/android/server/blockchain/BlockchainTZNative;->mTAId:I

    .line 254
    .line 255
    move-object v10, v7

    .line 256
    const-wide/16 v6, 0x0

    .line 257
    .line 258
    iput-wide v6, v5, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    .line 259
    .line 260
    iput v12, v5, Lcom/android/server/blockchain/BlockchainTZNative;->mSendBufSize:I

    .line 261
    .line 262
    iput v11, v5, Lcom/android/server/blockchain/BlockchainTZNative;->mRecvBufSize:I

    .line 263
    .line 264
    iput-object v13, v5, Lcom/android/server/blockchain/BlockchainTZNative;->mTATechnology:Ljava/lang/String;

    .line 265
    .line 266
    iput-object v14, v5, Lcom/android/server/blockchain/BlockchainTZNative;->mRootName:Ljava/lang/String;

    .line 267
    .line 268
    iput-object v15, v5, Lcom/android/server/blockchain/BlockchainTZNative;->mProcessName:Ljava/lang/String;

    .line 269
    .line 270
    const/4 v0, 0x0

    .line 271
    iput-boolean v0, v5, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    .line 272
    .line 273
    iput-object v5, v3, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    .line 274
    .line 275
    iget-object v0, v9, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    .line 276
    .line 277
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Ljava/lang/Integer;

    .line 282
    .line 283
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-object/from16 v6, p0

    .line 287
    .line 288
    move-object v7, v10

    .line 289
    move-object/from16 v0, v16

    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :cond_8
    move-object v10, v7

    .line 294
    new-instance v6, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    .line 295
    .line 296
    move-object v0, v6

    .line 297
    move-object/from16 v1, p0

    .line 298
    .line 299
    move-object/from16 v2, p1

    .line 300
    .line 301
    move-object v3, v9

    .line 302
    move-object v5, v8

    .line 303
    invoke-direct/range {v0 .. v5}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;-><init>(Lcom/android/server/blockchain/BlockchainTZService;Landroid/blockchain/BlockchainTZServiceConfig;Landroid/blockchain/BlockchainTZServiceCommnInfo;ILjava/lang/String;)V

    .line 304
    .line 305
    .line 306
    move-object/from16 v0, p0

    .line 307
    .line 308
    iget-object v1, v0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 309
    .line 310
    check-cast v1, Ljava/util/HashMap;

    .line 311
    .line 312
    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string/jumbo v2, "callingApp: "

    .line 318
    .line 319
    .line 320
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v2, " is registered, current size: "

    .line 327
    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 332
    .line 333
    check-cast v0, Ljava/util/HashMap;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    return-object v9
.end method

.method public final sspExit()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    .line 2
    .line 3
    const-string/jumbo v1, "sspExit"

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "BlockchainTZService"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService;->nativeSspExit()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final sspInit()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    .line 2
    .line 3
    const-string/jumbo v1, "sspInit"

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "BlockchainTZService"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService;->nativeSspInit()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method
