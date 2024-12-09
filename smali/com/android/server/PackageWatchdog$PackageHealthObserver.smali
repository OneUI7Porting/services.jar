.class public interface abstract Lcom/android/server/PackageWatchdog$PackageHealthObserver;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract execute(Landroid/content/pm/VersionedPackage;II)Z
.end method

.method public abstract executeBootLoopMitigation(I)Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract mayObservePackage(Ljava/lang/String;)Z
.end method

.method public abstract onBootLoop(I)I
.end method

.method public abstract onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
.end method
