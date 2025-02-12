.class public final Lcom/android/server/inputmethod/ClientState;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAccessibilitySessions:Landroid/util/SparseArray;

.field public final mBinding:Landroid/view/inputmethod/InputBinding;

.field public final mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final mClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field public final mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public final mPid:I

.field public final mSelfReportedDisplayId:I

.field public mSessionRequested:Z

.field public mSessionRequestedForAccessibility:Z

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;IIILcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/inputmethod/ClientState;->mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 14
    .line 15
    iput p3, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 16
    .line 17
    iput p4, p0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 18
    .line 19
    iput p5, p0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 20
    .line 21
    new-instance p1, Landroid/view/inputmethod/InputBinding;

    .line 22
    .line 23
    const/4 p5, 0x0

    .line 24
    invoke-interface {p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p5, p2, p3, p4}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/inputmethod/ClientState;->mBinding:Landroid/view/inputmethod/InputBinding;

    .line 32
    .line 33
    iput-object p6, p0, Lcom/android/server/inputmethod/ClientState;->mClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ClientState{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " mUid="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " mPid="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " mSelfReportedDisplayId="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget p0, p0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 45
    .line 46
    const-string/jumbo v1, "}"

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
