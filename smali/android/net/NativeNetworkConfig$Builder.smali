.class public final Landroid/net/NativeNetworkConfig$Builder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field private excludeLocalRoutes:Z

.field private netId:I

.field private networkType:I

.field private permission:I

.field private secure:Z

.field private vpnType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->netId:I

    .line 6
    .line 7
    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->networkType:I

    .line 8
    .line 9
    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->permission:I

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/net/NativeNetworkConfig$Builder;->secure:Z

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iput v1, p0, Landroid/net/NativeNetworkConfig$Builder;->vpnType:I

    .line 15
    .line 16
    iput-boolean v0, p0, Landroid/net/NativeNetworkConfig$Builder;->excludeLocalRoutes:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public build()Landroid/net/NativeNetworkConfig;
    .locals 8

    .line 1
    new-instance v7, Landroid/net/NativeNetworkConfig;

    .line 2
    .line 3
    iget v1, p0, Landroid/net/NativeNetworkConfig$Builder;->netId:I

    .line 4
    .line 5
    iget v2, p0, Landroid/net/NativeNetworkConfig$Builder;->networkType:I

    .line 6
    .line 7
    iget v3, p0, Landroid/net/NativeNetworkConfig$Builder;->permission:I

    .line 8
    .line 9
    iget-boolean v4, p0, Landroid/net/NativeNetworkConfig$Builder;->secure:Z

    .line 10
    .line 11
    iget v5, p0, Landroid/net/NativeNetworkConfig$Builder;->vpnType:I

    .line 12
    .line 13
    iget-boolean v6, p0, Landroid/net/NativeNetworkConfig$Builder;->excludeLocalRoutes:Z

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Landroid/net/NativeNetworkConfig;-><init>(IIIZIZ)V

    .line 17
    .line 18
    .line 19
    return-object v7
.end method

.method public setExcludeLocalRoutes(Z)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/NativeNetworkConfig$Builder;->excludeLocalRoutes:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setNetId(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->netId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setNetworkType(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->networkType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPermission(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->permission:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSecure(Z)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/NativeNetworkConfig$Builder;->secure:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setVpnType(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->vpnType:I

    .line 2
    .line 3
    return-object p0
.end method
