.class public final Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAlgorithm:Ljava/lang/String;

.field public final mBlockModes:[Ljava/lang/String;

.field public final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field public final mChallenge:[B

.field public final mDNQualifier:[B

.field public final mDeviceAttestation:Z

.field public final mDigests:[Ljava/lang/String;

.field public final mEncryptionPaddings:[Ljava/lang/String;

.field public final mKeySize:I

.field public final mMgf1Digests:Ljava/util/Set;

.field public final mPurposes:I

.field public final mServiceTAName:[B

.field public final mSignaturePaddings:[Ljava/lang/String;

.field public final mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>([BI[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "EC"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mServiceTAName:[B

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDNQualifier:[B

    .line 12
    .line 13
    iput p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mKeySize:I

    .line 14
    .line 15
    const/16 p2, 0xc

    .line 16
    .line 17
    iput p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mPurposes:I

    .line 18
    .line 19
    invoke-static {p3}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    :goto_0
    iput-object p4, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    .line 33
    .line 34
    invoke-static {p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p7}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p8, :cond_1

    .line 65
    .line 66
    invoke-virtual {p8}, [B->clone()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, [B

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object p2, p1

    .line 74
    :goto_1
    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mChallenge:[B

    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    iput-boolean p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDeviceAttestation:Z

    .line 78
    .line 79
    iput-boolean p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mVerifiableIntegrity:Z

    .line 80
    .line 81
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 82
    .line 83
    return-void
.end method
