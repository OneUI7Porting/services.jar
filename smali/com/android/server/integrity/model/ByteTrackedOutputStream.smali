.class public final Lcom/android/server/integrity/model/ByteTrackedOutputStream;
.super Ljava/io/OutputStream;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mOutputStream:Ljava/io/OutputStream;

.field public mWrittenBytesCount:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 2
    iget-object p0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 5
    iget-object p0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
