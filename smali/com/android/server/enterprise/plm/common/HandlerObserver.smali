.class public final Lcom/android/server/enterprise/plm/common/HandlerObserver;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final handler:Ljava/lang/ref/WeakReference;

.field public final what:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->handler:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->handler:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object p0
.end method

.method public final notifyMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p2, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p3, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget p0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    .line 24
    .line 25
    iput p0, p1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
