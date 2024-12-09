.class public final Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;
.super Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final algorithmSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string/jumbo v1, "rsa/ecb/nopadding"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "rsa/ecb/pkcs1padding"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;->algorithmSet:Ljava/util/Set;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final isEncryptFunction()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
