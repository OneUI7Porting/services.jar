.class public final Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;


# virtual methods
.method public final onFail(ILcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mFanLevelMap:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p2, "error : "

    .line 6
    .line 7
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "DexStation"

    .line 18
    .line 19
    invoke-static {p1, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onSuccess(Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mFanLevelMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string p0, "DexStation"

    .line 4
    .line 5
    const-string/jumbo p1, "onSuccess"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
