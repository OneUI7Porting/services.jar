.class public final synthetic Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/StateManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StateManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/desktopmode/StateManager;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;->f$1:Z

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onBootInitBlockerRegistered(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
