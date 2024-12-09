.class public final Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;
.super Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final algorithmSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string/jumbo v5, "sha384withecdsa"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v6, "sha512withecdsa"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "nonewithecdsa"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "sha1withecdsa"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v3, "sha224withecdsa"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v4, "sha256withecdsa"

    .line 19
    .line 20
    .line 21
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;->algorithmSet:Ljava/util/Set;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getProcessAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "NONEwithECDSA"

    .line 2
    .line 3
    return-object p0
.end method

.method public final processInput([B)[B
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->algorithm:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v0, "nonewithecdsa"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->getMdAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
