.class public final Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/ISwitchEventChangedListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISwitchEventChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->mPid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->mListener:Landroid/hardware/input/ISwitchEventChangedListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "SwitchEventChanged listener for pid "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->mPid:I

    .line 13
    .line 14
    const-string v2, " died."

    .line 15
    .line 16
    const-string v3, "InputManager"

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->mPid:I

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onSwitchEventChangedListenerDied(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
