.class final enum Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 12
    .line 13
    const-string v2, "FAIL"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v3, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 22
    .line 23
    const-string v3, "UNKNOWN_ERROR"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v4, v4, v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 32
    .line 33
    const-string v4, "FILE_NOT_FOUND"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v5, v5, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->code:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 8
    .line 9
    return-object v0
.end method
