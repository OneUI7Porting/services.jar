.class public final Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mHostname:Ljava/lang/String;

.field public final mLatencyMs:I

.field public final mNetId:I

.field public final mReturnCode:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    .line 9
    .line 10
    iput p3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    .line 11
    .line 12
    iput p4, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mLatencyMs:I

    .line 13
    .line 14
    return-void
.end method
