.class public final synthetic Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Landroid/net/IDnsResolver;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/ResolverOptionsParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/ResolverOptionsParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$0:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 11
    .line 12
    invoke-interface {p1, p0, v0}, Landroid/net/IDnsResolver;->setResolverOptions(ILandroid/net/ResolverOptionsParcel;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
