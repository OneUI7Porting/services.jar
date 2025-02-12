.class public Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private final mInformationElements:Ljava/util/List;

.field private final mSsid:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$smconvertToByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->convertToByteArray(Ljava/nio/ByteBuffer;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "ssid must not be null."

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "bssid must not be null."

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 30
    .line 31
    return-void
.end method

.method private static convertToByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :catch_0
    :try_start_1
    const-string p0, "ProvisioningConfiguration"

    .line 20
    .line 21
    const-string v1, "Buffer under flow exception should never happen."

    .line 22
    .line 23
    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :catchall_0
    return-object v0
.end method

.method public static fromStableParcelable(Landroid/net/ScanResultInfoParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/net/ScanResultInfoParcelable;->informationElements:[Landroid/net/InformationElementParcelable;

    .line 11
    .line 12
    new-instance v2, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, v3}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$$ExternalSyntheticLambda0;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 26
    .line 27
    iget-object v2, p0, Landroid/net/ScanResultInfoParcelable;->ssid:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p0, p0, Landroid/net/ScanResultInfoParcelable;->bssid:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v1, v2, p0, v0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 34
    .line 35
    iget-object p1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v2

    .line 45
    :goto_0
    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInformationElements()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 6
    .line 7
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public toStableParcelable()Landroid/net/ScanResultInfoParcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/ScanResultInfoParcelable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/ScanResultInfoParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Landroid/net/ScanResultInfoParcelable;->ssid:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Landroid/net/ScanResultInfoParcelable;->bssid:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 15
    .line 16
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v1, v2}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-class v2, Landroid/net/InformationElementParcelable;

    .line 23
    .line 24
    invoke-static {p0, v1, v2}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, [Landroid/net/InformationElementParcelable;

    .line 29
    .line 30
    iput-object p0, v0, Landroid/net/ScanResultInfoParcelable;->informationElements:[Landroid/net/InformationElementParcelable;

    .line 31
    .line 32
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "SSID: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, ", BSSID: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    const-string v1, ", Information Elements: {"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    .line 45
    .line 46
    const-string v2, "["

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    const-string v1, "]"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const-string/jumbo p0, "}"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
