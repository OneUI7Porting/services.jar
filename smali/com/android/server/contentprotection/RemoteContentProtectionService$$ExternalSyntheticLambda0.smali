.class public final synthetic Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/service/contentcapture/IContentProtectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentProtectionService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
