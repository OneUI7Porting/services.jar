.class public final synthetic Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/credentials/ProviderSession;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p1, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 17
    .line 18
    iput-object p0, p1, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :goto_1
    const-string p1, "CredentialManager"

    .line 22
    .line 23
    const-string v0, "Issue while cancelling provider session: "

    .line 24
    .line 25
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_2
    return-void
.end method