.class public final synthetic Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/AuthSession;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/AuthSession;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/AuthSession;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/AuthSession;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$1:I

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 16
    .line 17
    if-eq p1, p0, :cond_0

    .line 18
    .line 19
    iget-object p0, v0, Lcom/android/server/biometrics/AuthSession;->mSfpsSensorIds:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/AuthSession;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$1:I

    .line 42
    .line 43
    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 64
    .line 65
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 66
    .line 67
    if-ne p0, v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-string v0, "Unknown sensor: "

    .line 75
    .line 76
    const-string v1, "BiometricService/AuthSession"

    .line 77
    .line 78
    invoke-static {p0, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/16 p0, 0xfff

    .line 82
    .line 83
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
