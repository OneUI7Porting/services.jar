.class public final synthetic Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;


# instance fields
.field public final synthetic f$0:Lcom/android/server/storage/StorageUserConnection$Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection$Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/storage/StorageUserConnection$Session;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/storage/StorageUserConnection$Session;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$Session;->sessionId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p1, p0, p2}, Landroid/service/storage/IExternalStorageService;->endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
