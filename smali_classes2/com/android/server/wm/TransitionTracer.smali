.class public interface abstract Lcom/android/server/wm/TransitionTracer;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract isTracing()Z
.end method

.method public abstract logAbortedTransition(Lcom/android/server/wm/Transition;)V
.end method

.method public abstract logFinishedTransition(Lcom/android/server/wm/Transition;)V
.end method

.method public abstract logRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
.end method

.method public abstract logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
.end method

.method public abstract saveForBugreport(Ljava/io/PrintWriter;)V
.end method

.method public abstract startTrace(Ljava/io/PrintWriter;)V
.end method

.method public abstract stopTrace(Ljava/io/PrintWriter;)V
.end method
