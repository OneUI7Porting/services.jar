.class public final Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;
.super Lcom/android/internal/widget/IUpdateVerifierCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

.field public final synthetic val$iUpdateVerifierInterface:Lcom/android/internal/widget/IUpdateVerifierInterface;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;Lcom/android/internal/widget/IUpdateVerifierInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->val$iUpdateVerifierInterface:Lcom/android/internal/widget/IUpdateVerifierInterface;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/internal/widget/IUpdateVerifierCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceiveSaGuid(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "LockSettingsService"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->unbindService()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x20

    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    .line 27
    .line 28
    iget-object v3, v2, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->mCredential:[B

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    :try_start_0
    new-instance v5, Ljava/lang/String;

    .line 32
    .line 33
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v5, v1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->makeX(Ljava/lang/String;Ljava/lang/String;[B)Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v5, v2, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->g:Ljava/math/BigInteger;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->N:Ljava/math/BigInteger;

    .line 45
    .line 46
    invoke-virtual {v5, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 51
    .line 52
    .line 53
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v2

    .line 56
    const-string/jumbo v3, "exception to make verifier = "

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    move-object v2, v4

    .line 63
    :goto_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->mCredential:[B

    .line 66
    .line 67
    :try_start_1
    new-instance v5, Ljava/lang/String;

    .line 68
    .line 69
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v5, v1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->makeX(Ljava/lang/String;Ljava/lang/String;[B)Ljava/math/BigInteger;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    filled-new-array {p1}, [[B

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->hash([[B)Ljava/math/BigInteger;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v3, p1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->pbkdf2([C[B)[B

    .line 99
    .line 100
    .line 101
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception p1

    .line 104
    const-string/jumbo v3, "exception to make wrapKey = "

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->val$iUpdateVerifierInterface:Lcom/android/internal/widget/IUpdateVerifierInterface;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    .line 113
    .line 114
    iget v0, v0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->mVerifierType:I

    .line 115
    .line 116
    invoke-interface {p1, v2, v1, v4, v0}, Lcom/android/internal/widget/IUpdateVerifierInterface;->updateVerifierWithWk([B[B[BI)V

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->unbindService()V

    .line 122
    .line 123
    .line 124
    return-void
.end method
