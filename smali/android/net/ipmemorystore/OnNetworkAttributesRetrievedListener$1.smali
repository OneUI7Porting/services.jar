.class public final Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;
.super Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "d5ea5eb3ddbdaa9a986ce6ba70b0804ca3e39b0c"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/16 p0, 0xa

    .line 2
    .line 3
    return p0
.end method

.method public final onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/net/ipmemorystore/Status;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    .line 8
    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 15
    .line 16
    invoke-direct {p1, p3}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p0, v0, p2, p1}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
