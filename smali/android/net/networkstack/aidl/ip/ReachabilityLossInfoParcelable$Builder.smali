.class public final Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field private message:Ljava/lang/String;

.field private reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->message:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->reason:I

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReason(I)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->reason:I

    .line 2
    .line 3
    return-object p0
.end method
