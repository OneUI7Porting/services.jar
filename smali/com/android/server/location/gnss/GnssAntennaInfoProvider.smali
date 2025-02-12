.class public final Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;


# instance fields
.field public volatile mAntennaInfos:Ljava/util/List;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addAntennaInfoCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onHalRestarted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startAntennaInfoListening()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onHalStarted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startAntennaInfoListening()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 8

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroid/os/IBinder;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    instance-of p0, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    check-cast p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    .line 13
    .line 14
    iget-object p0, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x1

    .line 32
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;IIZZ)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    instance-of v0, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 14
    .line 15
    sget-object v0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->removeGnssDataListener(Landroid/os/IBinder;Landroid/location/LocationConstants$LISTENER_TYPE;II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final bridge synthetic registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final unregisterWithService()V
    .locals 0

    .line 1
    return-void
.end method
