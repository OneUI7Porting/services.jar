.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$1:J

    .line 4
    .line 5
    check-cast p1, Ljava/util/Map$Entry;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/blob/BlobMetadata;

    .line 15
    .line 16
    iget-wide v3, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 17
    .line 18
    cmp-long p1, v3, v1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method
