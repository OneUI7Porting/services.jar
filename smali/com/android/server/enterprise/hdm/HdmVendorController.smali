.class public Lcom/android/server/enterprise/hdm/HdmVendorController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final hidlSupport:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const-string v0, "Hdm - VendorInterface"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "34"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string/jumbo v2, "isAidlServiceDeclared: "

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string/jumbo v3, "vendor.samsung.hardware.khdm.ISehKhdm/default"

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v4, "isAidlServiceDeclared failed: "

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    :goto_0
    xor-int/lit8 v2, v3, 0x1

    .line 59
    .line 60
    iput-boolean v2, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 61
    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string/jumbo v3, "apiLevel: "

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", hidlSupport: "

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static getService()Lvendor/samsung/hardware/khdm/ISehKhdm;
    .locals 3

    .line 1
    const-string/jumbo v0, "vendor.samsung.hardware.khdm.ISehKhdm/default"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub;->$r8$clinit:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lvendor/samsung/hardware/khdm/ISehKhdm;->DESCRIPTOR:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    instance-of v2, v1, Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    check-cast v0, Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, v1, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :goto_0
    return-object v0
.end method

.method public static native hdm_apply_policy([B[B[B[B[BZ)[B
.end method

.method public static native hdm_delete_keys()I
.end method

.method public static native hdm_get_id([B[BZ)[B
.end method

.method public static native hdm_get_key()I
.end method

.method public static native hdm_get_policy(Z[B[B)[B
.end method

.method public static native hdm_kg_cmd(I)I
.end method

.method public static native hdm_load()I
.end method

.method public static native hdm_set_key([B)I
.end method

.method public static native hdm_unload()I
.end method

.method public static parseDeviceResponse(ILjava/lang/String;[B)[B
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " using ISehKhdm: len: "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "Hdm - VendorInterface"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/16 p1, 0xa

    .line 27
    .line 28
    if-ge p0, p1, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_0
    new-array p1, p0, [B

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p2, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method


# virtual methods
.method public final hdmApplyPolicy([B[B[B[B[BZ)[B
    .locals 6

    .line 1
    const-string v0, "Hdm - VendorInterface"

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v1, "hdmApplyPolicy policy: "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static/range {p1 .. p6}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdm_apply_policy([B[B[B[B[BZ)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 p0, 0x3a98

    .line 21
    .line 22
    new-array p0, p0, [B

    .line 23
    .line 24
    new-instance v1, Lvendor/samsung/hardware/khdm/SehDeviceInfo;

    .line 25
    .line 26
    invoke-direct {v1}, Lvendor/samsung/hardware/khdm/SehDeviceInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    const/16 v2, 0x80

    .line 30
    .line 31
    new-array v3, v2, [B

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    array-length v5, p2

    .line 37
    invoke-static {p2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iput-object v3, v1, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->serialNumber:[B

    .line 41
    .line 42
    new-array p2, v2, [B

    .line 43
    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    array-length v3, p3

    .line 47
    invoke-static {p3, v4, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iput-object p2, v1, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->imei0:[B

    .line 51
    .line 52
    new-array p2, v2, [B

    .line 53
    .line 54
    if-eqz p4, :cond_3

    .line 55
    .line 56
    array-length p3, p4

    .line 57
    invoke-static {p4, v4, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iput-object p2, v1, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->hashedImei:[B

    .line 61
    .line 62
    new-array p2, v2, [B

    .line 63
    .line 64
    if-eqz p5, :cond_4

    .line 65
    .line 66
    array-length p3, p5

    .line 67
    invoke-static {p5, v4, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iput-object p2, v1, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->macAddr:[B

    .line 71
    .line 72
    iput-boolean p6, v1, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->isWrappedKey:Z

    .line 73
    .line 74
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->getService()Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 79
    .line 80
    invoke-virtual {p2, p1, v1, p0}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->applyPolicy([BLvendor/samsung/hardware/khdm/SehDeviceInfo;[B)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const-string/jumbo p2, "hdmApplyPolicy"

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2, p0}, Lcom/android/server/enterprise/hdm/HdmVendorController;->parseDeviceResponse(ILjava/lang/String;[B)[B

    .line 88
    .line 89
    .line 90
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-object p0

    .line 92
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo p2, "hdmApplyPolicy failed: "

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    const/4 p0, 0x0

    .line 111
    return-object p0
.end method

.method public final hdmGetId(Z[B[B)[B
    .locals 7

    .line 1
    const-string/jumbo v0, "hdmGetId"

    .line 2
    .line 3
    .line 4
    const-string v1, "Hdm - VendorInterface"

    .line 5
    .line 6
    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p2, p3, p1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdm_get_id([B[BZ)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 p0, 0x3a98

    .line 21
    .line 22
    new-array p0, p0, [B

    .line 23
    .line 24
    new-instance v2, Lvendor/samsung/hardware/khdm/SehDeviceInfo;

    .line 25
    .line 26
    invoke-direct {v2}, Lvendor/samsung/hardware/khdm/SehDeviceInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    const/16 v3, 0x80

    .line 30
    .line 31
    new-array v4, v3, [B

    .line 32
    .line 33
    iput-object v4, v2, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->serialNumber:[B

    .line 34
    .line 35
    new-array v4, v3, [B

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    array-length v6, p2

    .line 41
    invoke-static {p2, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iput-object v4, v2, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->imei0:[B

    .line 45
    .line 46
    new-array p2, v3, [B

    .line 47
    .line 48
    iput-object p2, v2, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->hashedImei:[B

    .line 49
    .line 50
    new-array p2, v3, [B

    .line 51
    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    array-length v3, p3

    .line 55
    invoke-static {p3, v5, p2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iput-object p2, v2, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->macAddr:[B

    .line 59
    .line 60
    iput-boolean p1, v2, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->isWrappedKey:Z

    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->getService()Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 67
    .line 68
    invoke-virtual {p1, v2, p0}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->getDeviceId(Lvendor/samsung/hardware/khdm/SehDeviceInfo;[B)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p1, v0, p0}, Lcom/android/server/enterprise/hdm/HdmVendorController;->parseDeviceResponse(ILjava/lang/String;[B)[B

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object p0

    .line 77
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string/jumbo p2, "hdmGetId failed: "

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return-object p0
.end method

.method public final hdmGetKey()I
    .locals 3

    .line 1
    const-string v0, "Hdm - VendorInterface"

    .line 2
    .line 3
    const-string/jumbo v1, "hdmGetKey using ISehKhdm: "

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdm_get_key()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->getService()Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 22
    .line 23
    invoke-virtual {p0}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->checkKey()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v2, "checkKey failed: "

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    const/4 p0, -0x1

    .line 62
    return p0
.end method

.method public final hdmGetPolicy(Z[B[B)[B
    .locals 1

    .line 1
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdm_get_policy(Z[B[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 p0, 0x3a98

    .line 13
    .line 14
    new-array p0, p0, [B

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->getService()Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3, p0}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->getPolicy(Z[B[B[B)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const-string/jumbo p2, "hdmGetPolicy"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2, p0}, Lcom/android/server/enterprise/hdm/HdmVendorController;->parseDeviceResponse(ILjava/lang/String;[B)[B

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object p0

    .line 34
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo p2, "hdmGetPolicy failed: "

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "Hdm - VendorInterface"

    .line 50
    .line 51
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public final hdmKgCmd(I)I
    .locals 3

    .line 1
    const-string v0, "Hdm - VendorInterface"

    .line 2
    .line 3
    const-string/jumbo v1, "hdmKgCmd using ISehKhdm: "

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdm_kg_cmd(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->getService()Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->executeHdmCmd(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->terminate()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :cond_1
    return p1

    .line 48
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v1, "hdmKgCmd failed: "

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    const/4 p0, -0x1

    .line 67
    return p0
.end method

.method public final hdmLoad()I
    .locals 4

    .line 1
    const-string v0, "Hdm - VendorInterface"

    .line 2
    .line 3
    const-string/jumbo v1, "hdmLoad using ISehKhdm: "

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdm_load()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->getService()Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 22
    .line 23
    invoke-virtual {p0}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->initiate()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->terminate()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :cond_1
    return v2

    .line 48
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v2, "hdmLoad failed: "

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
    return p0
.end method

.method public final hdmSetKey([B)I
    .locals 2

    .line 1
    const-string v0, "Hdm - VendorInterface"

    .line 2
    .line 3
    const-string/jumbo v1, "hdmSetKey using ISehKhdm: "

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdm_set_key([B)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->getService()Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->setKey([B)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v1, "hdmSetKey failed: "

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    const/4 p0, -0x1

    .line 62
    return p0
.end method

.method public final hdmUnload()I
    .locals 3

    .line 1
    const-string v0, "Hdm - VendorInterface"

    .line 2
    .line 3
    const-string/jumbo v1, "hdmUnload using ISehKhdm: "

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/enterprise/hdm/HdmVendorController;->hidlSupport:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->hdm_unload()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmVendorController;->getService()Lvendor/samsung/hardware/khdm/ISehKhdm;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;

    .line 22
    .line 23
    invoke-virtual {p0}, Lvendor/samsung/hardware/khdm/ISehKhdm$Stub$Proxy;->terminate()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v2, "hdmUnload failed: "

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    const/4 p0, -0x1

    .line 62
    return p0
.end method
