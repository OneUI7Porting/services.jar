.class public final Lcom/android/server/print/RemotePrintService$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic val$printJob:Landroid/print/PrintJobInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/print/RemotePrintService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$2;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$2;->val$printJob:Landroid/print/PrintJobInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/print/RemotePrintService$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$2;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$2;->val$printJob:Landroid/print/PrintJobInfo;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$2;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$2;->val$printJob:Landroid/print/PrintJobInfo;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method