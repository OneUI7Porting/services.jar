.class public final Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DBG:Z


# instance fields
.field public final mConfigAppletRequestIds:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;

.field public mIsLccmScriptRunning:Z

.field public mLccmRetryCount:I

.field public final mOnLccmConnection:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public final mSecurityHelper:Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->isDebug()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mIsLccmScriptRunning:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mConfigAppletRequestIds:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;-><init>(Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mOnLccmConnection:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mPm:Landroid/content/pm/IPackageManager;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mSecurityHelper:Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;

    .line 26
    .line 27
    const-string p1, "UcmServiceAppletHelperThread"

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, p0, p1}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;-><init>(Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mHandler:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;

    .line 43
    .line 44
    return-void
.end method

.method public static getSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getSignatureHash start: "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "UcmServiceAppletHelper"

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "getSignatureHash pluginPkgInfo is null"

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const-string v0, "SHA-512"

    .line 33
    .line 34
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 v3, 0x0

    .line 45
    aget-object p0, p0, v3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    const-string v0, "getSignatureHash exception: "

    .line 65
    .line 66
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    return-object v1
.end method


# virtual methods
.method public final declared-synchronized checkToRunLccmScript()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mSecurityHelper:Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;->isSystemCaller()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mSecurityHelper:Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;

    .line 11
    .line 12
    const-string/jumbo v1, "runLccmScript"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mIsLccmScriptRunning:Z

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->isAppletPluginExist()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    const-string v1, "/efs/sec_efs"

    .line 41
    .line 42
    const-string/jumbo v2, "ucm_delete_applet_lccmscript"

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mLccmRetryCount:I

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->runLccmScript()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :cond_3
    :goto_1
    :try_start_1
    const-string v0, "UcmServiceAppletHelper"

    .line 64
    .line 65
    const-string v1, "checkToRunLccmScript. skip"

    .line 66
    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_2
    monitor-exit p0

    .line 73
    throw v0
.end method

.method public final getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mPm:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const-wide/32 v0, 0x8000000

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    const-string p0, "UcmServiceAppletHelper"

    .line 12
    .line 13
    const-string p1, "application is not installed."

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final isAppletPluginExist()Z
    .locals 10

    .line 1
    const-string/jumbo v0, "ucm_applet_plugin_hash_of_signature"

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/io/File;

    .line 5
    .line 6
    const-string v2, "/efs/sec_efs"

    .line 7
    .line 8
    const-string/jumbo v3, "ucm_applet_pluginpackagename"

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    new-instance v1, Ljava/io/File;

    .line 22
    .line 23
    const-string/jumbo v5, "ucm_delete_applet_lccmscript"

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->clearAppletInfo()V

    .line 36
    .line 37
    .line 38
    return v4

    .line 39
    :cond_0
    const-string v1, ""

    .line 40
    .line 41
    const-string v5, "getByteArray read: "

    .line 42
    .line 43
    const-string v6, "getStoredPluginUid"

    .line 44
    .line 45
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 49
    .line 50
    new-instance v7, Ljava/io/FileInputStream;

    .line 51
    .line 52
    new-instance v8, Ljava/io/File;

    .line 53
    .line 54
    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .line 62
    .line 63
    :try_start_1
    new-instance v7, Ljava/io/File;

    .line 64
    .line 65
    invoke-direct {v7, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    long-to-int v3, v7

    .line 73
    new-array v7, v3, [B

    .line 74
    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v7, v4, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v8, Ljava/lang/String;

    .line 95
    .line 96
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 97
    .line 98
    invoke-direct {v8, v7, v4, v3, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception v3

    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v3

    .line 108
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catchall_1
    move-exception v6

    .line 113
    :try_start_4
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 117
    :catch_1
    move-exception v3

    .line 118
    move-object v8, v1

    .line 119
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    :goto_2
    const-string v3, "isPluginHashMatched, stored packagename: "

    .line 123
    .line 124
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const-string v6, "UcmServiceAppletHelper"

    .line 129
    .line 130
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->isOrganizationOwnedProfile(Landroid/content/Context;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_1

    .line 140
    .line 141
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->getOrganizationOwnedProfileUserId()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-virtual {p0, v3, v8}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-nez v3, :cond_2

    .line 150
    .line 151
    invoke-virtual {p0, v4, v8}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    goto :goto_3

    .line 156
    :cond_1
    invoke-virtual {p0, v4, v8}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 161
    .line 162
    const-string p0, "getStoredPluginSigHash"

    .line 163
    .line 164
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :try_start_5
    new-instance p0, Ljava/io/BufferedInputStream;

    .line 168
    .line 169
    new-instance v6, Ljava/io/FileInputStream;

    .line 170
    .line 171
    new-instance v7, Ljava/io/File;

    .line 172
    .line 173
    invoke-direct {v7, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 180
    .line 181
    .line 182
    :try_start_6
    new-instance v6, Ljava/io/File;

    .line 183
    .line 184
    invoke-direct {v6, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    long-to-int v0, v6

    .line 192
    new-array v2, v0, [B

    .line 193
    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v2, v4, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v5, Ljava/lang/String;

    .line 214
    .line 215
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 216
    .line 217
    invoke-direct {v5, v2, v4, v0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 218
    .line 219
    .line 220
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 221
    .line 222
    .line 223
    goto :goto_6

    .line 224
    :catch_2
    move-exception p0

    .line 225
    move-object v1, v5

    .line 226
    goto :goto_5

    .line 227
    :catchall_2
    move-exception v0

    .line 228
    :try_start_8
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :catchall_3
    move-exception p0

    .line 233
    :try_start_9
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    :goto_4
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 237
    :catch_3
    move-exception p0

    .line 238
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    move-object v5, v1

    .line 242
    :goto_6
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->getSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    if-eqz p0, :cond_3

    .line 251
    .line 252
    const/4 v4, 0x1

    .line 253
    :cond_3
    return v4
.end method

.method public final retryRunLccmAfterSleep()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mLccmRetryCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mLccmRetryCount:I

    .line 6
    .line 7
    const/16 v2, 0x1e

    .line 8
    .line 9
    const-string v3, "UcmServiceAppletHelper"

    .line 10
    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "retryRunLccmAfterSleep. stop retry"

    .line 14
    .line 15
    .line 16
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v2, 0x3

    .line 21
    if-ge v0, v2, :cond_1

    .line 22
    .line 23
    const-wide/16 v4, 0x3e8

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 v2, 0xa

    .line 27
    .line 28
    if-ge v0, v2, :cond_2

    .line 29
    .line 30
    const-wide/16 v4, 0x1388

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-wide/16 v4, 0x2710

    .line 34
    .line 35
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v2, "retryRunLccmAfterSleep. retry ["

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mLccmRetryCount:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "] after ["

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, "] ms"

    .line 57
    .line 58
    invoke-static {v0, v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mHandler:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final runLccmScript()V
    .locals 7

    .line 1
    const-string v0, "UcmServiceAppletHelper"

    .line 2
    .line 3
    const-string v1, "bindCcmService() isConnected : "

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mIsLccmScriptRunning:Z

    .line 7
    .line 8
    new-instance v3, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v4, "com.skms.android.agent.CcmService"

    .line 11
    .line 12
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v4, "com.skms.android.agent"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mOnLccmConnection:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;

    .line 25
    .line 26
    invoke-virtual {v5, v3, v6, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "bindCcmService() exception "

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    if-nez v4, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->retryRunLccmAfterSleep()V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method
