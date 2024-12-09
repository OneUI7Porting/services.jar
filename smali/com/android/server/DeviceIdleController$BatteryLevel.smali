.class public final Lcom/android/server/DeviceIdleController$BatteryLevel;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public curr:F

.field public currTime:J

.field public prev:F

.field public prevTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 15
    .line 16
    return-void
.end method
