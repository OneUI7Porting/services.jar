.class public final Lcom/android/server/credentials/metrics/InitialPhaseMetric;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mApiName:I

.field public mAutofillRequestId:I

.field public mAutofillSessionId:I

.field public mCallerUid:I

.field public mCredentialServiceStartedTimeNanoseconds:J

.field public mOriginSpecified:Z

.field public mRequestCounts:Ljava/util/Map;

.field public final mSessionIdCaller:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->UNKNOWN:Lcom/android/server/credentials/metrics/ApiName;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCallerUid:I

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    .line 21
    .line 22
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillSessionId:I

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillRequestId:I

    .line 32
    .line 33
    iput p1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mSessionIdCaller:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final getUniqueRequestCounts()[I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getUniqueRequestStrings()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
