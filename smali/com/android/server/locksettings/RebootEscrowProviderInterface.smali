.class public interface abstract Lcom/android/server/locksettings/RebootEscrowProviderInterface;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract clearRebootEscrowKey()V
.end method

.method public abstract getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
.end method

.method public abstract getType()I
.end method

.method public abstract hasRebootEscrowSupport()Z
.end method

.method public abstract storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
.end method
