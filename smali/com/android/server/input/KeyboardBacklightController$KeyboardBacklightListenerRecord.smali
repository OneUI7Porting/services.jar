.class public final Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IKeyboardBacklightListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/input/IKeyboardBacklightListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "KbdBacklightController"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Keyboard backlight listener for pid "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    .line 15
    .line 16
    const-string v3, " died."

    .line 17
    .line 18
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
