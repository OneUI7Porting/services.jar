.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-wide v0, Lcom/android/server/pm/PackageManagerService;->DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

    .line 2
    .line 3
    const-string/jumbo p0, "package_manager_service"

    .line 4
    .line 5
    .line 6
    const-string v2, "deferred_no_kill_post_delete_delay_ms_extended"

    .line 7
    .line 8
    invoke-static {p0, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
