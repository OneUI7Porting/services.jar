.class public final Lcom/android/server/power/HqmDataDispatcher$DisplayStat;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final BRIGHTNESS_DIM:I

.field public static final BRIGHTNESS_HIGHEST:I


# instance fields
.field public final mBrightnessDuration:[J

.field public mCurrentBrightnessRange:I

.field public final mDisplayType:I

.field public mScreenBrightnessHighestDuration:J

.field public mScreenBrightnessHighestStarted:Z

.field public final mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public final mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenCurtainCount:J

.field public mScreenCurtainDuration:J

.field public mScreenCurtainEnabled:Z

.field public final mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenOnCount:J

.field public mScreenOnDuration:J

.field public final mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x10e0134

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_DIM:I

    .line 18
    .line 19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x10e0136

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_HIGHEST:I

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    new-array v2, v1, [Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 19
    .line 20
    iput-object v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 21
    .line 22
    new-array v2, v1, [J

    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 32
    .line 33
    new-instance v2, Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 39
    .line 40
    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    .line 41
    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 45
    .line 46
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    .line 47
    .line 48
    move p1, v0

    .line 49
    :goto_0
    if-ge p1, v1, :cond_0

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 52
    .line 53
    new-instance v5, Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    aput-object v5, v4, p1

    .line 59
    .line 60
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    .line 64
    .line 65
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    .line 66
    .line 67
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 70
    .line 71
    return-void
.end method
