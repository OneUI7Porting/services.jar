.class public final Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final callingUid:I

.field public final failedDomains:Ljava/util/List;

.field public final verificationId:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->callingUid:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->verificationId:I

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    :cond_0
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->failedDomains:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method
