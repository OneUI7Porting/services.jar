.class public final synthetic Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic f$1:J

.field public final synthetic f$2:[B

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockscreenCredential;J[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockscreenCredential;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$2:[B

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockscreenCredential;

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$2:[B

    .line 6
    .line 7
    iget v5, p0, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
