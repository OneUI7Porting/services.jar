.class public final synthetic Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/listeners/RemovableListenerRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
