.class public final synthetic Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
