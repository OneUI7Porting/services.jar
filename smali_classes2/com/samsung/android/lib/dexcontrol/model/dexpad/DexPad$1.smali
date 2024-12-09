.class public final Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;


# direct methods
.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFail(ILcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onFail : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "DexPad"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p2, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->mData:[B

    .line 33
    .line 34
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 41
    .line 42
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p2, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->mData:[B

    .line 49
    .line 50
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    const/4 p0, -0x3

    .line 55
    if-eq p1, p0, :cond_2

    .line 56
    .line 57
    const/4 p0, -0x2

    .line 58
    if-eq p1, p0, :cond_1

    .line 59
    .line 60
    const/4 p0, -0x1

    .line 61
    if-eq p1, p0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mError:Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->count(I)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    return-void
.end method

.method public final onSuccess(Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p1, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->mData:[B

    .line 13
    .line 14
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    iput-object p0, p1, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->mData:[B

    .line 27
    .line 28
    :cond_0
    return-void
.end method
