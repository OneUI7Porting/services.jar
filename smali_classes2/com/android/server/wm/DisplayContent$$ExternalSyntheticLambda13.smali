.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;->f$0:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;->f$0:Z

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
