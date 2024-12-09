.class public final Lcom/android/server/DropBoxManagerService$1$1;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$1:Lcom/android/server/DropBoxManagerService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 4
    .line 5
    sget v1, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/DropBoxManagerService;->init$1()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v0, "DropBoxManagerService"

    .line 20
    .line 21
    const-string v1, "Can\'t init"

    .line 22
    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
