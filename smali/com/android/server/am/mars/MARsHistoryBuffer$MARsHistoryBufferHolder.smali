.class public abstract Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/mars/MARsHistoryBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/android/server/am/mars/MARsHistoryBuffer;->size:I

    .line 8
    .line 9
    iput v1, v0, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    .line 10
    .line 11
    sput-object v0, Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;

    .line 12
    .line 13
    return-void
.end method
