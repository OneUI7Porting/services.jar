.class public final Lcom/android/server/pm/QueryIntentActivitiesResult;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final addInstant:Z

.field public final answer:Ljava/util/List;

.field public result:Ljava/util/List;

.field public final sortResult:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    .line 8
    iput-boolean p2, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    .line 9
    iput-boolean p3, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    .line 10
    iput-object p1, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    return-void
.end method
