.class final enum Lcom/android/server/am/BGProtectManager$exceptFlag;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 2
    .line 3
    const-string v1, "NORMALANDKNOXPWHL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 12
    .line 13
    const-string v2, "NORMALONLY"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v3, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 20
    .line 21
    const-string v3, "NORMALANDKNOX"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v4, v4, v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 28
    .line 29
    new-instance v3, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 30
    .line 31
    const-string v4, "KNOXONLY"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v5, v5, v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 38
    .line 39
    new-instance v4, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 40
    .line 41
    const-string v5, "SANDBOX"

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    invoke-direct {v4, v6, v6, v5}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 48
    .line 49
    new-instance v5, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 50
    .line 51
    const-string v6, "CAMERAGUARD"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v7, v7, v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 58
    .line 59
    new-instance v6, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 60
    .line 61
    const-string v7, "BROWSERMAIN"

    .line 62
    .line 63
    const/4 v8, 0x6

    .line 64
    invoke-direct {v6, v8, v8, v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 68
    .line 69
    new-instance v7, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 70
    .line 71
    const-string v8, "HOMEHUB"

    .line 72
    .line 73
    const/4 v9, 0x7

    .line 74
    invoke-direct {v7, v9, v9, v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 78
    .line 79
    new-instance v8, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 80
    .line 81
    const-string v9, "CAMERAMEDIA"

    .line 82
    .line 83
    const/16 v10, 0x8

    .line 84
    .line 85
    invoke-direct {v8, v10, v10, v9}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sput-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 89
    .line 90
    filled-new-array/range {v0 .. v8}, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 95
    .line 96
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/BGProtectManager$exceptFlag;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/BGProtectManager$exceptFlag;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/BGProtectManager$exceptFlag;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    .line 2
    .line 3
    return p0
.end method
