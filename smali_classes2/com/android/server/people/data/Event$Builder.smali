.class public final Lcom/android/server/people/data/Event$Builder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mDurationSeconds:I

.field public mTimestamp:J

.field public mType:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    .line 7
    .line 8
    return-void
.end method
