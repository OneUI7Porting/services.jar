.class public final Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;
.super Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;->val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAttributionTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;->val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
