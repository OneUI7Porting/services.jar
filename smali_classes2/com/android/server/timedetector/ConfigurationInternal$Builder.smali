.class public final Lcom/android/server/timedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAutoDetectionEnabledSetting:Z

.field public mAutoDetectionSupported:Z

.field public mAutoSuggestionLowerBound:Ljava/time/Instant;

.field public mManualSuggestionLowerBound:Ljava/time/Instant;

.field public mOriginPriorities:[I

.field public mSuggestionUpperBound:Ljava/time/Instant;

.field public mSystemClockConfidenceThresholdMillis:I

.field public mSystemClockUpdateThresholdMillis:I

.field public mUserConfigAllowed:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    .line 5
    .line 6
    return-void
.end method
