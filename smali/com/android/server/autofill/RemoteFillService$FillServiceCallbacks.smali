.class public interface abstract Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# virtual methods
.method public abstract onFillRequestFailure(ILjava/lang/Throwable;)V
.end method

.method public abstract onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V
.end method

.method public abstract onSaveRequestFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
.end method

.method public abstract onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
.end method
