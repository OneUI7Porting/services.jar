.class public final Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinderCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTransactionError(IIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->frozenBinderTransactionDetected(IIII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
