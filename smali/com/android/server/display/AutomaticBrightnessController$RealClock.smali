.class public final Lcom/android/server/display/AutomaticBrightnessController$RealClock;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Clock;


# instance fields
.field public final mOffloadControlsDozeBrightness:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController$RealClock;->mOffloadControlsDozeBrightness:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSensorEventScaleTime()J
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController$RealClock;->mOffloadControlsDozeBrightness:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :goto_0
    return-wide v0
.end method