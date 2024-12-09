.class public final synthetic Lcom/android/server/input/InputManagerService$16$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/InputManagerService$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService$3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/InputManagerService$16$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$16$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/InputManagerService$3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/input/InputManagerService$16$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$16$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/InputManagerService$3;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->showingTouchSensitivityNotificationIfNeeded()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateFlowPointerSettings()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateFlowPointerDirectionSettings()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
