.class public final Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isScreenCaptureEnabledEx(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
