.class public final synthetic Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/FutureAppSearchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSession;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Throwable;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V

    .line 10
    .line 11
    .line 12
    return-void
.end method