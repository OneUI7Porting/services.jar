.class public final synthetic Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/location/IGnssNavigationMessageListener;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    invoke-interface {p1, p0}, Landroid/location/IGnssNavigationMessageListener;->onStatusChanged(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
