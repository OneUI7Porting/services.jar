.class public final synthetic Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/FlexibilityController$FcHandler;JLandroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$2:Landroid/util/ArraySet;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$1:J

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$2:Landroid/util/ArraySet;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean v3, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v4, "Checking on "

    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "JobScheduler.Flex"

    .line 35
    .line 36
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/high16 v3, 0x200000

    .line 46
    .line 47
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
