.class public abstract Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract getAllPersistentDeviceIds()Ljava/util/Set;
.end method

.method public abstract getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I
.end method

.method public abstract getDeviceIdsForUid(I)Landroid/util/ArraySet;
.end method

.method public abstract getDeviceOwnerUid(I)I
.end method

.method public abstract getDisplayIdsForDevice(I)Landroid/util/ArraySet;
.end method

.method public abstract getPersistentIdForDevice(I)Ljava/lang/String;
.end method

.method public abstract getPreferredLocaleListForUid(I)Landroid/os/LocaleList;
.end method

.method public abstract getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;
.end method

.method public abstract isAppRunningOnAnyVirtualDevice(I)Z
.end method

.method public abstract isInputDeviceOwnedByVirtualDevice(I)Z
.end method

.method public abstract onAuthenticationPrompt(I)V
.end method

.method public abstract onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V
.end method
