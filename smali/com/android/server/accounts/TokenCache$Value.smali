.class public final Lcom/android/server/accounts/TokenCache$Value;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final expiryEpochMillis:J

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    .line 7
    .line 8
    return-void
.end method
