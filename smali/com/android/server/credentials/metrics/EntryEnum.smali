.class public final enum Lcom/android/server/credentials/metrics/EntryEnum;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final sKeyToEntryCode:Ljava/util/Map;


# instance fields
.field private final mInnerMetricCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/android/server/credentials/metrics/EntryEnum;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/credentials/metrics/EntryEnum;

    .line 12
    .line 13
    const-string v3, "ACTION_ENTRY"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v4, v4, v3}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/credentials/metrics/EntryEnum;

    .line 22
    .line 23
    const-string v5, "CREDENTIAL_ENTRY"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v6, v6, v5}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 30
    .line 31
    new-instance v5, Lcom/android/server/credentials/metrics/EntryEnum;

    .line 32
    .line 33
    const-string v7, "REMOTE_ENTRY"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v8, v8, v7}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 40
    .line 41
    new-instance v7, Lcom/android/server/credentials/metrics/EntryEnum;

    .line 42
    .line 43
    const-string v9, "AUTHENTICATION_ENTRY"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v10, v10, v9}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 50
    .line 51
    filled-new-array {v0, v1, v3, v5, v7}, [Lcom/android/server/credentials/metrics/EntryEnum;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->$VALUES:[Lcom/android/server/credentials/metrics/EntryEnum;

    .line 56
    .line 57
    const/4 v0, 0x5

    .line 58
    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 59
    .line 60
    new-instance v9, Ljava/util/AbstractMap$SimpleEntry;

    .line 61
    .line 62
    iget v1, v1, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v11, "action_key"

    .line 69
    .line 70
    invoke-direct {v9, v11, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    aput-object v9, v0, v2

    .line 74
    .line 75
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 76
    .line 77
    iget v2, v7, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string/jumbo v7, "authentication_action_key"

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v7, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    aput-object v1, v0, v4

    .line 90
    .line 91
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 92
    .line 93
    iget v2, v5, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string/jumbo v4, "remote_entry_key"

    .line 100
    .line 101
    .line 102
    invoke-direct {v1, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    aput-object v1, v0, v6

    .line 106
    .line 107
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 108
    .line 109
    iget v2, v3, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 110
    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string/jumbo v4, "credential_key"

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    aput-object v1, v0, v8

    .line 122
    .line 123
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 124
    .line 125
    iget v2, v3, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 126
    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const-string/jumbo v3, "save_entry_key"

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    aput-object v1, v0, v10

    .line 138
    .line 139
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->sKeyToEntryCode:Ljava/util/Map;

    .line 144
    .line 145
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 5
    .line 6
    return-void
.end method

.method public static getMetricCodeFromString(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->sKeyToEntryCode:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string p0, "EntryEnum"

    .line 10
    .line 11
    const-string v0, "Attempted to use an unsupported string key entry type"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 19
    .line 20
    return p0

    .line 21
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/EntryEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/credentials/metrics/EntryEnum;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/credentials/metrics/EntryEnum;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/EntryEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->$VALUES:[Lcom/android/server/credentials/metrics/EntryEnum;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/EntryEnum;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/credentials/metrics/EntryEnum;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getMetricCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 2
    .line 3
    return p0
.end method
