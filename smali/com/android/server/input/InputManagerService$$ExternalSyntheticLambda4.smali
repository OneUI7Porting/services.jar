.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/input/InputManagerService;

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/input/InputManagerService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->lambda$sendKeyboardWirelessKeyboardShare$12()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->lambda$sendKeyboardWirelessKeyboardShare$11()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
