.class final enum Lcom/android/server/am/mars/EventRecorder$EventType;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/mars/EventRecorder$EventType;

.field public static final enum FREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

.field public static final enum NONE:Lcom/android/server/am/mars/EventRecorder$EventType;

.field public static final enum UID_RUN:Lcom/android/server/am/mars/EventRecorder$EventType;

.field public static final enum UID_STOP:Lcom/android/server/am/mars/EventRecorder$EventType;

.field public static final enum UNFREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;


# instance fields
.field private final number:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetnumber(Lcom/android/server/am/mars/EventRecorder$EventType;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/mars/EventRecorder$EventType;->number:I

    .line 2
    .line 3
    return p0
.end method

.method public static -$$Nest$smisUnfreezeEvent(Ljava/lang/Integer;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object v0, Lcom/android/server/am/mars/EventRecorder$EventType;->UNFREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/am/mars/EventRecorder$EventType;->number:I

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 2
    .line 3
    const-string v1, "UID_RUN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/am/mars/EventRecorder$EventType;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/am/mars/EventRecorder$EventType;->UID_RUN:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 12
    .line 13
    const-string v2, "UID_STOP"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v3, v2}, Lcom/android/server/am/mars/EventRecorder$EventType;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/am/mars/EventRecorder$EventType;->UID_STOP:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 22
    .line 23
    const-string v3, "FREEZE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v4, v4, v3}, Lcom/android/server/am/mars/EventRecorder$EventType;-><init>(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/am/mars/EventRecorder$EventType;->FREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 32
    .line 33
    const-string v4, "UNFREEZE"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v5, v5, v4}, Lcom/android/server/am/mars/EventRecorder$EventType;-><init>(IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/server/am/mars/EventRecorder$EventType;->UNFREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 40
    .line 41
    new-instance v4, Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 42
    .line 43
    const-string v5, "NONE"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v6, v6, v5}, Lcom/android/server/am/mars/EventRecorder$EventType;-><init>(IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/server/am/mars/EventRecorder$EventType;->NONE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 50
    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/server/am/mars/EventRecorder$EventType;->$VALUES:[Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/am/mars/EventRecorder$EventType;->number:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromInt(I)Lcom/android/server/am/mars/EventRecorder$EventType;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/am/mars/EventRecorder$EventType;->values()[Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/android/server/am/mars/EventRecorder$EventType;->number:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p0, Lcom/android/server/am/mars/EventRecorder$EventType;->NONE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 20
    .line 21
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/mars/EventRecorder$EventType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/EventRecorder$EventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/mars/EventRecorder$EventType;->$VALUES:[Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/mars/EventRecorder$EventType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/mars/EventRecorder$EventType;->number:I

    .line 2
    .line 3
    return p0
.end method