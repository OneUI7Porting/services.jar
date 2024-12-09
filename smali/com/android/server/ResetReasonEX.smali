.class Lcom/android/server/ResetReasonEX;
.super Lcom/android/server/CommonPlatformResetReasonCode;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/ResetReasonCode;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addSuffix()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "sys_error"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
