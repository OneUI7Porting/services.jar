.class public final Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method