.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 2
    .line 3
    sget p0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
