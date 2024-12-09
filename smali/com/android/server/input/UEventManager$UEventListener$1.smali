.class public final Lcom/android/server/input/UEventManager$UEventListener$1;
.super Landroid/os/UEventObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/UEventManager$UEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/input/UEventManager$UEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/UEventManager$UEventListener$1;->this$0:Lcom/android/server/input/UEventManager$UEventListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/UEventManager$UEventListener$1;->this$0:Lcom/android/server/input/UEventManager$UEventListener;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/input/UEventManager$UEventListener;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
