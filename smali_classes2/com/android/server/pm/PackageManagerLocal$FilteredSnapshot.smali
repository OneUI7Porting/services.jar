.class public interface abstract Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
.end method

.method public abstract getPackageStates()Ljava/util/Map;
.end method
