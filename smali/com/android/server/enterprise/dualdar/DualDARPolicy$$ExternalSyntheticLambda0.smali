.class public final synthetic Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[B

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy;ILjava/lang/String;[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$3:[B

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$3:[B

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v4, "Failed to reset password due to constraint violation: "

    .line 15
    .line 16
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    .line 17
    .line 18
    iget-object v6, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 19
    .line 20
    iget-object v6, v6, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const-string v6, "DualDARPolicy"

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    const-string/jumbo p0, "resetPasswordWithTokenForInner : Not permitted while device insecure"

    .line 35
    .line 36
    .line 37
    new-array v0, v7, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v6, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_0
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v2, ""

    .line 50
    .line 51
    :goto_0
    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->isNumericOnly(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    const-string/jumbo p0, "resetPasswordWithTokenForInner : Not permitted for empty password"

    .line 66
    .line 67
    .line 68
    new-array v0, v7, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {v6, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_2
    if-eqz v1, :cond_6

    .line 77
    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    :goto_1
    :try_start_0
    invoke-static {v1, v7, v5}, Landroid/app/admin/PasswordMetrics;->validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-nez v8, :cond_4

    .line 98
    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    new-array v0, v7, [Ljava/lang/Object;

    .line 116
    .line 117
    invoke-static {v6, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    if-eqz v5, :cond_7

    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 125
    .line 126
    .line 127
    goto :goto_5

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    if-eqz v5, :cond_6

    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :goto_2
    if-eqz v5, :cond_5

    .line 137
    .line 138
    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_3
    throw p0

    .line 147
    :cond_6
    :goto_4
    iget-object v0, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 148
    .line 149
    invoke-virtual {v0, v2, v3, p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->resetPasswordWithToken(Ljava/lang/String;[BI)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    :cond_7
    :goto_5
    return-object p0
.end method