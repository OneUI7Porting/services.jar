.class public abstract Lcom/android/server/accessibility/BaseEventStreamTransformation;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# instance fields
.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;


# virtual methods
.method public final getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 2
    .line 3
    return-void
.end method
