.class public final synthetic Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreSession;

.field public final synthetic f$1:Landroid/os/RevocableFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/blob/BlobStoreSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$1:Landroid/os/RevocableFileDescriptor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/blob/BlobStoreSession;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$1:Landroid/os/RevocableFileDescriptor;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
