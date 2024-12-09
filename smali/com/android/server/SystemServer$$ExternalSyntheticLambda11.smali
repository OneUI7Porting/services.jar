.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IServiceCreator;


# virtual methods
.method public final createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/ssdid/SemSsdidManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/ssdid/SemSsdidManagerService;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
