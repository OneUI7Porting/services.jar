.class public final Lcom/android/server/emailksproxy/EmailKeystoreService;
.super Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DBG:Z


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    .locals 7

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string/jumbo p1, "calling this from your main thread can lead to deadlock"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/android/server/emailksproxy/EmailKeystoreService$1;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Landroid/content/Intent;

    .line 37
    .line 38
    const-class v4, Landroid/security/IKeyChainService;

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    sget-boolean v4, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v5, "KeyChainConnection: "

    .line 66
    .line 67
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v5, "EmailKeystoreService"

    .line 82
    .line 83
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_2
    new-instance v4, Landroid/os/UserHandle;

    .line 87
    .line 88
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    invoke-virtual {p0, v3, v2, v1, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    new-instance p1, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/security/IKeyChainService;

    .line 115
    .line 116
    invoke-direct {p1, p0, v2, v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;-><init>(Landroid/content/Context;Lcom/android/server/emailksproxy/EmailKeystoreService$1;Landroid/security/IKeyChainService;)V

    .line 117
    .line 118
    .line 119
    return-object p1

    .line 120
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    .line 121
    .line 122
    const-string p1, "Could not bind to KeyChainService"

    .line 123
    .line 124
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 129
    .line 130
    const-string/jumbo p1, "context == null"

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method


# virtual methods
.method public final getKeystoreStatus()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isCallerSignedByAndroid()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    sget-boolean p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const-string p0, "EmailKeystoreService"

    .line 14
    .line 15
    const-string/jumbo v0, "getKeystoreStatus returns: 1"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method public final grantAccessForAKS(ILjava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "grantAccessforAKS call setGrant : uid = "

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v2, "grantAccessForAKS()  uid = "

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " alias = "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v3, "EmailKeystoreService"

    .line 28
    .line 29
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    if-ne p1, v1, :cond_0

    .line 36
    .line 37
    goto :goto_5

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object p0, v1, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-interface {p0, p1, p2, v0}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :catch_1
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :catch_2
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :catch_3
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    .line 88
    .line 89
    .line 90
    :cond_1
    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :goto_0
    invoke-virtual {p0}, Ljava/lang/AssertionError;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :goto_3
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_4
    return-void

    .line 107
    :cond_2
    :goto_5
    const-string/jumbo p0, "grantAccessForAKS()   alias == null"

    .line 108
    .line 109
    .line 110
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isCallerSignedByAndroid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    const/4 p0, -0x2

    .line 12
    return p0

    .line 13
    :cond_1
    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->certs:[Ljava/security/cert/Certificate;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    array-length v2, p1

    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    aget-object v2, p1, v1

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->installCaCertificate([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    return v0

    .line 35
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0
.end method

.method public final installCaCertificate([B)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    const-string v1, "X.509"

    .line 8
    .line 9
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 14
    .line 15
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    sget-boolean p1, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string p1, "EmailKeystoreService"

    .line 31
    .line 32
    const-string v1, "CA Certificate parse error"

    .line 33
    .line 34
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "X.509"

    .line 46
    .line 47
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 52
    .line 53
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    sget-boolean p1, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const-string p1, "EmailKeystoreService"

    .line 73
    .line 74
    const-string v1, "CA Certificate successfully installed"

    .line 75
    .line 76
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    monitor-exit v0

    .line 80
    goto :goto_4

    .line 81
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    :catch_0
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :catch_1
    move-exception p1

    .line 86
    goto :goto_3

    .line 87
    :goto_2
    sget-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    const-string v0, "EmailKeystoreService"

    .line 92
    .line 93
    const-string v1, "CertificateException while installing CA Certificate"

    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :goto_3
    sget-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    const-string v0, "EmailKeystoreService"

    .line 107
    .line 108
    const-string v1, "IOException while installing CA Certificate"

    .line 109
    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :goto_4
    new-instance p1, Landroid/content/Intent;

    .line 117
    .line 118
    const-string v0, "android.security.STORAGE_CHANGED"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CI)I
    .locals 7

    .line 1
    const-string/jumbo v0, "installCertificateInAndroidKeyStore: "

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isCallerSignedByAndroid()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    const/4 p0, 0x4

    .line 16
    const/4 v2, 0x2

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    :try_start_0
    const-string v5, "PKCS12"

    .line 20
    .line 21
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget v6, p1, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    .line 26
    .line 27
    new-array v6, v6, [B

    .line 28
    .line 29
    iget-object p1, p1, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    .line 30
    .line 31
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 32
    .line 33
    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v6, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 44
    .line 45
    invoke-virtual {v5, p2, p3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-array p3, v1, [Ljava/security/cert/Certificate;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    sget-boolean p3, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    .line 56
    .line 57
    if-eqz p3, :cond_2

    .line 58
    .line 59
    const-string p3, "EmailKeystoreService"

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_7

    .line 83
    :catch_0
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception p0

    .line 86
    goto :goto_2

    .line 87
    :catch_2
    move-exception p1

    .line 88
    goto :goto_3

    .line 89
    :catch_3
    move-exception p0

    .line 90
    goto :goto_4

    .line 91
    :catch_4
    move-exception p0

    .line 92
    goto :goto_5

    .line 93
    :catch_5
    move-exception p0

    .line 94
    goto :goto_6

    .line 95
    :cond_2
    :goto_0
    const-string p3, "AndroidKeyStore"

    .line 96
    .line 97
    invoke-static {p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    const/4 p4, 0x0

    .line 102
    invoke-virtual {p3, p4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v5, p2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    invoke-virtual {p3, p2, p1, p4}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    const/4 p0, 0x0

    .line 120
    return p0

    .line 121
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    .line 126
    .line 127
    return p0

    .line 128
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    return p0

    .line 142
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    .line 144
    .line 145
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    const/4 p0, 0x3

    .line 149
    return p0

    .line 150
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    .line 152
    .line 153
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    .line 155
    .line 156
    return v2

    .line 157
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    .line 159
    .line 160
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    return v2

    .line 164
    :goto_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    .line 166
    .line 167
    throw p0
.end method

.method public final isAliasExists(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string/jumbo p0, "isAliasExists()"

    .line 2
    .line 3
    .line 4
    const-string v0, "EmailKeystoreService"

    .line 5
    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-boolean p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "isAliasExists:: calling uid : "

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 p0, 0x1

    .line 36
    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 37
    .line 38
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    const-string/jumbo p1, "isAliasExists:: returns SUCCESS"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    return p0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string/jumbo p1, "isAliasExists:: returns FAILURE"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return p0

    .line 69
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    return p0
.end method

.method public final isCallerSignedByAndroid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v1, "EmailKeystoreService"

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v2, "android"

    .line 26
    .line 27
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    const-string/jumbo p0, "isCallerSignedByAndroid()--true"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_0
    const-string/jumbo p0, "isCallerSignedByAndroid()--false"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0
.end method
