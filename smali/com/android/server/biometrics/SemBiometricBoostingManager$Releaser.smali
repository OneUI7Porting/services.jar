.class public final Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBiometricType:I

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mBiometricType:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mBiometricType:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
