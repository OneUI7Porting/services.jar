.class public final Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAuthenticated:Z

.field public final mError:I

.field public final mLatency:J

.field public final mStartTime:J

.field public final mUser:I

.field public final mVendorError:I


# direct methods
.method public constructor <init>(JJZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mStartTime:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mLatency:J

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mAuthenticated:Z

    .line 9
    .line 10
    iput p6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mError:I

    .line 11
    .line 12
    iput p7, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mVendorError:I

    .line 13
    .line 14
    iput p8, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mUser:I

    .line 15
    .line 16
    return-void
.end method
