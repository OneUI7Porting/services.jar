.class public final Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final customDimensionMap:Ljava/util/HashMap;

.field public final eventName:Ljava/lang/String;

.field public eventValue:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventValue:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    .line 9
    .line 10
    return-void
.end method