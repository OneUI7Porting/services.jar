.class public final Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;
.super Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final algorithmMap:Ljava/util/HashMap;

.field public static final algorithmSet:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmMap:Ljava/util/HashMap;

    .line 7
    .line 8
    const/16 v1, 0x12

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "md5withrsa"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0xf

    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    fill-array-data v1, :array_1

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "sha1withrsa"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x13

    .line 35
    .line 36
    new-array v2, v1, [B

    .line 37
    .line 38
    fill-array-data v2, :array_2

    .line 39
    .line 40
    .line 41
    const-string/jumbo v3, "sha224withrsa"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-array v2, v1, [B

    .line 48
    .line 49
    fill-array-data v2, :array_3

    .line 50
    .line 51
    .line 52
    const-string/jumbo v3, "sha256withrsa"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    new-array v2, v1, [B

    .line 59
    .line 60
    fill-array-data v2, :array_4

    .line 61
    .line 62
    .line 63
    const-string/jumbo v3, "sha384withrsa"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    new-array v1, v1, [B

    .line 70
    .line 71
    fill-array-data v1, :array_5

    .line 72
    .line 73
    .line 74
    const-string/jumbo v2, "sha512withrsa"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance v1, Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 83
    .line 84
    .line 85
    sput-object v1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmSet:Ljava/util/HashSet;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :array_0
    .array-data 1
        0x30t
        0x20t
        0x30t
        0xct
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x5t
        0x5t
        0x0t
        0x4t
        0x10t
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    nop

    .line 109
    :array_1
    .array-data 1
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    :array_2
    .array-data 1
        0x30t
        0x2dt
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x1ct
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x31t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x1t
        0x5t
        0x0t
        0x4t
        0x20t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x41t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x2t
        0x5t
        0x0t
        0x4t
        0x30t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x51t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x3t
        0x5t
        0x0t
        0x4t
        0x40t
    .end array-data
.end method


# virtual methods
.method public final getProcessAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "RSA/ECB/PKCS1Padding"

    .line 2
    .line 3
    return-object p0
.end method

.method public final processInput([B)[B
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmMap:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->algorithm:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [B

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->getMdAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    array-length p1, v0

    .line 33
    array-length v1, p0

    .line 34
    add-int/2addr p1, v1

    .line 35
    new-array p1, p1, [B

    .line 36
    .line 37
    array-length v1, v0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    array-length v0, v0

    .line 43
    array-length v1, p0

    .line 44
    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method
