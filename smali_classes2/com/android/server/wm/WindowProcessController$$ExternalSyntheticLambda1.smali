.class public final synthetic Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowProcessController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowProcessController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowProcessController;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->setRunningRemoteAnimation(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
