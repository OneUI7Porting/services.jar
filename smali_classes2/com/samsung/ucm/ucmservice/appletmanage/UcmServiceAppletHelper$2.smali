.class public final Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12

    .line 1
    const-string p1, "handleCcmRet. error [-1]"

    .line 2
    .line 3
    const-string v0, "handleCcm: Exception "

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string v2, "/efs/sec_efs"

    .line 8
    .line 9
    const-string/jumbo v3, "ucm_delete_applet_lccmscript"

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v4, "UcmServiceAppletHelper"

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string/jumbo p0, "onServiceConnected, but file doesn\'t exist"

    .line 24
    .line 25
    .line 26
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string v1, "getByteArray read: "

    .line 31
    .line 32
    const-string v5, "getAppletDeletionLccmScript"

    .line 33
    .line 34
    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    move-object v8, v7

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance v5, Ljava/io/File;

    .line 53
    .line 54
    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    long-to-int v5, v8

    .line 62
    new-array v8, v5, [B

    .line 63
    .line 64
    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    .line 65
    .line 66
    new-instance v10, Ljava/io/FileInputStream;

    .line 67
    .line 68
    new-instance v11, Ljava/io/File;

    .line 69
    .line 70
    invoke-direct {v11, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v8, v6, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception v1

    .line 105
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_1
    move-exception v2

    .line 110
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 114
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :goto_2
    if-nez v8, :cond_2

    .line 118
    .line 119
    const-string/jumbo p0, "onServiceConnected, but script is null"

    .line 120
    .line 121
    .line 122
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    :try_start_5
    sget v1, Lcom/skms/android/agent/CcmInterface$Stub;->$r8$clinit:I

    .line 127
    .line 128
    if-nez p2, :cond_3

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    const-string v1, "com.skms.android.agent.CcmInterface"

    .line 132
    .line 133
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    instance-of v2, v1, Lcom/skms/android/agent/CcmInterface;

    .line 140
    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    move-object v7, v1

    .line 144
    check-cast v7, Lcom/skms/android/agent/CcmInterface;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    new-instance v7, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;

    .line 148
    .line 149
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object p2, v7, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 153
    .line 154
    :goto_3
    if-nez v7, :cond_5

    .line 155
    .line 156
    const-string/jumbo p2, "onServiceConnected, but CcmInterface is null"

    .line 157
    .line 158
    .line 159
    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 163
    .line 164
    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->retryRunLccmAfterSleep()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :catchall_2
    move-exception p2

    .line 179
    goto :goto_6

    .line 180
    :cond_5
    :try_start_6
    array-length p2, v8

    .line 181
    check-cast v7, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;

    .line 182
    .line 183
    invoke-virtual {v7, p2, v8}, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;->handleCcm(I[B)I

    .line 184
    .line 185
    .line 186
    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 187
    goto :goto_4

    .line 188
    :catch_1
    move-exception p2

    .line 189
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 209
    .line 210
    .line 211
    const/4 p1, -0x1

    .line 212
    :goto_4
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 213
    .line 214
    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 217
    .line 218
    .line 219
    if-nez p1, :cond_6

    .line 220
    .line 221
    const-string p1, "handleCcmRet: clearAppletInfo"

    .line 222
    .line 223
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->clearAppletInfo()V

    .line 227
    .line 228
    .line 229
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 230
    .line 231
    iput-boolean v6, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mIsLccmScriptRunning:Z

    .line 232
    .line 233
    const-string p0, "Running Lccm Script Completed"

    .line 234
    .line 235
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_6
    const-string p2, "handleCcmRet. error ["

    .line 240
    .line 241
    const-string v0, "]"

    .line 242
    .line 243
    invoke-static {p1, p2, v0, v4}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->retryRunLccmAfterSleep()V

    .line 249
    .line 250
    .line 251
    :goto_5
    return-void

    .line 252
    :goto_6
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    .line 255
    .line 256
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->retryRunLccmAfterSleep()V

    .line 265
    .line 266
    .line 267
    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method
