.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda5;->f$1:Ljava/io/PrintWriter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda5;->f$1:Ljava/io/PrintWriter;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/MultiTaskingAppCompatController$OverridesObserver;

    .line 8
    .line 9
    invoke-interface {p1, v0, v1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatController$OverridesObserver;->onDumpInTask(Lcom/android/server/wm/Task;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method