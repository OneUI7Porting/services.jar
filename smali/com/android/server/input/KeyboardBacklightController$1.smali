.class public final Lcom/android/server/input/KeyboardBacklightController$1;
.super Lcom/android/server/input/UEventManager$UEventListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardBacklightController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$1;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/input/UEventManager$UEventListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$1;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->onKeyboardBacklightUEvent(Landroid/os/UEventObserver$UEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
