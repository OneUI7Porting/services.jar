.class final enum Lcom/android/server/trust/TrustManagerService$TrustState;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/trust/TrustManagerService$TrustState;

.field public static final enum TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

.field public static final enum TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

.field public static final enum UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 2
    .line 3
    const-string v1, "UNTRUSTED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 12
    .line 13
    const-string v2, "TRUSTABLE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 22
    .line 23
    const-string v3, "TRUSTED"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->$VALUES:[Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 36
    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/trust/TrustManagerService$TrustState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/trust/TrustManagerService$TrustState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->$VALUES:[Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/trust/TrustManagerService$TrustState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 8
    .line 9
    return-object v0
.end method