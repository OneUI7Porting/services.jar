.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;JLjava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda21;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda21;->f$2:Ljava/io/PrintWriter;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda21;->f$1:J

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda21;->f$2:Ljava/io/PrintWriter;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda25;

    .line 11
    .line 12
    invoke-direct {v3, v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda25;-><init>(J)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "barrier"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3, v1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method
