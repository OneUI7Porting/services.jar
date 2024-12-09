.class public final Lcom/android/server/enterprise/hdm/HdmService;
.super Lcom/samsung/android/knox/hdm/IHdmManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final hdmSoftwareBlock:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mHashImei:[B

.field public mImei0:Ljava/lang/String;

.field public mMacAddress:Ljava/lang/String;

.field public mSerialNumber:[B

.field public final vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/enterprise/hdm/HdmService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/hdm/IHdmManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->deferredServiceStarted:Z

    .line 26
    .line 27
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 28
    .line 29
    const-string v2, "/data/misc/hdm"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, v0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, v0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->restrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->initControlMap()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, v0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->supportedFunctionMap:Ljava/util/Map;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->initTargetSubSystems()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, v0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->targetSubSystems:I

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->isSwBlockEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput-boolean v1, v0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->swBlockEnabled:Z

    .line 72
    .line 73
    const-string/jumbo v1, "sys.hdm.double.protection.subsystem"

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception p1

    .line 85
    const-string v1, "HdmSoftwareBlock failed: "

    .line 86
    .line 87
    const-string v2, "HDM - HdmSoftwareBlock"

    .line 88
    .line 89
    invoke-static {p1, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->hdmSoftwareBlock:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 93
    .line 94
    new-instance p1, Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 95
    .line 96
    invoke-direct {p1}, Lcom/android/server/enterprise/hdm/HdmVendorController;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 100
    .line 101
    const-string p0, "HDM - HdmService"

    .line 102
    .line 103
    const-string p1, "HdmService.java instantiated"

    .line 104
    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static validateParameter(ILjava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ge p1, p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method


# virtual methods
.method public final deleteHdmKey()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Hdm - VendorInterface"

    .line 7
    .line 8
    const-string/jumbo v1, "hdmDeleteKeys using ISehKhdm: "

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdm_delete_keys()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->getService()Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 27
    .line 28
    invoke-virtual {p0}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->deleteKey()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v2, "hdmDeleteKeys failed: "

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    const/4 p0, -0x1

    .line 67
    :goto_1
    if-nez p0, :cond_1

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    const/4 p0, 0x0

    .line 72
    :goto_2
    return p0
.end method

.method public final enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_HDM"

    .line 18
    .line 19
    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final generateHdmKey()[B
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/hdm/HdmSakManager;->isSupported(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "HDM - HdmSakManager"

    .line 11
    .line 12
    const-string/jumbo v0, "serviceId: "

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v2, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    iput-object v3, v2, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;

    .line 22
    .line 23
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmSakManager;->genKeySpec()Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->generateKeyPair(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)Lcom/samsung/security/securekeyblob/SecureKeyResult;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, v2, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mServiceKey:[B

    .line 35
    .line 36
    iget-object v4, v2, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mCertificates:[Ljava/security/cert/X509Certificate;

    .line 37
    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mServiceID:[B

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ", certLen: "

    .line 54
    .line 55
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    array-length v0, v4

    .line 59
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", keyLen: "

    .line 63
    .line 64
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    array-length v0, v3

    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-static {v4, v3}, Lcom/android/server/enterprise/hdm/HdmSakManager;->constructTLV([Ljava/security/cert/X509Certificate;[B)[B

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v3, "generateHdmKey failed: "

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {p0, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    :goto_0
    return-object v1

    .line 103
    :cond_0
    const-string v0, "Generate HDM key"

    .line 104
    .line 105
    const-string v2, "HDM - HdmService"

    .line 106
    .line 107
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    const/4 v5, 0x1

    .line 126
    const/4 v6, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 128
    .line 129
    const-string p0, "DRK failed in isAliveDeviceRootKeyService()"

    .line 130
    .line 131
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v0, v5}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-nez p0, :cond_2

    .line 140
    .line 141
    const-string p0, "DRK failed in isExistDeviceRootKey()"

    .line 142
    .line 143
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    move v6, v5

    .line 148
    :goto_1
    const-string p0, "HDM"

    .line 149
    .line 150
    if-eqz v6, :cond_3

    .line 151
    .line 152
    :try_start_2
    invoke-virtual {v0, p0, v5, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    goto :goto_3

    .line 157
    :catch_1
    move-exception p0

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    const-string/jumbo v6, "generateHdmKey(): DRK is not valid but try to generate"

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p0, v5, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    .line 166
    .line 167
    .line 168
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 169
    goto :goto_3

    .line 170
    :goto_2
    const-string/jumbo v0, "drk request failed: "

    .line 171
    .line 172
    .line 173
    invoke-static {p0, v0, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move-object p0, v1

    .line 177
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    .line 179
    .line 180
    if-eqz p0, :cond_5

    .line 181
    .line 182
    array-length v0, p0

    .line 183
    if-nez v0, :cond_4

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_4
    return-object p0

    .line 187
    :cond_5
    :goto_4
    return-object v1
.end method

.method public final declared-synchronized getHdmId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "HDM - HdmService"

    .line 3
    .line 4
    const-string/jumbo v1, "getHdmId() on HdmService.java"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x5f

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(ILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const-string p1, "HDM - HdmService"

    .line 23
    .line 24
    const-string/jumbo p2, "parameter check failed"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setImeis()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setMacAddress()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object p1, v0

    .line 68
    :goto_0
    if-eqz p1, :cond_f

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmLoad()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    const-string p1, "HDM - HdmService"

    .line 87
    .line 88
    const-string/jumbo p2, "hdm_load failure"

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-object v0

    .line 96
    :cond_4
    :try_start_2
    const-string v1, "HDM - HdmService"

    .line 97
    .line 98
    const-string/jumbo v2, "checking whether key is saved"

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmGetKey()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v3, 0x1

    .line 112
    if-nez v1, :cond_5

    .line 113
    .line 114
    move v1, v3

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    move v1, v2

    .line 117
    :goto_1
    if-nez v1, :cond_7

    .line 118
    .line 119
    const-string v4, "HDM - HdmService"

    .line 120
    .line 121
    const-string/jumbo v5, "no key, generate"

    .line 122
    .line 123
    .line 124
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->generateHdmKey()[B

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    iget-object v5, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 134
    .line 135
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmSetKey([B)I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_8

    .line 140
    .line 141
    const-string v5, "HDM - HdmService"

    .line 142
    .line 143
    const-string v6, "Failed to write DRK"

    .line 144
    .line 145
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    const-string v5, "HDM - HdmService"

    .line 150
    .line 151
    const-string/jumbo v6, "generateHdmKey returned null"

    .line 152
    .line 153
    .line 154
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    const-string v2, "HDM - HdmService"

    .line 159
    .line 160
    const-string/jumbo v4, "found key, no need to generate"

    .line 161
    .line 162
    .line 163
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-object v4, v0

    .line 167
    move v2, v3

    .line 168
    :cond_8
    :goto_2
    if-nez v1, :cond_a

    .line 169
    .line 170
    if-nez v4, :cond_a

    .line 171
    .line 172
    const-string p1, "HDM - HdmService"

    .line 173
    .line 174
    const-string/jumbo p2, "wrappedKey is null, delete HDM key for a new try"

    .line 175
    .line 176
    .line 177
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_9

    .line 185
    .line 186
    const-string p1, "HDM - HdmService"

    .line 187
    .line 188
    const-string/jumbo p2, "deleteHdmKey failure"

    .line 189
    .line 190
    .line 191
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    :cond_9
    move-object p1, v0

    .line 195
    goto :goto_3

    .line 196
    :cond_a
    const-string v1, "HDM - HdmService"

    .line 197
    .line 198
    const-string v4, "HDM TLC call!"

    .line 199
    .line 200
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 204
    .line 205
    .line 206
    move-result-wide v4

    .line 207
    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 208
    .line 209
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmGetId(Z[B[B)[B

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    .line 231
    .line 232
    :goto_3
    iget-object p2, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmUnload()I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    if-eqz p2, :cond_b

    .line 239
    .line 240
    const-string p2, "HDM - HdmService"

    .line 241
    .line 242
    const-string/jumbo v1, "hdm_unload failure"

    .line 243
    .line 244
    .line 245
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    :cond_b
    if-nez v2, :cond_c

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->releaseDrk()V

    .line 251
    .line 252
    .line 253
    :cond_c
    if-nez p1, :cond_d

    .line 254
    .line 255
    const-string p2, "HDM - HdmService"

    .line 256
    .line 257
    const-string/jumbo v1, "hdm_get_id Fail"

    .line 258
    .line 259
    .line 260
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-nez p2, :cond_d

    .line 268
    .line 269
    const-string p2, "HDM - HdmService"

    .line 270
    .line 271
    const-string/jumbo v1, "deleteHdmKey failure"

    .line 272
    .line 273
    .line 274
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :cond_d
    if-eqz p1, :cond_e

    .line 278
    .line 279
    array-length p2, p1

    .line 280
    if-le p2, v3, :cond_e

    .line 281
    .line 282
    new-instance p2, Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    .line 290
    .line 291
    monitor-exit p0

    .line 292
    return-object p2

    .line 293
    :cond_e
    monitor-exit p0

    .line 294
    return-object v0

    .line 295
    :cond_f
    :goto_4
    :try_start_3
    const-string p1, "HDM - HdmService"

    .line 296
    .line 297
    const-string/jumbo p2, "getHdmId Fail to get device ID"

    .line 298
    .line 299
    .line 300
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    .line 302
    .line 303
    monitor-exit p0

    .line 304
    return-object v0

    .line 305
    :goto_5
    monitor-exit p0

    .line 306
    throw p1
.end method

.method public final declared-synchronized getHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "HDM - HdmService"

    const-string/jumbo v1, "getHdmPolicy() on HdmService.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/hdm/HdmService;->getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "getPolicy failed: "

    monitor-enter p0

    const/16 v1, 0x5f

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {v1, p1}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    const-string p1, "HDM - HdmService"

    const-string/jumbo p2, "parameter check failed for requestId"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x28

    .line 7
    :try_start_1
    invoke-static {v1, p2}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    const-string p1, "HDM - HdmService"

    const-string/jumbo p2, "parameter check failed for serviceName"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object v2

    .line 10
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    invoke-virtual {v1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmLoad()I

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    const-string p1, "HDM - HdmService"

    const-string/jumbo p2, "hdm_load failure"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return-object v2

    .line 13
    :cond_2
    :try_start_3
    const-string v1, "HDM - HdmService"

    const-string/jumbo v3, "checking whether key is saved"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    invoke-virtual {v1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmGetKey()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_0

    .line 15
    :cond_3
    const-string v1, "HDM - HdmService"

    const-string/jumbo v4, "no key, generate"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->generateHdmKey()[B

    move-result-object v1

    if-eqz v1, :cond_8

    .line 17
    iget-object v4, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmSetKey([B)I

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    const-string v1, "HDM - HdmService"

    const-string v4, "Failed to write DRK"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 20
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 21
    invoke-virtual {v4, v1, p1, p2}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmGetPolicy(Z[B[B)[B

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    invoke-virtual {p2}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmUnload()I

    move-result p2

    if-eqz p2, :cond_5

    .line 23
    const-string p2, "HDM - HdmService"

    const-string/jumbo v4, "hdm_unload failure"

    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v1, :cond_6

    .line 24
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->releaseDrk()V

    :cond_6
    if-eqz p1, :cond_7

    .line 25
    array-length p2, p1

    if-le p2, v3, :cond_7

    .line 26
    new-instance p2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p2

    .line 27
    :cond_7
    :try_start_4
    const-string p1, "HDM - HdmService"

    const-string/jumbo p2, "response == null or len <= 1"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 28
    :cond_8
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    invoke-virtual {p1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmUnload()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    monitor-exit p0

    return-object v2

    .line 30
    :goto_1
    :try_start_5
    const-string p2, "HDM - HdmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 31
    :goto_2
    monitor-exit p0

    return-object v2

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized isNFCBlockedByHDM(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "HDM - HdmService"

    .line 3
    .line 4
    const-string/jumbo v1, "isNFCBlockedByHDM() on HdmService.java: "

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 23
    .line 24
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_HDM"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->hdmSoftwareBlock:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 31
    .line 32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "HDMFW"

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/hdm/HdmService;->getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v1, "HDM - HdmSoftwareBlock"

    .line 50
    .line 51
    const-string/jumbo v2, "nfc is blocked: "
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_1
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->getAppliedHdmPolicy([B)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    and-int/lit8 v3, v0, 0x40

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    iget p1, p1, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->targetSubSystems:I

    .line 69
    .line 70
    and-int/lit8 p1, p1, 0x40

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x1

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    :try_start_2
    const-string/jumbo v0, "isNFCBlockedByHDM failed: "

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_1
    const/4 p1, 0x0

    .line 99
    :goto_0
    monitor-exit p0

    .line 100
    return p1

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    monitor-exit p0

    .line 103
    throw p1
.end method

.method public final declared-synchronized isSwBlockEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "HDM - HdmService"

    .line 3
    .line 4
    const-string/jumbo v1, "isSwBlockEnabled() on HdmService.java"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 23
    .line 24
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_HDM"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->hdmSoftwareBlock:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->isSwBlockEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    return p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0

    .line 40
    throw p1
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

.method public final releaseDrk()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/hdm/HdmSakManager;->isSupported(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "HDM - HdmService"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "ignore releaseDrk for sak model"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const-string/jumbo v0, "failure releasing drk service: "

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final declared-synchronized setHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "afterSoftwareBlockResult: "

    .line 6
    .line 7
    const-string/jumbo v3, "beforeSoftwareBlockResult: "

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    const-string v4, "HDM - HdmService"

    .line 12
    .line 13
    const-string/jumbo v5, "setHdmPolicy() on HdmService.java"

    .line 14
    .line 15
    .line 16
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 20
    .line 21
    .line 22
    const/16 v4, 0x2000

    .line 23
    .line 24
    invoke-static {v4, v0}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(ILjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    const-string v0, "HDM - HdmService"

    .line 32
    .line 33
    const-string/jumbo v2, "parameter check failed"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-object v5

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->setNwdInfo()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    const-string v4, "HDM - HdmService"

    .line 51
    .line 52
    const-string/jumbo v6, "setNwdInfo failed"

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v4, v1, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmLoad()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    const-string v0, "HDM - HdmService"

    .line 67
    .line 68
    const-string/jumbo v2, "hdm_load failure"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-object v5

    .line 76
    :cond_2
    :try_start_2
    const-string v4, "HDM - HdmService"

    .line 77
    .line 78
    const-string/jumbo v6, "checking whether key is saved"

    .line 79
    .line 80
    .line 81
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object v4, v1, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmGetKey()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x1

    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    move v4, v7

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move v4, v6

    .line 97
    :goto_0
    if-nez v4, :cond_5

    .line 98
    .line 99
    const-string v8, "HDM - HdmService"

    .line 100
    .line 101
    const-string/jumbo v9, "no key, generate"

    .line 102
    .line 103
    .line 104
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->generateHdmKey()[B

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-eqz v8, :cond_4

    .line 112
    .line 113
    iget-object v9, v1, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 114
    .line 115
    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmSetKey([B)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-eqz v9, :cond_6

    .line 120
    .line 121
    const-string v9, "HDM - HdmService"

    .line 122
    .line 123
    const-string v10, "Failed to write DRK"

    .line 124
    .line 125
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    const-string v9, "HDM - HdmService"

    .line 130
    .line 131
    const-string/jumbo v10, "generateHdmKey returned null"

    .line 132
    .line 133
    .line 134
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    const-string v6, "HDM - HdmService"

    .line 139
    .line 140
    const-string/jumbo v8, "found key, no need to generate"

    .line 141
    .line 142
    .line 143
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-object v8, v5

    .line 147
    move v6, v7

    .line 148
    :cond_6
    :goto_1
    if-nez v4, :cond_8

    .line 149
    .line 150
    if-nez v8, :cond_8

    .line 151
    .line 152
    const-string v0, "HDM - HdmService"

    .line 153
    .line 154
    const-string/jumbo v2, "wrappedKey is null, delete HDM key for a new try"

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_7

    .line 165
    .line 166
    const-string v0, "HDM - HdmService"

    .line 167
    .line 168
    const-string/jumbo v2, "deleteHdmKey failure"

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :cond_7
    move-object v3, v5

    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :cond_8
    const-string v4, "HDM - HdmService"

    .line 178
    .line 179
    const-string v8, "HDM TLC call!"

    .line 180
    .line 181
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 185
    .line 186
    .line 187
    move-result-wide v16

    .line 188
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    iget-object v8, v1, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 193
    .line 194
    if-nez v8, :cond_9

    .line 195
    .line 196
    const-string v8, ""

    .line 197
    .line 198
    :cond_9
    invoke-virtual {v8, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    move-object v12, v8

    .line 203
    iget-object v8, v1, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 204
    .line 205
    if-nez v8, :cond_a

    .line 206
    .line 207
    const-string v8, ""

    .line 208
    .line 209
    :cond_a
    invoke-virtual {v8, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    move-object v14, v8

    .line 214
    iget-object v8, v1, Lcom/android/server/enterprise/hdm/HdmService;->hdmSoftwareBlock:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 215
    .line 216
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->handleSoftwareBlockBefore([B)I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    const-string v9, "HDM - HdmService"

    .line 225
    .line 226
    new-instance v10, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    iget-object v9, v1, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 242
    .line 243
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    iget-object v11, v1, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    .line 248
    .line 249
    iget-object v13, v1, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 250
    .line 251
    move v15, v6

    .line 252
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmApplyPolicy([B[B[B[B[BZ)[B

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    iget-object v0, v1, Lcom/android/server/enterprise/hdm/HdmService;->hdmSoftwareBlock:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    .line 260
    .line 261
    :try_start_3
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->getAppliedHdmPolicy([B)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    invoke-virtual {v0, v4, v7}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->applySwBlock(IZ)I

    .line 266
    .line 267
    .line 268
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    goto :goto_2

    .line 270
    :catch_0
    move-exception v0

    .line 271
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string/jumbo v8, "handleSoftwareBlockAfter failed: "

    .line 274
    .line 275
    .line 276
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const-string v4, "HDM - HdmSoftwareBlock"

    .line 287
    .line 288
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    const/4 v0, -0x1

    .line 292
    :goto_2
    const-string v4, "HDM - HdmService"

    .line 293
    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    .line 311
    .line 312
    :goto_3
    iget-object v0, v1, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmUnload()I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_b

    .line 319
    .line 320
    const-string v0, "HDM - HdmService"

    .line 321
    .line 322
    const-string/jumbo v2, "hdm_unload failure"

    .line 323
    .line 324
    .line 325
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    :cond_b
    if-nez v6, :cond_c

    .line 329
    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->releaseDrk()V

    .line 331
    .line 332
    .line 333
    :cond_c
    if-nez v3, :cond_d

    .line 334
    .line 335
    const-string v0, "HDM - HdmService"

    .line 336
    .line 337
    const-string/jumbo v2, "hdm_apply_policy Fail"

    .line 338
    .line 339
    .line 340
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-nez v0, :cond_d

    .line 348
    .line 349
    const-string v0, "HDM - HdmService"

    .line 350
    .line 351
    const-string/jumbo v2, "deleteHdmKey failure"

    .line 352
    .line 353
    .line 354
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    :cond_d
    if-eqz v3, :cond_e

    .line 358
    .line 359
    array-length v0, v3

    .line 360
    if-le v0, v7, :cond_e

    .line 361
    .line 362
    new-instance v0, Ljava/lang/String;

    .line 363
    .line 364
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-direct {v0, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 369
    .line 370
    .line 371
    monitor-exit p0

    .line 372
    return-object v0

    .line 373
    :cond_e
    monitor-exit p0

    .line 374
    return-object v5

    .line 375
    :goto_4
    monitor-exit p0

    .line 376
    throw v0
.end method

.method public final declared-synchronized setHdmTaCmd(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "HDM - HdmService"

    .line 3
    .line 4
    const-string/jumbo v1, "setHdmTaCmd() on HdmService.java"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 23
    .line 24
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_HDM"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmLoad()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const-string p1, "HDM - HdmService"

    .line 39
    .line 40
    const-string/jumbo p2, "hdm_load failure"

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    const/4 p0, -0x1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :try_start_1
    const-string p1, "HDM - HdmService"

    .line 52
    .line 53
    const-string v0, "HDM TLC call!"

    .line 54
    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmKgCmd(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/server/enterprise/hdm/HdmService;->vendorController:Lcom/android/server/enterprise/hdm/HdmVendorController;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdmUnload()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    const-string p2, "HDM - HdmService"

    .line 80
    .line 81
    const-string/jumbo v0, "hdm_unload failure"

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_2
    monitor-exit p0

    .line 88
    return p1

    .line 89
    :goto_0
    monitor-exit p0

    .line 90
    throw p1
.end method

.method public final setImeis()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v3, "phone"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPrimaryImei()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPrimaryImei()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v3, "failed to get info: "

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v2, "HDM - HdmService"

    .line 48
    .line 49
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final setMacAddress()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v3, "sem_wifi"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "HDM - HdmService"

    .line 26
    .line 27
    const-string/jumbo v2, "setMacAddress is failed on SemWifiManager"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final setNwdInfo()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setImeis()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HDM - HdmSakManager"

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/android/server/enterprise/hdm/HdmSakManager;->isSupported(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    const-string v5, "HDM - HdmService"

    .line 18
    .line 19
    const-string v6, ""

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    const-string/jumbo v3, "calculate hashed info"

    .line 25
    .line 26
    .line 27
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    :try_start_0
    const-string/jumbo v8, "ro.carrier"

    .line 33
    .line 34
    .line 35
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    const-string/jumbo v9, "wifi-only"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_1

    .line 51
    .line 52
    const-string/jumbo v8, "ro.radio.noril"

    .line 53
    .line 54
    .line 55
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const-string/jumbo v9, "yes"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v3}, Lcom/android/server/enterprise/hdm/HdmSakManager;->getImeiHash(Landroid/content/Context;)[B

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    goto :goto_3

    .line 78
    :catch_0
    move-exception v3

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    :goto_0
    const-string/jumbo v8, "sem_wifi"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/samsung/android/wifi/SemWifiManager;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 96
    .line 97
    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move-object v3, v7

    .line 103
    :goto_1
    invoke-static {v3, v7}, Lcom/android/server/enterprise/hdm/HdmSakManager;->hash([B[B)[B

    .line 104
    .line 105
    .line 106
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_3

    .line 108
    :goto_2
    const-string/jumbo v8, "getHashedImei failed: "

    .line 109
    .line 110
    .line 111
    invoke-static {v3, v8, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v3, v7

    .line 115
    :goto_3
    iput-object v3, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 116
    .line 117
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmSakManager;->getUniqueNumber()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 124
    .line 125
    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    goto :goto_4

    .line 130
    :catch_1
    move-exception v3

    .line 131
    goto :goto_5

    .line 132
    :cond_3
    move-object v3, v7

    .line 133
    :goto_4
    invoke-static {v3, v7}, Lcom/android/server/enterprise/hdm/HdmSakManager;->hash([B[B)[B

    .line 134
    .line 135
    .line 136
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    goto :goto_6

    .line 138
    :goto_5
    const-string/jumbo v8, "getHashedUniqueNumber failed: "

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v8, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_6
    iput-object v7, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_4
    const-string/jumbo v0, "get hashed info from DRK"

    .line 148
    .line 149
    .line 150
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 154
    .line 155
    iget-object v3, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-direct {v0, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_5

    .line 165
    .line 166
    const-string v0, "DRK failed in isAliveDeviceRootKeyService()"

    .line 167
    .line 168
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_5
    invoke-virtual {v0, v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_6

    .line 177
    .line 178
    const-string v0, "DRK failed in isExistDeviceRootKey()"

    .line 179
    .line 180
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    :goto_7
    const-string/jumbo v0, "setHashImeiAndSerial(): DRK is not valid"

    .line 184
    .line 185
    .line 186
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_6
    const/16 v3, 0xc

    .line 191
    .line 192
    invoke-virtual {v0, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    :goto_8
    if-eqz v7, :cond_7

    .line 197
    .line 198
    invoke-virtual {v7}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->getImei()[B

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 203
    .line 204
    invoke-virtual {v7}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->getSerial()[B

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    .line 209
    .line 210
    const-string/jumbo v0, "mSerialNumber calculated"

    .line 211
    .line 212
    .line 213
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_7
    :goto_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    .line 220
    .line 221
    const/4 v1, 0x0

    .line 222
    if-nez v0, :cond_8

    .line 223
    .line 224
    const-string/jumbo p0, "setNwdInfo failed for sn"

    .line 225
    .line 226
    .line 227
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    return v1

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_9

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setMacAddress()V

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_9

    .line 249
    .line 250
    const-string/jumbo p0, "setNwdInfo failed for mac"

    .line 251
    .line 252
    .line 253
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    return v1

    .line 257
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 258
    .line 259
    if-nez p0, :cond_a

    .line 260
    .line 261
    const-string/jumbo p0, "setNwdInfo failed for hashed"

    .line 262
    .line 263
    .line 264
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    return v1

    .line 268
    :cond_a
    return v4
.end method

.method public final declared-synchronized setSwBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "setSwBlock() on HdmService.java: "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "HDM - HdmService"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 35
    .line 36
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_HDM"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->hdmSoftwareBlock:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->setSwBlock(Z)Z

    .line 45
    .line 46
    .line 47
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    .line 49
    return p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit p0

    .line 52
    throw p1
.end method

.method public final declared-synchronized syncSwBlockFromBoot()I
    .locals 5

    .line 1
    const-string/jumbo v0, "invalid caller: "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "invalid caller uid: "

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v2, "HDM - HdmService"

    .line 9
    .line 10
    const-string/jumbo v3, "syncSwBlockFromBoot() on HdmService.java: "

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x3e8

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    const-string v0, "HDM - HdmService"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return v4

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const-string v2, "HDM - HdmService"

    .line 55
    .line 56
    const-string/jumbo v3, "getCallerPackageName"

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const-string v3, "activity"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/app/ActivityManager;

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    :try_start_3
    const-string/jumbo v2, "com.samsung.android.hdmapp"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_1

    .line 86
    .line 87
    const-string v2, "HDM - HdmService"

    .line 88
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .line 103
    .line 104
    monitor-exit p0

    .line 105
    const/4 p0, -0x2

    .line 106
    return p0

    .line 107
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->hdmSoftwareBlock:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 108
    .line 109
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "HDMFW"

    .line 118
    .line 119
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/hdm/HdmService;->getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    .line 125
    .line 126
    :try_start_5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->getAppliedHdmPolicy([B)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->applySwBlock(IZ)I

    .line 138
    .line 139
    .line 140
    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    goto :goto_1

    .line 142
    :catch_1
    move-exception v0

    .line 143
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string/jumbo v2, "syncSwBlockFromBoot failed: "

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "HDM - HdmSoftwareBlock"

    .line 159
    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 161
    .line 162
    .line 163
    :goto_1
    monitor-exit p0

    .line 164
    return v4

    .line 165
    :goto_2
    monitor-exit p0

    .line 166
    throw v0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
