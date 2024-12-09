.class public interface abstract Lcom/android/server/pm/pkg/SharedLibrary;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract getAllCodePaths()Ljava/util/List;
.end method

.method public abstract getDeclaringPackage()Landroid/content/pm/VersionedPackage;
.end method

.method public abstract getDependencies()Ljava/util/List;
.end method

.method public abstract getDependentPackages()Ljava/util/List;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getVersion()J
.end method

.method public abstract isNative()Z
.end method
