.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$0:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 8
    .line 9
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 10
    .line 11
    if-ne v2, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method