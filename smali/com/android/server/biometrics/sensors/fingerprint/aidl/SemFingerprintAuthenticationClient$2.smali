.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo v0, "package"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const-string/jumbo p1, "authenticator"

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x2

    .line 43
    if-ne p1, p2, :cond_0

    .line 44
    .line 45
    const-string p1, "FingerprintAuthenticationClient.Ext"

    .line 46
    .line 47
    const-string p2, "Cancel authentication by Notification action"

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
