.class public final Lcom/android/server/display/HighBrightnessModeMetadata;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mEvents:Ljava/util/ArrayDeque;

.field public mRunningStartTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 14
    .line 15
    return-void
.end method
