.class public final Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static volatile sInstance:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;


# direct methods
.method public static getInstance(Ljava/lang/String;Z)Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;->algorithmSet:Ljava/util/Set;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperSupportSign;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    sget-object p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmSet:Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    new-instance p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_2
    sget-object p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;->algorithmSet:Ljava/util/Set;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast p1, Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    new-instance p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;

    .line 68
    .line 69
    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_3
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    .line 74
    .line 75
    const-string v0, "Not supported algorithm "

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_4
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 86
    .line 87
    const-string p1, "algorithm is empty"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method
