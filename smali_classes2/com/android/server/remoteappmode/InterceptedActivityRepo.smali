.class public final Lcom/android/server/remoteappmode/InterceptedActivityRepo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;-><init>(Lcom/android/server/remoteappmode/InterceptedActivityRepo;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    return-void
.end method
