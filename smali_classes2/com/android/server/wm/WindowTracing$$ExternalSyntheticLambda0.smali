.class public final synthetic Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowTracing;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowTracing;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowTracing;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowTracing;

    .line 2
    .line 3
    const-string/jumbo p1, "onFrame"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
