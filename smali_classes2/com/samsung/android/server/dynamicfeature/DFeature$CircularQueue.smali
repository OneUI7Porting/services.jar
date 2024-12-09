.class public final Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public front:I

.field public final queue:[Ljava/lang/String;

.field public rear:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->size:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->front:I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->rear:I

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->queue:[Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method
