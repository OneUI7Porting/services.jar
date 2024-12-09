.class public interface abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract onAcquired(IIIJ)V
.end method

.method public abstract onAuthenticated(JIILjava/util/ArrayList;)V
.end method

.method public abstract onEnrollResult(IIIJ)V
.end method

.method public abstract onEnumerate(IJLjava/util/ArrayList;)V
.end method

.method public abstract onError(IIIJ)V
.end method

.method public abstract onRemoved(IJLjava/util/ArrayList;)V
.end method
