.class public abstract Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/am/mars/database/MARsDBHandler$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mFASDBupdateRunnable:Lcom/android/server/am/mars/database/MARsDBHandler$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    sput-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 14
    .line 15
    return-void
.end method
