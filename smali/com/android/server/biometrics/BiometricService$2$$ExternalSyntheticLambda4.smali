.class public final synthetic Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$2;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;JII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;->f$1:J

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;->f$1:J

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;->f$2:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;->f$3:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const-string p0, "BiometricService"

    .line 16
    .line 17
    const-string/jumbo v0, "handleOnErrorFromSysUi: AuthSession is null"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v5, 0x3

    .line 25
    const/4 v6, 0x5

    .line 26
    if-eq v3, v5, :cond_1

    .line 27
    .line 28
    const/16 v5, 0xa

    .line 29
    .line 30
    if-eq v3, v5, :cond_2

    .line 31
    .line 32
    move p0, v6

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x2

    .line 35
    :cond_2
    :goto_0
    iput p0, v4, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    iput p0, v4, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    invoke-virtual {v0, v1, v2, p0, v6}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(J[BI)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void
.end method
