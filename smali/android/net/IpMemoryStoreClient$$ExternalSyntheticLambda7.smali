.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Landroid/net/IIpMemoryStore;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$dglMsU1c29thjop9O2HnPUSy4-0(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
