.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda6;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda6;->f$0:I

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    new-instance p1, Landroid/util/AtomicFile;

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string/jumbo v1, "companion_device_system_data_transfer_requests.xml"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method
