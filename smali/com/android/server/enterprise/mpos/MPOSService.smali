.class public final Lcom/android/server/enterprise/mpos/MPOSService;
.super Lcom/samsung/android/knox/mpos/IMPOSService$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final context:Landroid/content/Context;

.field public iSehMpos:Lvendor/samsung/hardware/mpos/ISehMpos;

.field public final mRegisteredTzNativeMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/enterprise/mpos/MPOSService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/mpos/IMPOSService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/enterprise/mpos/MPOSService;->iSehMpos:Lvendor/samsung/hardware/mpos/ISehMpos;

    .line 13
    .line 14
    const-string v0, "MPOSService"

    .line 15
    .line 16
    const-string/jumbo v1, "start MPOSService: "

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/enterprise/mpos/MPOSService;->context:Landroid/content/Context;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final checkPermission()Z
    .locals 9

    .line 1
    const-string v0, ", name: "

    .line 2
    .line 3
    const-string v1, "MPOSService"

    .line 4
    .line 5
    const-string/jumbo v2, "checkSystemUid failed: callerUid: "

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "checkSystemUid: "

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/16 v6, 0x3e8

    .line 17
    .line 18
    invoke-static {v5, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    const/4 v7, 0x1

    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    return v7

    .line 26
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/mpos/MPOSService;->context:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/enterprise/mpos/MPOSService;->context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, v6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string/jumbo v3, "com.samsung.android.knox.mpos"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_1

    .line 81
    .line 82
    return v7

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string/jumbo v2, "checkSystemUid failed: "

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :goto_1
    return v4
.end method

.method public final declared-synchronized loadTa(ILandroid/os/ParcelFileDescriptor;JJLcom/samsung/android/knox/mpos/MposTZServiceConfig;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p7

    .line 4
    .line 5
    const-string/jumbo v2, "loadTa: "

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/mpos/MPOSService;->checkPermission()Z

    .line 10
    .line 11
    .line 12
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_0
    if-nez p2, :cond_1

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    :goto_0
    move v6, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    const-string v3, "MPOSService"

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move/from16 v2, p1

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v5, ", fdInt: "

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v5, ", offset: "

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-wide/from16 v14, p3

    .line 54
    .line 55
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, ", len: "

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-wide/from16 v12, p5

    .line 64
    .line 65
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    :try_start_2
    iget-object v3, v1, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    .line 76
    .line 77
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v3, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/android/server/enterprise/mpos/MposTZNative;

    .line 88
    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    new-instance v3, Lcom/android/server/enterprise/mpos/MposTZNative;

    .line 92
    .line 93
    iget-object v10, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->taTechnology:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v11, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->rootName:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v4, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->processName:Ljava/lang/String;

    .line 98
    .line 99
    iget v9, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxSendCmdSize:I

    .line 100
    .line 101
    iget v0, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxRecvRespSize:I

    .line 102
    .line 103
    move-object v7, v3

    .line 104
    move/from16 v8, p1

    .line 105
    .line 106
    move-object v12, v4

    .line 107
    move v13, v0

    .line 108
    invoke-direct/range {v7 .. v13}, Lcom/android/server/enterprise/mpos/MposTZNative;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, v1, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    .line 112
    .line 113
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v0, Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_2
    move-object v4, v3

    .line 123
    goto :goto_3

    .line 124
    :goto_2
    move-object v2, v0

    .line 125
    goto :goto_5

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    goto :goto_2

    .line 128
    :goto_3
    iget-object v5, v1, Lcom/android/server/enterprise/mpos/MPOSService;->context:Landroid/content/Context;

    .line 129
    .line 130
    move-wide/from16 v7, p3

    .line 131
    .line 132
    move-wide/from16 v9, p5

    .line 133
    .line 134
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/mpos/MposTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    const/4 v0, 0x1

    .line 141
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/mpos/MPOSService;->updateServiceHolder(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .line 143
    .line 144
    :cond_3
    if-eqz p2, :cond_4

    .line 145
    .line 146
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catchall_1
    move-exception v0

    .line 151
    goto :goto_7

    .line 152
    :catch_0
    move-exception v0

    .line 153
    move-object v3, v0

    .line 154
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_4
    monitor-exit p0

    .line 158
    return v2

    .line 159
    :goto_5
    if-eqz p2, :cond_5

    .line 160
    .line 161
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :catch_1
    move-exception v0

    .line 166
    move-object v3, v0

    .line 167
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 171
    :goto_7
    monitor-exit p0

    .line 172
    throw v0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized processTACommand(ILcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;
    .locals 4

    .line 1
    const-string/jumbo v0, "processTACommand fail cause tzNative null for "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "processTACommand: "

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v2, "MPOSService"

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/enterprise/mpos/MPOSService;->checkPermission()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const-string p1, "MPOSService"

    .line 33
    .line 34
    const-string/jumbo p2, "processTACommand: permission error"

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-object v2

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v1, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/android/server/enterprise/mpos/MposTZNative;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    const-string p2, "MPOSService"

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-object v2

    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/mpos/MposTZNative;->processTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;

    .line 80
    .line 81
    .line 82
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    monitor-exit p0

    .line 84
    return-object p1

    .line 85
    :goto_0
    monitor-exit p0

    .line 86
    throw p1
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized unloadTa(I)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "remaning map size: "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "unloadTa fail cause tzNative null for "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "unloadTa: "

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    const-string v3, "MPOSService"

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/enterprise/mpos/MPOSService;->checkPermission()Z

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return v3

    .line 37
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v2, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/enterprise/mpos/MposTZNative;

    .line 50
    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    const-string v0, "MPOSService"

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return v3

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/mpos/MposTZNative;->unloadTA()V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast v1, Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-string p1, "MPOSService"

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    .line 96
    .line 97
    check-cast v0, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    .line 114
    .line 115
    check-cast p1, Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-gtz p1, :cond_2

    .line 122
    .line 123
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/mpos/MPOSService;->updateServiceHolder(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    .line 126
    :cond_2
    monitor-exit p0

    .line 127
    const/4 p0, 0x1

    .line 128
    return p0

    .line 129
    :goto_0
    monitor-exit p0

    .line 130
    throw p1
.end method

.method public final updateServiceHolder(Z)V
    .locals 6

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    const-string v1, "MPOSService"

    .line 4
    .line 5
    const-string/jumbo v2, "vendor.samsung.hardware.mpos.ISehMpos/default"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "updateServiceHolder: "

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/mpos/MPOSService;->iSehMpos:Lvendor/samsung/hardware/mpos/ISehMpos;

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/enterprise/mpos/MPOSService;->iSehMpos:Lvendor/samsung/hardware/mpos/ISehMpos;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Lvendor/samsung/hardware/mpos/ISehMpos;->DESCRIPTOR:Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    instance-of v2, v0, Lvendor/samsung/hardware/mpos/ISehMpos;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    check-cast v0, Lvendor/samsung/hardware/mpos/ISehMpos;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Lvendor/samsung/hardware/mpos/ISehMpos$Stub$Proxy;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, v0, Lvendor/samsung/hardware/mpos/ISehMpos$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 83
    .line 84
    :goto_0
    move-object p1, v0

    .line 85
    :goto_1
    iput-object p1, p0, Lcom/android/server/enterprise/mpos/MPOSService;->iSehMpos:Lvendor/samsung/hardware/mpos/ISehMpos;

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iput-object v0, p0, Lcom/android/server/enterprise/mpos/MPOSService;->iSehMpos:Lvendor/samsung/hardware/mpos/ISehMpos;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string/jumbo v0, "updateServiceHolder failed: "

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :goto_3
    return-void
.end method
