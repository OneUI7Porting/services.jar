.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/BiFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/audio/AdiDeviceState;

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method
