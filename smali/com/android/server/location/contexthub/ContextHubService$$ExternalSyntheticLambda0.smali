.class public final synthetic Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 7
    .line 8
    iget-object p0, v1, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
