.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final synthetic val$callback:Landroid/media/projection/IMediaProjectionWatcherCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->val$callback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->val$callback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method