.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->remove(Landroid/os/IBinder;)V

    return-void
.end method