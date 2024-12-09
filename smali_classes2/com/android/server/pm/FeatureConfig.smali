.class interface abstract Lcom/android/server/pm/FeatureConfig;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract enableLogging(IZ)V
.end method

.method public abstract isGloballyEnabled()Z
.end method

.method public abstract isLoggingEnabled(I)Z
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z
.end method

.method public abstract snapshot()Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
.end method

.method public abstract updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
.end method
