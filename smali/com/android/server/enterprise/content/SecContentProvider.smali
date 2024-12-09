.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 8
    .line 9
    const-string v1, "AuditLog"

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const-string/jumbo v3, "com.sec.knox.provider"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "BluetoothPolicy"

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v1, "BluetoothUtils"

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string v1, "BrowserPolicy"

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v1, "CertificatePolicy"

    .line 37
    .line 38
    const/4 v2, 0x6

    .line 39
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "FirewallPolicy"

    .line 43
    .line 44
    const/16 v2, 0xa

    .line 45
    .line 46
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const-string v1, "LocationPolicy"

    .line 50
    .line 51
    const/16 v2, 0xc

    .line 52
    .line 53
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string v1, "PasswordPolicy2"

    .line 57
    .line 58
    const/16 v2, 0xe

    .line 59
    .line 60
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string v1, "RestrictionPolicy1"

    .line 64
    .line 65
    const/16 v2, 0xf

    .line 66
    .line 67
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const-string v1, "RestrictionPolicy2"

    .line 71
    .line 72
    const/16 v2, 0x10

    .line 73
    .line 74
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    const-string v1, "RestrictionPolicy3"

    .line 78
    .line 79
    const/16 v2, 0x11

    .line 80
    .line 81
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    const-string v1, "RestrictionPolicy4"

    .line 85
    .line 86
    const/16 v2, 0x12

    .line 87
    .line 88
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    const-string v1, "RoamingPolicy"

    .line 92
    .line 93
    const/16 v2, 0x13

    .line 94
    .line 95
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    const-string v1, "SecurityPolicy"

    .line 99
    .line 100
    const/16 v2, 0x14

    .line 101
    .line 102
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    const-string v1, "DateTimePolicy"

    .line 106
    .line 107
    const/16 v2, 0x18

    .line 108
    .line 109
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    const-string v1, "DlpPolicy"

    .line 113
    .line 114
    const/16 v2, 0x19

    .line 115
    .line 116
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    const-string v1, "DomainFilterPolicy"

    .line 120
    .line 121
    const/16 v2, 0x1a

    .line 122
    .line 123
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    const-string v1, "DexPolicy"

    .line 127
    .line 128
    const/16 v2, 0x1b

    .line 129
    .line 130
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    const-string v1, "RestrictionPolicy"

    .line 134
    .line 135
    const/16 v2, 0x1e

    .line 136
    .line 137
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    const-string v1, "ProfilePolicy"

    .line 141
    .line 142
    const/16 v2, 0x1f

    .line 143
    .line 144
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getArrayLength([Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v1, "SecContentProvider"

    .line 12
    .line 13
    const-string/jumbo v2, "getArrayLength() return 0 but some exception occurs with invalid request."

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return v0
.end method

.method public static restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    const-string v2, "SecContentProvider"

    .line 11
    .line 12
    const-string/jumbo v3, "getArrayLength() return 0 but some exception occurs with invalid request."

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    move v1, v0

    .line 19
    :goto_0
    if-lez v1, :cond_0

    .line 20
    .line 21
    aget-object p0, p0, v0

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_0
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public static restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p1, "POWER_SAVING_MODE_ALLOWED cursor return "

    .line 13
    .line 14
    const-string v0, "SecContentProvider"

    .line 15
    .line 16
    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return p0
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "insert(), uri = "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "SecContentProvider"

    .line 27
    .line 28
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    const-string/jumbo p0, "fail to get caller name"

    .line 44
    .line 45
    .line 46
    :cond_0
    const-string/jumbo v1, "called from "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const/4 p1, 0x2

    .line 61
    if-eq p0, p1, :cond_4

    .line 62
    .line 63
    const/4 p1, 0x6

    .line 64
    const-string v1, "API"

    .line 65
    .line 66
    if-eq p0, p1, :cond_3

    .line 67
    .line 68
    const/16 p1, 0xe

    .line 69
    .line 70
    if-eq p0, p1, :cond_2

    .line 71
    .line 72
    const/16 p1, 0x14

    .line 73
    .line 74
    if-eq p0, p1, :cond_1

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_1
    const-string/jumbo p0, "security_policy"

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 86
    .line 87
    if-eqz p0, :cond_c

    .line 88
    .line 89
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_c

    .line 94
    .line 95
    const-string/jumbo v1, "setDodBannerVisibleStatus"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_c

    .line 103
    .line 104
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 105
    .line 106
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v0, "isVisible"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_2
    const-string/jumbo p0, "password_policy"

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 133
    .line 134
    if-eqz p0, :cond_c

    .line 135
    .line 136
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_c

    .line 141
    .line 142
    const-string/jumbo v1, "setPwdChangeRequested"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_c

    .line 150
    .line 151
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 152
    .line 153
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 154
    .line 155
    .line 156
    const-string/jumbo v0, "flag"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_3
    const-string/jumbo p0, "certificate_policy"

    .line 173
    .line 174
    .line 175
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 180
    .line 181
    if-eqz p0, :cond_c

    .line 182
    .line 183
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string/jumbo v0, "fail"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string/jumbo v1, "module"

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    if-eqz p1, :cond_c

    .line 202
    .line 203
    const-string/jumbo v1, "notifyCertificateFailure"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_c

    .line 211
    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    if-eqz p2, :cond_c

    .line 215
    .line 216
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_4
    const-string/jumbo p0, "auditlog"

    .line 227
    .line 228
    .line 229
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    move-object v1, p0

    .line 234
    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 235
    .line 236
    if-nez v1, :cond_5

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_5
    const-string/jumbo p0, "tag"

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    const-string/jumbo v2, "uid"

    .line 248
    .line 249
    .line 250
    const-string/jumbo v3, "userid"

    .line 251
    .line 252
    .line 253
    if-eqz p1, :cond_8

    .line 254
    .line 255
    new-instance v6, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string/jumbo p1, "params"

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    if-eqz p1, :cond_6

    .line 268
    .line 269
    const-string v0, ","

    .line 270
    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 280
    .line 281
    .line 282
    :cond_6
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_7

    .line 287
    .line 288
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    const/4 v2, 0x0

    .line 313
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(Ljava/lang/String;IIILjava/util/List;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_7
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    const/4 v3, -0x1

    .line 335
    const/4 v2, 0x0

    .line 336
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(Ljava/lang/String;IIILjava/util/List;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_8
    const-string/jumbo p0, "redactedMessage"

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    const-string/jumbo v4, "message"

    .line 349
    .line 350
    .line 351
    const-string/jumbo v5, "component"

    .line 352
    .line 353
    .line 354
    const-string/jumbo v6, "outcome"

    .line 355
    .line 356
    .line 357
    const-string/jumbo v7, "group"

    .line 358
    .line 359
    .line 360
    const-string/jumbo v8, "severity"

    .line 361
    .line 362
    .line 363
    if-eqz p1, :cond_a

    .line 364
    .line 365
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-eqz p1, :cond_9

    .line 370
    .line 371
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 372
    .line 373
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object p2

    .line 424
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result p2

    .line 428
    move-object v2, p1

    .line 429
    move v3, v0

    .line 430
    move v4, v7

    .line 431
    move v5, v6

    .line 432
    move v6, v8

    .line 433
    move-object v7, v9

    .line 434
    move-object v8, v10

    .line 435
    move-object v9, p0

    .line 436
    move v10, p2

    .line 437
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 438
    .line 439
    .line 440
    goto/16 :goto_0

    .line 441
    .line 442
    :cond_9
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 443
    .line 444
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    move-object v2, p1

    .line 492
    move v4, v0

    .line 493
    move v5, v6

    .line 494
    move v6, v7

    .line 495
    move-object v7, v8

    .line 496
    move-object v8, v9

    .line 497
    move-object v9, p0

    .line 498
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_a
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 504
    .line 505
    .line 506
    move-result p0

    .line 507
    if-eqz p0, :cond_b

    .line 508
    .line 509
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .line 510
    .line 511
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 531
    .line 532
    .line 533
    move-result-object v6

    .line 534
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 543
    .line 544
    .line 545
    move-result v7

    .line 546
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v8

    .line 550
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v9

    .line 554
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 555
    .line 556
    .line 557
    move-result-object p2

    .line 558
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 559
    .line 560
    .line 561
    move-result v10

    .line 562
    const/4 p2, 0x0

    .line 563
    move-object v2, p0

    .line 564
    move v3, p1

    .line 565
    move v4, v0

    .line 566
    move v5, v6

    .line 567
    move v6, v7

    .line 568
    move-object v7, v8

    .line 569
    move-object v8, v9

    .line 570
    move-object v9, p2

    .line 571
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 572
    .line 573
    .line 574
    goto :goto_0

    .line 575
    :cond_b
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .line 576
    .line 577
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 593
    .line 594
    .line 595
    move-result p1

    .line 596
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v7

    .line 616
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    const/4 v9, 0x0

    .line 621
    move-object v2, p0

    .line 622
    move v4, p1

    .line 623
    move v5, v0

    .line 624
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    :cond_c
    :goto_0
    const/4 p0, 0x0

    .line 628
    return-object p0
.end method

.method public final onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 1
    const-string/jumbo v3, "isDodBannerVisible"

    const-string/jumbo v4, "isCameraEnabled"

    const-string/jumbo v5, "isHeadPhoneEnabled"

    const-string/jumbo v6, "isSettingsChangesAllowed"

    const-string/jumbo v7, "isSmartClipModeAllowed"

    const-string/jumbo v8, "isWifiDirectAllowed"

    const-string/jumbo v9, "isWallpaperChangeAllowed"

    const/16 v16, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 3
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "query(), uri = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " selection = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "SecContentProvider"

    invoke-static {v15, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v12, p0

    .line 4
    iget-object v12, v12, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    .line 5
    const-string/jumbo v12, "fail to get caller name"

    .line 6
    :cond_0
    const-string/jumbo v14, "called from "

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-eq v0, v13, :cond_f3

    const/4 v13, 0x3

    if-eq v0, v13, :cond_e9

    const/4 v13, 0x4

    if-eq v0, v13, :cond_d3

    const-string/jumbo v13, "browser_policy"

    const/4 v14, 0x5

    if-eq v0, v14, :cond_cd

    const/4 v14, 0x6

    if-eq v0, v14, :cond_c1

    const/16 v14, 0xa

    if-eq v0, v14, :cond_bb

    const/16 v14, 0xc

    if-eq v0, v14, :cond_b4

    const/16 v13, 0x18

    if-eq v0, v13, :cond_b1

    const/16 v13, 0x1a

    if-eq v0, v13, :cond_ae

    const/16 v13, 0x1b

    if-eq v0, v13, :cond_ab

    const/16 v13, 0x1e

    const-string/jumbo v14, "return null"

    const-string/jumbo v17, "restriction_policy"

    if-eq v0, v13, :cond_94

    const/16 v13, 0x1f

    if-eq v0, v13, :cond_91

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_64

    .line 8
    :pswitch_0
    const-string/jumbo v0, "security_policy"

    .line 9
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "getCredentialStorageStatus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v12

    .line 11
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 14
    const-string/jumbo v1, "getCredentialStorageStatus = 1"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 16
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 19
    :pswitch_1
    const-string/jumbo v0, "roaming_policy"

    .line 20
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 21
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "isRoamingDataEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "isRoamingSyncEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v16, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "isRoamingVoiceCallsEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    :goto_1
    packed-switch v16, :pswitch_data_1

    return-object v12

    .line 22
    :pswitch_2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 23
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingDataEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 26
    :pswitch_3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 27
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingSyncEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 30
    :pswitch_4
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 31
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingVoiceCallsEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2
    return-object v1

    .line 34
    :pswitch_5
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 35
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_3

    :sswitch_3
    const-string/jumbo v3, "isScreenCaptureEnabledInternal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v16, 0xd

    goto/16 :goto_3

    :sswitch_4
    const-string/jumbo v3, "isUsbHostStorageAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v16, 0xc

    goto/16 :goto_3

    :sswitch_5
    const-string/jumbo v3, "isUsbTetheringEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v16, 0xb

    goto/16 :goto_3

    :sswitch_6
    const-string/jumbo v3, "isUsbMassStorageEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v16, 0xa

    goto/16 :goto_3

    :sswitch_7
    const-string/jumbo v3, "isWifiTetheringEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v16, 0x9

    goto/16 :goto_3

    :sswitch_8
    const-string/jumbo v3, "getAllowedFOTAInfo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v16, 0x8

    goto/16 :goto_3

    :sswitch_9
    const-string/jumbo v3, "isSDCardWriteAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    const/16 v16, 0x7

    goto :goto_3

    :sswitch_a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_3

    :cond_d
    const/16 v16, 0x6

    goto :goto_3

    :sswitch_b
    const-string/jumbo v3, "isVpnAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_e
    const/16 v16, 0x5

    goto :goto_3

    :sswitch_c
    const-string/jumbo v3, "isWifiEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_3

    :cond_f
    const/16 v16, 0x4

    goto :goto_3

    :sswitch_d
    const-string/jumbo v3, "isVideoRecordAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_3

    :cond_10
    const/16 v16, 0x3

    goto :goto_3

    :sswitch_e
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_3

    :cond_11
    const/16 v16, 0x2

    goto :goto_3

    :sswitch_f
    const-string/jumbo v3, "isUsbMediaPlayerAvailable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_3

    :cond_12
    const/16 v16, 0x1

    goto :goto_3

    :sswitch_10
    const-string/jumbo v3, "isPowerSavingModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_3

    :cond_13
    const/16 v16, 0x0

    :goto_3
    packed-switch v16, :pswitch_data_2

    return-object v12

    :pswitch_6
    if-nez v2, :cond_14

    .line 36
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_15

    :cond_14
    const/4 v3, 0x0

    goto :goto_4

    :cond_15
    const/4 v14, 0x0

    goto :goto_5

    .line 37
    :goto_4
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 38
    :goto_5
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v0

    .line 39
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_7
    if-eqz v2, :cond_16

    .line 42
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_16

    const/4 v1, 0x0

    .line 43
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_6

    :cond_16
    const/4 v14, 0x0

    .line 44
    :goto_6
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 45
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUsbHostStorageAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 48
    :pswitch_8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 49
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUsbTetheringEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 51
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_9
    if-eqz v2, :cond_18

    .line 52
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_7

    .line 53
    :cond_17
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 55
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isUsbMassStorageEnabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_18
    :goto_7
    return-object v12

    .line 58
    :pswitch_a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 59
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isWifiTetheringEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 61
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 62
    :pswitch_b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 63
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "getAllowedFOTAInfo"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_21

    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_8

    .line 67
    :pswitch_c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 68
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isSDCardWriteAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 70
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_d
    if-eqz v2, :cond_19

    .line 71
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_19

    const/4 v1, 0x0

    .line 72
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_9

    :cond_19
    const/4 v14, 0x0

    .line 73
    :goto_9
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 74
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 77
    :pswitch_e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 78
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isVpnAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 81
    :pswitch_f
    const-string/jumbo v0, "wifi_policy"

    .line 82
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-nez v2, :cond_1a

    .line 83
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1b

    :cond_1a
    const/4 v1, 0x0

    goto :goto_a

    :cond_1b
    const/4 v14, 0x0

    goto :goto_b

    .line 84
    :goto_a
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    :goto_b
    if-eqz v0, :cond_1c

    .line 85
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 86
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isWifiEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 87
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 88
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1c
    return-object v12

    :pswitch_10
    if-eqz v2, :cond_1d

    .line 89
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v1, 0x0

    .line 90
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_c

    :cond_1d
    const/4 v14, 0x0

    .line 91
    :goto_c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 92
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isVideoRecordAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 94
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_11
    if-eqz v2, :cond_1e

    .line 95
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    .line 96
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_d

    :cond_1e
    const/4 v14, 0x0

    .line 97
    :goto_d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 98
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 100
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f

    :pswitch_12
    if-eqz v2, :cond_20

    .line 101
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1f

    goto :goto_e

    .line 102
    :cond_1f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 103
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 105
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUsbMediaPlayerAvailable"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 107
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f

    :cond_20
    :goto_e
    return-object v12

    .line 108
    :pswitch_13
    invoke-static {v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 109
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 111
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_21
    :goto_f
    return-object v2

    .line 112
    :pswitch_14
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 113
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_10

    :sswitch_11
    const-string/jumbo v3, "isSVoiceAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_10

    :cond_22
    const/16 v3, 0xe

    move/from16 v16, v3

    goto/16 :goto_10

    :sswitch_12
    const-string/jumbo v3, "isScreenCaptureEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_10

    :cond_23
    const/16 v16, 0xd

    goto/16 :goto_10

    :sswitch_13
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_10

    :cond_24
    const/16 v16, 0xc

    goto/16 :goto_10

    :sswitch_14
    const-string/jumbo v3, "isSDCardMoveAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_10

    :cond_25
    const/16 v16, 0xb

    goto/16 :goto_10

    :sswitch_15
    const-string/jumbo v3, "isUsbDebuggingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_10

    :cond_26
    const/16 v16, 0xa

    goto/16 :goto_10

    :sswitch_16
    const-string/jumbo v3, "isIrisCameraEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_10

    :cond_27
    const/16 v16, 0x9

    goto/16 :goto_10

    :sswitch_17
    const-string/jumbo v3, "isSafeModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_10

    :cond_28
    const/16 v16, 0x8

    goto/16 :goto_10

    :sswitch_18
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_10

    :cond_29
    const/16 v16, 0x7

    goto :goto_10

    :sswitch_19
    const-string/jumbo v3, "isSettingsChangesAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_10

    :cond_2a
    const/16 v16, 0x6

    goto :goto_10

    :sswitch_1a
    const-string/jumbo v3, "isSdCardEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_10

    :cond_2b
    const/16 v16, 0x5

    goto :goto_10

    :sswitch_1b
    const-string/jumbo v3, "isOTAUpgradeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_10

    :cond_2c
    const/16 v16, 0x4

    goto :goto_10

    :sswitch_1c
    const-string/jumbo v3, "isStopSystemAppAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_10

    :cond_2d
    const/16 v16, 0x3

    goto :goto_10

    :sswitch_1d
    const-string/jumbo v3, "isPowerOffAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_10

    :cond_2e
    const/16 v16, 0x2

    goto :goto_10

    :sswitch_1e
    const-string/jumbo v3, "isScreenPinningAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_10

    :cond_2f
    const/16 v16, 0x1

    goto :goto_10

    :sswitch_1f
    const-string/jumbo v3, "isShareListAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_10

    :cond_30
    const/16 v16, 0x0

    :goto_10
    packed-switch v16, :pswitch_data_3

    return-object v12

    :pswitch_15
    if-eqz v2, :cond_32

    .line 114
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_31

    const/4 v1, 0x0

    .line 115
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_12

    :cond_31
    const/4 v1, 0x0

    goto :goto_11

    :cond_32
    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_11
    if-eqz v2, :cond_33

    .line 116
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    .line 117
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 118
    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_12

    :cond_33
    const/4 v14, 0x0

    .line 119
    :goto_12
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSVoiceAllowed result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSVoiceAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 122
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 123
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    :pswitch_16
    if-eqz v2, :cond_35

    .line 124
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_34

    goto :goto_13

    .line 125
    :cond_34
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 126
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 128
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenCaptureEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_35
    :goto_13
    return-object v12

    :pswitch_17
    if-eqz v2, :cond_38

    .line 131
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_36

    goto :goto_15

    .line 132
    :cond_36
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_37

    .line 133
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v3, v2, v3

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 135
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_14

    :cond_37
    const/4 v3, 0x0

    .line 137
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v3

    .line 138
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 140
    :goto_14
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 142
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_38
    :goto_15
    return-object v12

    :pswitch_18
    if-eqz v2, :cond_3a

    .line 143
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_39

    goto :goto_16

    .line 144
    :cond_39
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 145
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 147
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSDCardMoveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 149
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_3a
    :goto_16
    return-object v12

    .line 150
    :pswitch_19
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 151
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbDebuggingEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 153
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    :pswitch_1a
    if-eqz v2, :cond_3c

    .line 154
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_3b

    goto :goto_17

    .line 155
    :cond_3b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 156
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 158
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isIrisCameraEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 160
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_3c
    :goto_17
    return-object v12

    .line 161
    :pswitch_1b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 162
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSafeModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 163
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 164
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    :pswitch_1c
    if-eqz v2, :cond_3d

    .line 165
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3d

    const/4 v1, 0x0

    .line 166
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_18

    :cond_3d
    const/4 v14, 0x0

    .line 167
    :goto_18
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v0

    .line 168
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 169
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 170
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    :pswitch_1d
    if-eqz v2, :cond_3f

    .line 171
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_3e

    goto :goto_19

    :cond_3e
    const/4 v1, 0x0

    .line 172
    aget-object v1, v2, v1

    .line 173
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RESTRICTIONPOLICY_SETTINGSCHANGESASUSER_METHOD return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSettingsChangesAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 178
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_3f
    :goto_19
    return-object v12

    .line 180
    :pswitch_1e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 181
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSdCardEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 182
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 183
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 184
    :pswitch_1f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 185
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOTAUpgradeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 186
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    .line 188
    :pswitch_20
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 189
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isStopSystemAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 191
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 192
    :pswitch_21
    invoke-static {v2, v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 193
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 194
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 195
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_1c

    :pswitch_22
    if-eqz v2, :cond_40

    .line 196
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_40

    const/4 v1, 0x0

    .line 197
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :cond_40
    if-eqz v2, :cond_41

    .line 198
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_41

    const/4 v1, 0x1

    .line 199
    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_1a

    :cond_41
    const/4 v1, 0x1

    .line 200
    :goto_1a
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v2, 0x200000000000000L

    invoke-virtual {v0, v11, v2, v3, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    move-result v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isScreenPinningAllowed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenPinningAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 203
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1c

    .line 205
    :pswitch_23
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_42

    .line 206
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 207
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_1b

    :cond_42
    const/4 v3, 0x0

    .line 209
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 210
    :goto_1b
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isShareListAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 211
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 212
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1c
    return-object v1

    .line 213
    :pswitch_24
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 214
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    goto/16 :goto_1d

    :sswitch_20
    const-string/jumbo v3, "isKillingActivitiesOnLeaveAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto/16 :goto_1d

    :cond_43
    const/16 v16, 0xd

    goto/16 :goto_1d

    :sswitch_21
    const-string/jumbo v3, "isGoogleAccountsAutoSyncAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto/16 :goto_1d

    :cond_44
    const/16 v16, 0xc

    goto/16 :goto_1d

    :sswitch_22
    const-string/jumbo v3, "isNFCEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto/16 :goto_1d

    :cond_45
    const/16 v16, 0xb

    goto/16 :goto_1d

    :sswitch_23
    const-string/jumbo v3, "isMockLocationEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto/16 :goto_1d

    :cond_46
    const/16 v16, 0xa

    goto/16 :goto_1d

    :sswitch_24
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto/16 :goto_1d

    :cond_47
    const/16 v16, 0x9

    goto/16 :goto_1d

    :sswitch_25
    const-string/jumbo v3, "isNonMarketAppAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto/16 :goto_1d

    :cond_48
    const/16 v16, 0x8

    goto/16 :goto_1d

    :sswitch_26
    const-string/jumbo v3, "isFirmwareRecoveryAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_1d

    :cond_49
    const/16 v16, 0x7

    goto :goto_1d

    :sswitch_27
    const-string/jumbo v3, "isLockScreenViewAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_1d

    :cond_4a
    const/16 v16, 0x6

    goto :goto_1d

    :sswitch_28
    const-string/jumbo v3, "isFirmwareAutoUpdateAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_1d

    :cond_4b
    const/16 v16, 0x5

    goto :goto_1d

    :sswitch_29
    const-string/jumbo v3, "isLockScreenEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_1d

    :cond_4c
    const/16 v16, 0x4

    goto :goto_1d

    :sswitch_2a
    const-string/jumbo v3, "isMicrophoneEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_1d

    :cond_4d
    const/16 v16, 0x3

    goto :goto_1d

    :sswitch_2b
    const-string/jumbo v3, "isMicrophoneEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_1d

    :cond_4e
    const/16 v16, 0x2

    goto :goto_1d

    :sswitch_2c
    const-string/jumbo v3, "isGoogleCrashReportedAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_1d

    :cond_4f
    const/16 v16, 0x1

    goto :goto_1d

    :sswitch_2d
    const-string/jumbo v3, "isNFCEnabledWithMsg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    goto :goto_1d

    :cond_50
    const/16 v16, 0x0

    :goto_1d
    packed-switch v16, :pswitch_data_4

    .line 215
    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .line 216
    :pswitch_25
    const-string/jumbo v1, "isKillingActivitiesOnLeaveAllowed return = "

    if-nez v2, :cond_51

    .line 217
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " callingUid : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 219
    :cond_51
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    .line 220
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 221
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 222
    const-string v3, " userid : "

    .line 223
    invoke-static {v1, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    aget-object v2, v2, v4

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_1e
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isKillingActivitiesOnLeaveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 228
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 229
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 230
    :pswitch_26
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 231
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGoogleAccountsAutoSyncAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 233
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 234
    :pswitch_27
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isNFCEnabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 235
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 236
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 237
    :pswitch_28
    const-string/jumbo v1, "callingUid = "

    if-nez v2, :cond_52

    .line 238
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 239
    invoke-static {v10, v1, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 240
    :cond_52
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    .line 241
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 242
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMockLocationEnabled return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMockLocationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 246
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 247
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :pswitch_29
    if-eqz v2, :cond_54

    .line 248
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_53

    goto :goto_20

    .line 249
    :cond_53
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 250
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 252
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 253
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 254
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_54
    :goto_20
    return-object v12

    :pswitch_2a
    if-eqz v2, :cond_55

    .line 255
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 257
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_21

    .line 258
    :cond_55
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 259
    :goto_21
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isNonMarketAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 261
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :pswitch_2b
    if-eqz v2, :cond_57

    .line 262
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_56

    goto :goto_22

    .line 263
    :cond_56
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 264
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 266
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFirmwareRecoveryAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 268
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_57
    :goto_22
    return-object v12

    :pswitch_2c
    if-eqz v2, :cond_5a

    .line 269
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_58

    goto :goto_24

    .line 270
    :cond_58
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_59

    .line 271
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 272
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v3

    .line 273
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    goto :goto_23

    :cond_59
    const/4 v4, 0x0

    .line 275
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v4

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 277
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 278
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isLockScreenViewAllowed return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLockScreenViewAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 280
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 281
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_5a
    :goto_24
    return-object v12

    :pswitch_2d
    if-eqz v2, :cond_5c

    .line 282
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5b

    goto :goto_25

    .line 283
    :cond_5b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 284
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 286
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFirmwareAutoUpdateAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 287
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 288
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_5c
    :goto_25
    return-object v12

    :pswitch_2e
    if-eqz v2, :cond_5e

    .line 289
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5d

    goto :goto_26

    .line 290
    :cond_5d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 291
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 293
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLockScreenEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 294
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 295
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_5e
    :goto_26
    return-object v12

    :pswitch_2f
    if-eqz v2, :cond_61

    .line 296
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_5f

    goto :goto_28

    .line 297
    :cond_5f
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_60

    .line 298
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 299
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v3

    .line 300
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 301
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_27

    :cond_60
    const/4 v4, 0x0

    .line 302
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v4

    .line 303
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 305
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMicrophoneEnabled return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMicrophoneEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 307
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 308
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_61
    :goto_28
    return-object v12

    :pswitch_30
    if-eqz v2, :cond_63

    .line 309
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_62

    goto :goto_29

    :cond_62
    const/4 v1, 0x0

    .line 310
    aget-object v1, v2, v1

    .line 311
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 312
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMicrophoneEnabledAsUser return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMicrophoneEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 316
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 317
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2a

    :cond_63
    :goto_29
    return-object v12

    .line 318
    :pswitch_31
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 319
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGoogleCrashReportedAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 320
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 321
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2a

    .line 322
    :pswitch_32
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isNFCEnabledWithMsg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 323
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 324
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2a
    return-object v1

    .line 325
    :pswitch_33
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 326
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4

    goto/16 :goto_2b

    :sswitch_2e
    const-string/jumbo v3, "isAirplaneModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto/16 :goto_2b

    :cond_64
    const/16 v1, 0xe

    move/from16 v16, v1

    goto/16 :goto_2b

    :sswitch_2f
    const-string/jumbo v3, "isClipboardShareAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    goto/16 :goto_2b

    :cond_65
    const/16 v16, 0xd

    goto/16 :goto_2b

    :sswitch_30
    const-string/jumbo v3, "isFactoryResetAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto/16 :goto_2b

    :cond_66
    const/16 v16, 0xc

    goto/16 :goto_2b

    :sswitch_31
    const-string/jumbo v3, "isAndroidBeamAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    goto/16 :goto_2b

    :cond_67
    const/16 v16, 0xb

    goto/16 :goto_2b

    :sswitch_32
    const-string/jumbo v3, "isDeveloperModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    goto/16 :goto_2b

    :cond_68
    const/16 v16, 0xa

    goto/16 :goto_2b

    :sswitch_33
    const-string/jumbo v3, "isClipboardShareAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    goto/16 :goto_2b

    :cond_69
    const/16 v16, 0x9

    goto/16 :goto_2b

    :sswitch_34
    const-string/jumbo v3, "isBackgroundProcessLimitEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto/16 :goto_2b

    :cond_6a
    const/16 v16, 0x8

    goto/16 :goto_2b

    :sswitch_35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    goto :goto_2b

    :cond_6b
    const/16 v16, 0x7

    goto :goto_2b

    :sswitch_36
    const-string/jumbo v3, "isBackupAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    goto :goto_2b

    :cond_6c
    const/16 v16, 0x6

    goto :goto_2b

    :sswitch_37
    const-string/jumbo v3, "isAudioRecordAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_2b

    :cond_6d
    const/16 v16, 0x5

    goto :goto_2b

    :sswitch_38
    const-string/jumbo v3, "isCellularDataAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    goto :goto_2b

    :cond_6e
    const/16 v16, 0x4

    goto :goto_2b

    :sswitch_39
    const-string/jumbo v3, "isClipboardAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_2b

    :cond_6f
    const/16 v16, 0x3

    goto :goto_2b

    :sswitch_3a
    const-string/jumbo v3, "isClipboardAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    goto :goto_2b

    :cond_70
    const/16 v16, 0x2

    goto :goto_2b

    :sswitch_3b
    const-string/jumbo v3, "isBluetoothTetheringEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    goto :goto_2b

    :cond_71
    const/16 v16, 0x1

    goto :goto_2b

    :sswitch_3c
    const-string/jumbo v3, "isDataSavingAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    goto :goto_2b

    :cond_72
    const/16 v16, 0x0

    :goto_2b
    packed-switch v16, :pswitch_data_5

    return-object v12

    :pswitch_34
    if-eqz v2, :cond_73

    .line 327
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_73

    const/4 v1, 0x0

    .line 328
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_2c

    :cond_73
    const/4 v14, 0x0

    .line 329
    :goto_2c
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v0

    .line 330
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAirplaneModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 331
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 332
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    .line 333
    :pswitch_35
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 334
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardShareAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 335
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 336
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    .line 337
    :pswitch_36
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 338
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFactoryResetAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 339
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 340
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    :pswitch_37
    if-eqz v2, :cond_74

    .line 341
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_74

    const/4 v0, 0x0

    .line 342
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 343
    :cond_74
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isAndroidBeamAllowed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 344
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 345
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    :pswitch_38
    if-eqz v2, :cond_75

    .line 346
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_75

    const/4 v1, 0x0

    .line 347
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_2d

    :cond_75
    const/4 v14, 0x0

    .line 348
    :goto_2d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 349
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDeveloperModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 350
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 351
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_39
    if-eqz v2, :cond_77

    .line 352
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_76

    goto :goto_2e

    :cond_76
    const/4 v1, 0x0

    .line 353
    aget-object v1, v2, v1

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v0

    .line 356
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardShareAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 357
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 358
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    :cond_77
    :goto_2e
    return-object v12

    .line 359
    :pswitch_3a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 360
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBackgroundProcessLimitEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 361
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 362
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    :pswitch_3b
    if-eqz v2, :cond_79

    .line 363
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_78

    goto :goto_2f

    .line 364
    :cond_78
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 365
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 366
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 367
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 368
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 369
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    :cond_79
    :goto_2f
    return-object v12

    :pswitch_3c
    if-eqz v2, :cond_7b

    .line 370
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_7a

    goto :goto_30

    .line 371
    :cond_7a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 372
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 373
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 374
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBackupAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 375
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 376
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    :cond_7b
    :goto_30
    return-object v12

    :pswitch_3d
    if-eqz v2, :cond_7c

    .line 377
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7c

    const/4 v1, 0x0

    .line 378
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_31

    :cond_7c
    const/4 v14, 0x0

    .line 379
    :goto_31
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 380
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAudioRecordAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 381
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 382
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    .line 383
    :pswitch_3e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 384
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isCellularDataAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 385
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 386
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    :pswitch_3f
    if-eqz v2, :cond_7e

    .line 387
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_7d

    goto :goto_32

    :cond_7d
    const/4 v1, 0x0

    .line 388
    aget-object v1, v2, v1

    .line 389
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 390
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 391
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SemKnoxPolicyContract.RestrictionPolicy.CLIPBOARD_ALLOWED_AS_USER return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 394
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 395
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_35

    :cond_7e
    :goto_32
    return-object v12

    :pswitch_40
    if-eqz v2, :cond_7f

    .line 396
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_80

    :cond_7f
    const/4 v3, 0x0

    goto :goto_33

    .line 397
    :cond_80
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 398
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 399
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_34

    .line 400
    :goto_33
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 401
    :goto_34
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 402
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 403
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_35

    .line 404
    :pswitch_41
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 405
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 406
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 407
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_35

    .line 408
    :pswitch_42
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    .line 409
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDataSavingAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 410
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 411
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_35
    return-object v1

    .line 412
    :pswitch_43
    const-string/jumbo v0, "password_policy"

    .line 413
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 414
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5

    goto/16 :goto_36

    :sswitch_3d
    const-string/jumbo v3, "isBiometricAuthenticationEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    goto :goto_36

    :cond_81
    const/16 v16, 0x7

    goto :goto_36

    :sswitch_3e
    const-string/jumbo v3, "isPasswordVisibilityEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    goto :goto_36

    :cond_82
    const/16 v16, 0x6

    goto :goto_36

    :sswitch_3f
    const-string/jumbo v3, "isBiometricAuthenticationEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto :goto_36

    :cond_83
    const/16 v16, 0x5

    goto :goto_36

    :sswitch_40
    const-string/jumbo v3, "isChangeRequested"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto :goto_36

    :cond_84
    const/16 v16, 0x4

    goto :goto_36

    :sswitch_41
    const-string/jumbo v3, "getCurrentFailedPasswordAttempts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    goto :goto_36

    :cond_85
    const/16 v16, 0x3

    goto :goto_36

    :sswitch_42
    const-string/jumbo v3, "getPasswordLockDelay"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    goto :goto_36

    :cond_86
    const/16 v16, 0x2

    goto :goto_36

    :sswitch_43
    const-string/jumbo v3, "isPasswordVisibilityEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    goto :goto_36

    :cond_87
    const/16 v16, 0x1

    goto/16 :goto_36

    :sswitch_44
    const-string/jumbo v3, "getMaximumFailedPasswordsForDisable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto/16 :goto_36

    :cond_88
    const/16 v16, 0x0

    :goto_36
    packed-switch v16, :pswitch_data_6

    return-object v12

    :pswitch_44
    if-eqz v2, :cond_8a

    .line 415
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_89

    goto :goto_37

    .line 416
    :cond_89
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 417
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 418
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 419
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBiometricAuthenticationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 420
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 421
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_8a
    :goto_37
    return-object v12

    :pswitch_45
    if-eqz v2, :cond_8c

    .line 422
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_8b

    goto :goto_38

    :cond_8b
    const/4 v1, 0x0

    .line 423
    aget-object v1, v2, v1

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 425
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isPasswordVisibilityEnabledAsUser return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPasswordVisibilityEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 428
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 429
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_8c
    :goto_38
    return-object v12

    :pswitch_46
    if-eqz v2, :cond_8e

    .line 430
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_8d

    goto :goto_39

    :cond_8d
    const/4 v1, 0x0

    .line 431
    aget-object v1, v2, v1

    .line 432
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v2, v3

    .line 433
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 434
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v0

    .line 435
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBiometricAuthenticationEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 436
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 437
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_8e
    :goto_39
    return-object v12

    .line 438
    :pswitch_47
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 439
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isChangeRequested"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 441
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    .line 442
    :pswitch_48
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 443
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 444
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 445
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_3c

    .line 446
    :pswitch_49
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 447
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getPasswordLockDelay"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 449
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    .line 450
    :pswitch_4a
    const-string/jumbo v1, "isPasswordVisibilityEnabled callingUid = "

    if-nez v2, :cond_8f

    .line 451
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 452
    invoke-static {v10, v1, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 453
    :cond_8f
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    .line 454
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 455
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v4

    .line 457
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isPasswordVisibilityEnabled return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPasswordVisibilityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 461
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 462
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3c

    :pswitch_4b
    if-eqz v2, :cond_90

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v2, v3

    .line 465
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 466
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    goto/16 :goto_3b

    .line 467
    :cond_90
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 468
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getMaximumFailedPasswordsForDisable"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 471
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3c
    return-object v1

    :cond_91
    if-eqz v1, :cond_f4

    .line 472
    const-string/jumbo v0, "profilepolicy"

    .line 473
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/profile/ProfilePolicyService;

    if-nez v0, :cond_92

    return-object v12

    .line 474
    :cond_92
    const-string v3, "Restriction"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    goto :goto_3d

    :cond_93
    const/4 v1, 0x0

    .line 475
    aget-object v1, v2, v1

    .line 476
    invoke-virtual {v0, v12, v1}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 477
    new-instance v12, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 478
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3d
    return-object v12

    .line 479
    :cond_94
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 480
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6

    goto/16 :goto_3e

    :sswitch_45
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    goto/16 :goto_3e

    :cond_95
    const/16 v16, 0xa

    goto/16 :goto_3e

    :sswitch_46
    const-string/jumbo v3, "showToastIfIntelligenceOnlineProcessingDisallowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    goto/16 :goto_3e

    :cond_96
    const/16 v16, 0x9

    goto/16 :goto_3e

    :sswitch_47
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    goto/16 :goto_3e

    :cond_97
    const/16 v16, 0x8

    goto/16 :goto_3e

    :sswitch_48
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    goto :goto_3e

    :cond_98
    const/16 v16, 0x7

    goto :goto_3e

    :sswitch_49
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    goto :goto_3e

    :cond_99
    const/16 v16, 0x6

    goto :goto_3e

    :sswitch_4a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    goto :goto_3e

    :cond_9a
    const/16 v16, 0x5

    goto :goto_3e

    :sswitch_4b
    const-string/jumbo v3, "isIntelligenceOnlineProcessingAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    goto :goto_3e

    :cond_9b
    const/16 v16, 0x4

    goto :goto_3e

    :sswitch_4c
    const-string/jumbo v3, "isLocalContactStorageAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    goto :goto_3e

    :cond_9c
    const/16 v16, 0x3

    goto :goto_3e

    :sswitch_4d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    goto/16 :goto_3e

    :cond_9d
    const/16 v16, 0x2

    goto/16 :goto_3e

    :sswitch_4e
    const-string/jumbo v3, "isPowerOffAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    goto/16 :goto_3e

    :cond_9e
    const/16 v16, 0x1

    goto/16 :goto_3e

    :sswitch_4f
    const-string/jumbo v3, "isPowerSavingModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    goto/16 :goto_3e

    :cond_9f
    const/16 v16, 0x0

    :goto_3e
    packed-switch v16, :pswitch_data_7

    .line 481
    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :pswitch_4c
    if-eqz v2, :cond_a2

    .line 482
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_a0

    goto :goto_3f

    .line 483
    :cond_a0
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_a1

    .line 484
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    aget-object v4, v2, v4

    .line 485
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 486
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 487
    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_45

    :cond_a1
    const/4 v4, 0x0

    .line 488
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v4

    .line 489
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 490
    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_45

    :cond_a2
    :goto_3f
    return-object v12

    .line 491
    :pswitch_4d
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->showToastIfIntelligenceOnlineProcessingDisallowed(I)Z

    move-result v0

    goto/16 :goto_45

    :pswitch_4e
    if-eqz v2, :cond_a4

    .line 492
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_a3

    goto/16 :goto_40

    .line 493
    :cond_a3
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 494
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 495
    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_45

    :cond_a4
    :goto_40
    return-object v12

    :pswitch_4f
    const/4 v4, 0x0

    if-eqz v2, :cond_a5

    .line 496
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a5

    .line 497
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_41

    :cond_a5
    const/4 v14, 0x0

    .line 498
    :goto_41
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v0

    goto/16 :goto_45

    :pswitch_50
    if-eqz v2, :cond_a7

    .line 499
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_a6

    goto/16 :goto_42

    .line 500
    :cond_a6
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 501
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 502
    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_45

    :cond_a7
    :goto_42
    return-object v12

    :pswitch_51
    const/4 v4, 0x0

    if-eqz v2, :cond_a8

    .line 503
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a8

    .line 504
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_43

    :cond_a8
    const/4 v14, 0x0

    .line 505
    :goto_43
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_45

    :pswitch_52
    if-eqz v2, :cond_a9

    .line 506
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a9

    const/4 v3, 0x0

    .line 507
    aget-object v2, v2, v3

    .line 508
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 509
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(I)Z

    move-result v0

    goto :goto_45

    .line 510
    :cond_a9
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_45

    .line 511
    :pswitch_53
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto/16 :goto_45

    :pswitch_54
    if-eqz v2, :cond_aa

    .line 512
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_aa

    const/4 v3, 0x0

    .line 513
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_44

    :cond_aa
    const/4 v14, 0x0

    .line 514
    :goto_44
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_45

    .line 515
    :pswitch_55
    invoke-static {v2, v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    goto/16 :goto_45

    .line 516
    :pswitch_56
    invoke-static {v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 517
    :goto_45
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 518
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 519
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    .line 520
    :cond_ab
    const-string/jumbo v0, "dex_policy"

    .line 521
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dex/DexPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 522
    const-string/jumbo v2, "isDexDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string/jumbo v2, "isScreenTimeoutChangeAllowed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    return-object v12

    .line 523
    :cond_ac
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result v0

    .line 524
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenTimeoutChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 525
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 526
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_46

    .line 527
    :cond_ad
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v0

    .line 528
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDexDisabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 529
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 530
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_46
    return-object v1

    :cond_ae
    if-eqz v1, :cond_f4

    .line 531
    const-string/jumbo v0, "getDefaultCaptivePortalUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    goto/16 :goto_47

    .line 532
    :cond_af
    const-string/jumbo v0, "getDefaultCaptivePortalUrl"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string/jumbo v1, "firewall"

    .line 534
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/firewall/Firewall;

    if-eqz v1, :cond_b0

    .line 535
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v12

    .line 536
    :cond_b0
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 537
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v12, v1

    :goto_47
    return-object v12

    .line 538
    :cond_b1
    const-string/jumbo v0, "date_time_policy"

    .line 539
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 540
    const-string/jumbo v2, "isDateTimeChangeEnalbed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string/jumbo v2, "getAutomaticTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    return-object v12

    .line 541
    :cond_b2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 542
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getAutomaticTime"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 543
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 544
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 545
    :cond_b3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 546
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDateTimeChangeEnalbed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 547
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 548
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_48
    return-object v1

    .line 549
    :cond_b4
    const-string/jumbo v0, "location_policy"

    .line 550
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 551
    const-string/jumbo v3, "isLocationProviderBlockedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b6

    const-string/jumbo v2, "isGPSStateChangeAllowed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    return-object v12

    .line 552
    :cond_b5
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 553
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGPSStateChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 554
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 555
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4a

    :cond_b6
    if-eqz v2, :cond_ba

    .line 556
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_b7

    goto :goto_4b

    .line 557
    :cond_b7
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_b9

    .line 558
    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_b8

    .line 559
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 560
    const-string/jumbo v3, "isLocationProviderBlockedAsUser using userId = "

    const-string v4, " instead of UserHandle.USER_CURRENT"

    .line 561
    invoke-static {v1, v3, v4, v15}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    const/4 v3, 0x0

    .line 562
    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_49

    :cond_b9
    const/4 v3, 0x0

    .line 563
    aget-object v1, v2, v3

    invoke-virtual {v0, v1, v11}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 564
    :goto_49
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLocationProviderBlockedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 565
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 566
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_4a
    return-object v1

    :cond_ba
    :goto_4b
    return-object v12

    .line 567
    :cond_bb
    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 568
    const-string/jumbo v2, "misc_policy"

    .line 569
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    if-eqz v2, :cond_f4

    .line 570
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7

    goto/16 :goto_4c

    :sswitch_50
    const-string/jumbo v3, "getURLFilterReportEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    goto/16 :goto_4c

    :cond_bc
    const/16 v16, 0x3

    goto/16 :goto_4c

    :sswitch_51
    const-string/jumbo v3, "getURLFilterEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    goto/16 :goto_4c

    :cond_bd
    const/16 v16, 0x2

    goto/16 :goto_4c

    :sswitch_52
    const-string/jumbo v3, "isGlobalProxyAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    goto/16 :goto_4c

    :cond_be
    const/16 v16, 0x1

    goto/16 :goto_4c

    :sswitch_53
    const-string/jumbo v3, "getURLFilterList"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    goto/16 :goto_4c

    :cond_bf
    const/16 v16, 0x0

    :goto_4c
    packed-switch v16, :pswitch_data_8

    return-object v12

    .line 571
    :pswitch_57
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 572
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 573
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterReportEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 574
    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4e

    :pswitch_58
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 575
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 576
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    .line 577
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 578
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 579
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    .line 580
    :pswitch_59
    invoke-virtual {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 581
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGlobalProxyAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 582
    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    .line 583
    :pswitch_5a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 584
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v0

    .line 585
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterList"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_c0

    .line 586
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 587
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 588
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4d

    :cond_c0
    :goto_4e
    return-object v1

    .line 589
    :cond_c1
    const-string/jumbo v0, "certificate_policy"

    .line 590
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 591
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_8

    :goto_4f
    move/from16 v13, v16

    goto/16 :goto_50

    :sswitch_54
    const-string/jumbo v3, "isRevocationCheckEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    goto :goto_4f

    :cond_c2
    const/4 v13, 0x4

    goto/16 :goto_50

    :sswitch_55
    const-string/jumbo v3, "notifyCertificateFailure"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    goto :goto_4f

    :cond_c3
    const/4 v13, 0x3

    goto/16 :goto_50

    :sswitch_56
    const-string/jumbo v3, "isCaCertificateDisabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c4

    goto :goto_4f

    :cond_c4
    const/4 v13, 0x2

    goto/16 :goto_50

    :sswitch_57
    const-string/jumbo v3, "isUserRemoveCertificatesAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c5

    goto :goto_4f

    :cond_c5
    const/4 v13, 0x1

    goto/16 :goto_50

    :sswitch_58
    const-string/jumbo v3, "isOcspCheckEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c6

    goto :goto_4f

    :cond_c6
    const/4 v13, 0x0

    :goto_50
    packed-switch v13, :pswitch_data_9

    goto/16 :goto_54

    .line 592
    :pswitch_5b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 593
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isRevocationCheckEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 594
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 595
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :pswitch_5c
    if-eqz v2, :cond_c8

    .line 596
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_c7

    goto/16 :goto_51

    :cond_c7
    const/4 v1, 0x0

    .line 597
    aget-object v1, v2, v1

    const/4 v4, 0x1

    aget-object v4, v2, v4

    aget-object v2, v2, v3

    .line 598
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 599
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_54

    :cond_c8
    :goto_51
    return-object v12

    :pswitch_5d
    if-eqz v2, :cond_cb

    .line 600
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_c9

    goto/16 :goto_52

    .line 601
    :cond_c9
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_ca

    .line 602
    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_ca
    const/4 v1, 0x0

    .line 603
    aget-object v1, v2, v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 604
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isCaCertificateDisabledAsUser"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 605
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 606
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_cb
    :goto_52
    return-object v12

    :pswitch_5e
    if-eqz v2, :cond_cc

    .line 607
    array-length v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_cc

    const/4 v1, 0x0

    .line 608
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 609
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v0

    goto/16 :goto_53

    .line 610
    :cond_cc
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 611
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 612
    :goto_53
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUserRemoveCertificatesAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 613
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 614
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 615
    :pswitch_5f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 616
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isOcspCheckEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 617
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 618
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_54
    return-object v12

    .line 619
    :cond_cd
    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 620
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9

    goto/16 :goto_55

    :sswitch_59
    const-string/jumbo v2, "getCookiesSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    goto/16 :goto_55

    :cond_ce
    const/16 v16, 0x4

    goto/16 :goto_55

    :sswitch_5a
    const-string/jumbo v2, "getHttpProxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    goto/16 :goto_55

    :cond_cf
    const/16 v16, 0x3

    goto/16 :goto_55

    :sswitch_5b
    const-string/jumbo v2, "getJavaScriptSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    goto/16 :goto_55

    :cond_d0
    const/16 v16, 0x2

    goto/16 :goto_55

    :sswitch_5c
    const-string/jumbo v2, "getAutoFillSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d1

    goto/16 :goto_55

    :cond_d1
    const/16 v16, 0x1

    goto/16 :goto_55

    :sswitch_5d
    const-string/jumbo v2, "getPopupsSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    goto/16 :goto_55

    :cond_d2
    const/16 v16, 0x0

    :goto_55
    packed-switch v16, :pswitch_data_a

    return-object v12

    .line 621
    :pswitch_60
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 622
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getCookiesSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 623
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 624
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_56

    .line 625
    :pswitch_61
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    .line 626
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getHttpProxy"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 627
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_56

    .line 628
    :pswitch_62
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 629
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getJavaScriptSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 630
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 631
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_56

    .line 632
    :pswitch_63
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 633
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getAutoFillSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 634
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 635
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_56

    .line 636
    :pswitch_64
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 637
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getPopupsSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 638
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 639
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_56
    return-object v1

    :cond_d3
    move v3, v13

    if-eqz v1, :cond_f4

    .line 640
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_a

    :goto_57
    move/from16 v11, v16

    goto/16 :goto_58

    :sswitch_5e
    const-string/jumbo v0, "bluetoothLogForRemote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    goto :goto_57

    :cond_d4
    const/4 v11, 0x6

    goto/16 :goto_58

    :sswitch_5f
    const-string/jumbo v0, "bluetoothLogForDevice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    goto :goto_57

    :cond_d5
    const/4 v11, 0x5

    goto/16 :goto_58

    :sswitch_60
    const-string/jumbo v0, "isPairingAllowedbySecurityPolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto :goto_57

    :cond_d6
    move v11, v3

    goto/16 :goto_58

    :sswitch_61
    const-string/jumbo v0, "isHeadsetAllowedBySecurityPolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    goto :goto_57

    :cond_d7
    const/4 v11, 0x3

    goto/16 :goto_58

    :sswitch_62
    const-string/jumbo v0, "isBluetoothLogEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d8

    goto :goto_57

    :cond_d8
    const/4 v11, 0x2

    goto/16 :goto_58

    :sswitch_63
    const-string/jumbo v0, "bluetoothLog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    goto :goto_57

    :cond_d9
    const/4 v11, 0x1

    goto/16 :goto_58

    :sswitch_64
    const-string/jumbo v0, "isProfileAuthorizedBySecurityPolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    goto :goto_57

    :cond_da
    const/4 v11, 0x0

    :goto_58
    packed-switch v11, :pswitch_data_b

    goto/16 :goto_5e

    :pswitch_65
    if-eqz v2, :cond_dc

    .line 641
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_dc

    .line 642
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_db

    goto/16 :goto_59

    :cond_db
    const/4 v0, 0x0

    .line 643
    aget-object v0, v2, v0

    const/4 v1, 0x1

    aget-object v1, v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    :cond_dc
    :goto_59
    return-object v12

    :pswitch_66
    if-eqz v2, :cond_e0

    .line 644
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_e0

    .line 645
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_dd

    goto/16 :goto_5a

    :cond_dd
    const/4 v0, 0x2

    .line 646
    aget-object v1, v2, v0

    if-nez v1, :cond_de

    const/4 v0, 0x0

    .line 647
    aget-object v0, v2, v0

    const/4 v1, 0x1

    aget-object v1, v2, v1

    .line 648
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 649
    invoke-static {v0, v1, v12}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_5e

    :cond_de
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 650
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_df

    .line 651
    aget-object v0, v2, v0

    aget-object v1, v2, v1

    .line 652
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 653
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 654
    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_5e

    .line 655
    :cond_df
    const-string v0, "BluetoothAdapter is null"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    :cond_e0
    :goto_5a
    return-object v12

    :pswitch_67
    if-eqz v2, :cond_e2

    .line 656
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e1

    goto/16 :goto_5b

    :cond_e1
    const/4 v0, 0x0

    .line 657
    aget-object v0, v2, v0

    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v0

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PAIRINGALLOWEDBYSECURITY = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isPairingAllowedbySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 660
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 661
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5e

    :cond_e2
    :goto_5b
    return-object v12

    :pswitch_68
    if-eqz v2, :cond_e4

    .line 662
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e3

    goto/16 :goto_5c

    .line 663
    :cond_e3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 664
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 665
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isHeadsetAllowedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 666
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 667
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5e

    :cond_e4
    :goto_5c
    return-object v12

    .line 668
    :pswitch_69
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    .line 669
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isBluetoothLogEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 670
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 671
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5e

    :pswitch_6a
    if-eqz v2, :cond_e6

    .line 672
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_e6

    .line 673
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_e5

    goto/16 :goto_5d

    :cond_e5
    const/4 v0, 0x0

    .line 674
    aget-object v0, v2, v0

    const/4 v6, 0x1

    aget-object v1, v2, v6

    invoke-static {v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    :cond_e6
    :goto_5d
    return-object v12

    :pswitch_6b
    if-eqz v2, :cond_e8

    .line 675
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e7

    goto/16 :goto_5e

    :cond_e7
    const/4 v0, 0x0

    .line 676
    aget-object v0, v2, v0

    .line 677
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 678
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 679
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isProfileAuthorizedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 680
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 681
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_e8
    :goto_5e
    return-object v12

    :cond_e9
    move v4, v13

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 682
    const-string/jumbo v0, "bluetooth_policy"

    .line 683
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 684
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_b

    :goto_5f
    move/from16 v13, v16

    goto/16 :goto_60

    :sswitch_65
    const-string/jumbo v4, "isOutgoingCallsAllowed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    goto :goto_5f

    :cond_ea
    move v13, v3

    goto/16 :goto_60

    :sswitch_66
    const-string/jumbo v3, "isBLEAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_eb

    goto :goto_5f

    :cond_eb
    move v13, v4

    goto/16 :goto_60

    :sswitch_67
    const-string/jumbo v3, "isDiscoverableEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ec

    goto :goto_5f

    :cond_ec
    move v13, v5

    goto/16 :goto_60

    :sswitch_68
    const-string/jumbo v3, "isDesktopConnectivityEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    goto :goto_5f

    :cond_ed
    move v13, v6

    goto/16 :goto_60

    :sswitch_69
    const-string/jumbo v3, "isBluetoothEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ee

    goto :goto_5f

    :cond_ee
    const/4 v13, 0x0

    :goto_60
    packed-switch v13, :pswitch_data_c

    return-object v12

    :pswitch_6c
    if-eqz v2, :cond_f0

    .line 685
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_ef

    goto/16 :goto_61

    :cond_ef
    const/4 v1, 0x0

    .line 686
    aget-object v1, v2, v1

    .line 687
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 688
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v0

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isOutgoingCallsAllowed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOutgoingCallsAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 691
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 692
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_63

    :cond_f0
    :goto_61
    return-object v12

    .line 693
    :pswitch_6d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 694
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBLEAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 695
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 696
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_63

    .line 697
    :pswitch_6e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 698
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDiscoverableEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 699
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 700
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_63

    :pswitch_6f
    if-eqz v2, :cond_f2

    .line 701
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_f1

    goto/16 :goto_62

    :cond_f1
    const/4 v1, 0x0

    .line 702
    aget-object v1, v2, v1

    .line 703
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 704
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v0

    .line 705
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDesktopConnectivityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 706
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 707
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_63

    :cond_f2
    :goto_62
    return-object v12

    .line 708
    :pswitch_70
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isBluetoothEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 711
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 712
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_63
    return-object v1

    .line 713
    :cond_f3
    const-string/jumbo v0, "auditlog"

    .line 714
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v0, :cond_f4

    if-eqz v1, :cond_f4

    .line 715
    const-string/jumbo v2, "isAuditLogEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 716
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    .line 717
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 718
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 719
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_f4
    :goto_64
    return-object v12

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_43
        :pswitch_33
        :pswitch_24
        :pswitch_14
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3edf31d1 -> :sswitch_2
        -0x15a386e9 -> :sswitch_1
        -0xc145ad8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6a3a5990 -> :sswitch_10
        -0x562f9482 -> :sswitch_f
        -0x4e3d6d40 -> :sswitch_e
        -0x460411da -> :sswitch_d
        -0x39b5211e -> :sswitch_c
        -0x37226d22 -> :sswitch_b
        -0x30c133a0 -> :sswitch_a
        -0x28516cec -> :sswitch_9
        -0xebe1ca -> :sswitch_8
        0x12bbc810 -> :sswitch_7
        0x5f1771f4 -> :sswitch_6
        0x730fdeab -> :sswitch_5
        0x75020c0f -> :sswitch_4
        0x788dd2ce -> :sswitch_3
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6c43a0eb -> :sswitch_1f
        -0x57f5d70e -> :sswitch_1e
        -0x55af2a6c -> :sswitch_1d
        -0x42b9a7be -> :sswitch_1c
        -0x3d0295e2 -> :sswitch_1b
        -0x331a660a -> :sswitch_1a
        -0x2873ac11 -> :sswitch_19
        -0x1ad99baa -> :sswitch_18
        -0x53b1dd2 -> :sswitch_17
        0x21990efc -> :sswitch_16
        0x3e90c48d -> :sswitch_15
        0x405a90ec -> :sswitch_14
        0x5bb25232 -> :sswitch_13
        0x6bef28f1 -> :sswitch_12
        0x7c45f31f -> :sswitch_11
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x74a4d725 -> :sswitch_2d
        -0x6c0db8af -> :sswitch_2c
        -0x694bd3d6 -> :sswitch_2b
        -0x553c4d53 -> :sswitch_2a
        -0x4d525a40 -> :sswitch_29
        -0x39e13355 -> :sswitch_28
        -0x2de531be -> :sswitch_27
        -0x1ab59b72 -> :sswitch_26
        -0xa2586fa -> :sswitch_25
        0x5be9d3d -> :sswitch_24
        0x26581d58 -> :sswitch_23
        0x36e6d3e0 -> :sswitch_22
        0x4bd14915 -> :sswitch_21
        0x6c3b6517 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x657fd646 -> :sswitch_3c
        -0x5d9fe8ab -> :sswitch_3b
        -0x5c7edb84 -> :sswitch_3a
        -0x4bfd3947 -> :sswitch_39
        -0x38cefab6 -> :sswitch_38
        -0x36978d55 -> :sswitch_37
        -0x34742384 -> :sswitch_36
        -0x2b582cae -> :sswitch_35
        0x3e05fd -> :sswitch_34
        0x7ed85f2 -> :sswitch_33
        0x2ea4b8a5 -> :sswitch_32
        0x3593cbd4 -> :sswitch_31
        0x4ef9c1f9 -> :sswitch_30
        0x71560275 -> :sswitch_2f
        0x77163a49 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x4e857510 -> :sswitch_44
        -0xe2e3396 -> :sswitch_43
        0x17f43207 -> :sswitch_42
        0x234b9a81 -> :sswitch_41
        0x48803b14 -> :sswitch_40
        0x4e20b298 -> :sswitch_3f
        0x65054427 -> :sswitch_3e
        0x75f9239b -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x6a3a5990 -> :sswitch_4f
        -0x55af2a6c -> :sswitch_4e
        -0x4e3d6d40 -> :sswitch_4d
        -0x499d26f4 -> :sswitch_4c
        -0x414b3a47 -> :sswitch_4b
        -0x30c133a0 -> :sswitch_4a
        -0x2b582cae -> :sswitch_49
        -0x1ad99baa -> :sswitch_48
        0x5be9d3d -> :sswitch_47
        0x2be8dca6 -> :sswitch_46
        0x5bb25232 -> :sswitch_45
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_53
        -0x3ecb9a99 -> :sswitch_52
        0x3ba3e2f0 -> :sswitch_51
        0x6f38e3dc -> :sswitch_50
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x51cc33cc -> :sswitch_58
        -0x4d8cc16d -> :sswitch_57
        -0x3c036018 -> :sswitch_56
        -0x374aace4 -> :sswitch_55
        0x692685a1 -> :sswitch_54
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        -0x67f870ad -> :sswitch_5d
        -0x499a7018 -> :sswitch_5c
        -0x364e80b3 -> :sswitch_5b
        0x9515810 -> :sswitch_5a
        0x78a801b7 -> :sswitch_59
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        -0x74fa9afd -> :sswitch_64
        -0x5319be4a -> :sswitch_63
        -0x4ebf90df -> :sswitch_62
        -0x3ce44687 -> :sswitch_61
        -0x3a6a65ad -> :sswitch_60
        0x65788769 -> :sswitch_5f
        0x7d586159 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        -0x625ba203 -> :sswitch_69
        -0x11927f68 -> :sswitch_68
        0x52d2774 -> :sswitch_67
        0x3670f097 -> :sswitch_66
        0x6422cbe9 -> :sswitch_65
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
