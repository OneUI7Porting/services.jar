.class public final Lcom/android/server/knox/dar/ddar/ta/TAProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static mInstance:Lcom/android/server/knox/dar/ddar/ta/TAProxy;


# instance fields
.field public iSehDdar:Lvendor/samsung/hardware/tlc/ddar/ISehDdar;

.field public mTAMap:Ljava/util/Map;


# virtual methods
.method public final loadTARequest(Landroid/os/Bundle;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string/jumbo v2, "loadTARequest called"

    .line 5
    .line 6
    .line 7
    const-string v3, "TAProxy"

    .line 8
    .line 9
    invoke-static {v3, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "TA_ID"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v2, "TA_FD"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    const-string v4, "TA_FD_OFFSET"

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    const-string v4, "TA_FD_SIZE"

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    new-array p1, v0, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v4, "TAProxy::loadTA"

    .line 41
    .line 42
    invoke-static {v3, v4, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    :goto_0
    move v6, p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    const/4 p1, -0x1

    .line 54
    goto :goto_0

    .line 55
    :goto_1
    const-string p1, "TA fd="

    .line 56
    .line 57
    const-string v4, " offset="

    .line 58
    .line 59
    invoke-static {v6, p1, v7, v8, v4}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v4, " size="

    .line 64
    .line 65
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-array v4, v0, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-static {v3, p1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :try_start_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast p1, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;

    .line 93
    .line 94
    if-nez p1, :cond_1

    .line 95
    .line 96
    const-string p0, "TAProxy::loadTA failed. TAInfo is null on Map."

    .line 97
    .line 98
    new-array p1, v0, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto :goto_3

    .line 116
    :cond_1
    :try_start_2
    iget-object v5, p1, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 117
    .line 118
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->loadTA(IJJ)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->updateServiceHolder(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    .line 128
    :cond_2
    if-eqz v2, :cond_3

    .line 129
    .line 130
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_2
    return v0

    .line 134
    :goto_3
    if-eqz v2, :cond_4

    .line 135
    .line 136
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :catch_1
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_4
    throw p0
.end method

.method public final onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

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
    const-string v2, "TAProxy"

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
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-array v1, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v2, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x2

    .line 65
    const/4 v3, 0x3

    .line 66
    const/4 v4, 0x1

    .line 67
    sparse-switch v1, :sswitch_data_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :sswitch_0
    const-string v0, "PROCESS_COMMAND"

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    move v0, v3

    .line 80
    goto :goto_2

    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto :goto_4

    .line 83
    :sswitch_1
    const-string v0, "LOAD_TA"

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_1

    .line 90
    .line 91
    move v0, v4

    .line 92
    goto :goto_2

    .line 93
    :sswitch_2
    const-string v0, "UNLOAD_TA"

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_1

    .line 100
    .line 101
    move v0, v2

    .line 102
    goto :goto_2

    .line 103
    :sswitch_3
    const-string v1, "SETUP_TA"

    .line 104
    .line 105
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    if-eqz p2, :cond_1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_1
    :goto_1
    const/4 v0, -0x1

    .line 113
    :goto_2
    const-string/jumbo p2, "dual_dar_response"

    .line 114
    .line 115
    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    if-eq v0, v4, :cond_4

    .line 119
    .line 120
    if-eq v0, v2, :cond_3

    .line 121
    .line 122
    if-eq v0, v3, :cond_2

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_2
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->processCommandRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->unloadTARequest(Landroid/os/Bundle;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->loadTARequest(Landroid/os/Bundle;)Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->setupTARequest(Landroid/os/Bundle;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .line 153
    .line 154
    :goto_3
    return-object p1

    .line 155
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    const/4 p0, 0x0

    .line 159
    return-object p0

    .line 160
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 161
    .line 162
    const-string p1, "Can only be called by system user"

    .line 163
    .line 164
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    nop

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x7bc5cc71 -> :sswitch_3
        0x203147ad -> :sswitch_2
        0x3edcc066 -> :sswitch_1
        0x632dfd3b -> :sswitch_0
    .end sparse-switch
.end method

.method public final processCommandRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string/jumbo v2, "processCommandRequest called"

    .line 5
    .line 6
    .line 7
    const-string v3, "TAProxy"

    .line 8
    .line 9
    invoke-static {v3, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "TA_ID"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    new-instance v2, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;

    .line 24
    .line 25
    invoke-direct {v4}, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v5, "TA_VERSION"

    .line 29
    .line 30
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const-string v6, "TA_MAGICNUM"

    .line 35
    .line 36
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const-string v7, "TA_CMD_ID"

    .line 41
    .line 42
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const-string v8, "TA_CMD_DATA"

    .line 47
    .line 48
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->init(I[BI[B)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v5, "TAProxy::processTACommand: request = "

    .line 58
    .line 59
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, "; request.mCommandId = "

    .line 66
    .line 67
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v5, v4, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    .line 71
    .line 72
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, "; this.mTAId = "

    .line 76
    .line 77
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {v3, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p0, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 107
    .line 108
    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->processTACommand(Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;)Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-eqz p0, :cond_0

    .line 113
    .line 114
    const-string p1, "TA_RESP_CODE"

    .line 115
    .line 116
    iget v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponseCode:I

    .line 117
    .line 118
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const-string p1, "TA_ERROR_MSG"

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string p1, "TA_RESPDATA"

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    .line 131
    .line 132
    invoke-virtual {v2, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 133
    .line 134
    .line 135
    :cond_0
    return-object v2
.end method

.method public final setupTARequest(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string/jumbo v2, "setupTARequest called"

    .line 5
    .line 6
    .line 7
    const-string v3, "TAProxy"

    .line 8
    .line 9
    invoke-static {v3, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "ALL_TAS"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    move v1, v0

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/os/Bundle;

    .line 30
    .line 31
    const-string v4, "TA_ID"

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v5, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;

    .line 52
    .line 53
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taId:I

    .line 57
    .line 58
    const-string v4, "TA_TECHNOLOGY"

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iput-object v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taTechnology:Ljava/lang/String;

    .line 65
    .line 66
    const-string v4, "TA_ROOT_NAME"

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iput-object v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taRootName:Ljava/lang/String;

    .line 73
    .line 74
    const-string v4, "TA_PROCESS_NAME"

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iput-object v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taProcessName:Ljava/lang/String;

    .line 81
    .line 82
    const-string v4, "TA_SEND_CMD_SIZE"

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    iput v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->maxSendCmdSize:I

    .line 89
    .line 90
    const-string v4, "TA_RECV_RESP_SIZE"

    .line 91
    .line 92
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    new-instance v4, Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 97
    .line 98
    iget v6, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taId:I

    .line 99
    .line 100
    iget-object v7, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taTechnology:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v8, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taRootName:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v9, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taProcessName:Ljava/lang/String;

    .line 105
    .line 106
    iget v10, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->maxSendCmdSize:I

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v11, "TZNative constructor: taId = "

    .line 112
    .line 113
    invoke-static {v6, v11}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    new-array v12, v0, [Ljava/lang/Object;

    .line 118
    .line 119
    const-string v13, "DualDAR:TZNative"

    .line 120
    .line 121
    invoke-static {v13, v11, v12}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iput v6, v4, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mTAId:I

    .line 125
    .line 126
    const-wide/16 v11, 0x0

    .line 127
    .line 128
    iput-wide v11, v4, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 129
    .line 130
    iput v10, v4, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mSendBufSize:I

    .line 131
    .line 132
    iput v2, v4, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mRecvBufSize:I

    .line 133
    .line 134
    iput-object v7, v4, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mTATechnology:Ljava/lang/String;

    .line 135
    .line 136
    iput-object v8, v4, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mRootName:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v9, v4, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mProcessName:Ljava/lang/String;

    .line 139
    .line 140
    iput-boolean v0, v4, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    .line 141
    .line 142
    iput-object v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    .line 145
    .line 146
    iget v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taId:I

    .line 147
    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v2, Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_1
    const-string/jumbo p0, "setupTARequest completed"

    .line 162
    .line 163
    .line 164
    new-array p1, v0, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final unloadTARequest(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "TAProxy"

    .line 2
    .line 3
    const-string/jumbo v1, "unloadTARequest called"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "TA_ID"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const-string v0, "TAProxy"

    .line 19
    .line 20
    const-string v1, "TAProxy::unloadTA"

    .line 21
    .line 22
    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const-string p0, "TAProxy"

    .line 44
    .line 45
    const-string p1, "TAProxy::unloadTA failed. TAInfo is null on Map."

    .line 46
    .line 47
    new-array v0, v2, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_0
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string v1, "TZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    .line 59
    .line 60
    const-class v3, Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 61
    .line 62
    monitor-enter v3

    .line 63
    :try_start_0
    iget-wide v4, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 64
    .line 65
    const-wide/16 v6, 0x0

    .line 66
    .line 67
    cmp-long v4, v4, v6

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    iget-boolean v4, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    .line 72
    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iput-boolean v2, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    .line 77
    .line 78
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->nativeDDARDestroyTLCommunicationContext()V

    .line 80
    .line 81
    .line 82
    iput-wide v6, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 83
    .line 84
    const-string v0, "DualDAR:TZNative"

    .line 85
    .line 86
    const-string v1, "TZNative::unloadTA called"

    .line 87
    .line 88
    new-array v3, v2, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    :goto_0
    :try_start_1
    const-string v4, "DualDAR:TZNative"

    .line 97
    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-boolean v0, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    .line 104
    .line 105
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-array v1, v2, [Ljava/lang/Object;

    .line 113
    .line 114
    invoke-static {v4, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast v0, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    .line 130
    .line 131
    check-cast p1, Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-gtz p1, :cond_3

    .line 138
    .line 139
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->updateServiceHolder(Z)V

    .line 140
    .line 141
    .line 142
    :cond_3
    :goto_2
    return-void

    .line 143
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    throw p0
.end method

.method public final updateServiceHolder(Z)V
    .locals 7

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    const-string v1, "TAProxy"

    .line 4
    .line 5
    const-string/jumbo v2, "vendor.samsung.hardware.tlc.ddar.ISehDdar/default"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "updateServiceHolder: "

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_0
    const-string v5, "34"

    .line 13
    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/16 v6, 0x22

    .line 19
    .line 20
    if-lt v5, v6, :cond_5

    .line 21
    .line 22
    invoke-static {v2}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->iSehDdar:Lvendor/samsung/hardware/tlc/ddar/ISehDdar;

    .line 44
    .line 45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-array v3, v4, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {v1, v0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    if-nez v5, :cond_0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->iSehDdar:Lvendor/samsung/hardware/tlc/ddar/ISehDdar;

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget v2, Lvendor/samsung/hardware/tlc/ddar/ISehDdar$Stub;->$r8$clinit:I

    .line 73
    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    sget-object v0, Lvendor/samsung/hardware/tlc/ddar/ISehDdar;->DESCRIPTOR:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    instance-of v2, v0, Lvendor/samsung/hardware/tlc/ddar/ISehDdar;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    check-cast v0, Lvendor/samsung/hardware/tlc/ddar/ISehDdar;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance v0, Lvendor/samsung/hardware/tlc/ddar/ISehDdar$Stub$Proxy;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, v0, Lvendor/samsung/hardware/tlc/ddar/ISehDdar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 98
    .line 99
    :goto_0
    move-object p1, v0

    .line 100
    :goto_1
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->iSehDdar:Lvendor/samsung/hardware/tlc/ddar/ISehDdar;

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->iSehDdar:Lvendor/samsung/hardware/tlc/ddar/ISehDdar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string/jumbo v0, "updateServiceHolder failed: "

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    new-array p1, v4, [Ljava/lang/Object;

    .line 124
    .line 125
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_3
    return-void
.end method
