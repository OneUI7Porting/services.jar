.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/UserController;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    .line 13
    .line 14
    invoke-direct {v2, v0, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/UserController;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/android/server/am/UserController$Injector;->dismissUserSwitchingDialog(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/UserController;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    .line 38
    .line 39
    invoke-direct {v2, v0, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
