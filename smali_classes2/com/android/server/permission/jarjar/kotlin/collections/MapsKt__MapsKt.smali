.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static emptyMap()Ljava/util/Map;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;

    .line 2
    .line 3
    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method