.class public final synthetic Lcom/android/server/display/mode/CombinedVote$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/VoteSummary;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/CombinedVote$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/VoteSummary;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/CombinedVote$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/VoteSummary;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/display/mode/Vote;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/android/server/display/mode/Vote;->updateSummary(Lcom/android/server/display/mode/VoteSummary;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
