.class public final synthetic Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSettingChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda6;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda6;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
