.class public interface abstract Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract onProviderCancellable(Landroid/os/ICancellationSignal;)V
.end method

.method public abstract onProviderResponseFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onProviderResponseSuccess(Ljava/lang/Object;)V
.end method

.method public abstract onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
.end method
