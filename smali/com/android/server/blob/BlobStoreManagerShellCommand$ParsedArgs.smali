.class public final Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public algorithm:Ljava/lang/String;

.field public blobId:J

.field public digest:[B

.field public expiryTimeMillis:J

.field public label:Ljava/lang/CharSequence;

.field public tag:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 6
    .line 7
    const-string v0, "SHA-256"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method
