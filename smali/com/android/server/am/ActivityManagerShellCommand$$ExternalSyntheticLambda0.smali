.class public final synthetic Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerShellCommand;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/io/PrintWriter;

.field public final synthetic f$3:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;[ILjava/io/PrintWriter;Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$1:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$2:Ljava/io/PrintWriter;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$1:[I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$2:Ljava/io/PrintWriter;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    invoke-direct {v4, v0, v1, v2, p0}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;[ILjava/io/PrintWriter;Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
