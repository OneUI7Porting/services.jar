.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/AudioManagerRouteController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBluetoothRoutesUpdated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
