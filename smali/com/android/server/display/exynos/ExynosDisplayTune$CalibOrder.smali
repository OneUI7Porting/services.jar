.class final enum Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 2
    .line 3
    const-string/jumbo v1, "none"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 13
    .line 14
    const-string/jumbo v2, "cgc_dither"

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 22
    .line 23
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 24
    .line 25
    const-string/jumbo v3, "degamma"

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-direct {v2, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    sput-object v2, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 33
    .line 34
    new-instance v3, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 35
    .line 36
    const-string/jumbo v4, "gamma"

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    invoke-direct {v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 44
    .line 45
    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 46
    .line 47
    const-string/jumbo v6, "gamma_matrix"

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    invoke-direct {v4, v6, v7}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    sput-object v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 55
    .line 56
    new-instance v6, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 57
    .line 58
    const-string/jumbo v7, "hsc48_lcg_s"

    .line 59
    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    invoke-direct {v6, v7, v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v6, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 66
    .line 67
    new-instance v7, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 68
    .line 69
    const-string/jumbo v8, "hsc48_lcg_e"

    .line 70
    .line 71
    .line 72
    const/4 v9, 0x6

    .line 73
    invoke-direct {v7, v8, v9, v6, v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;ILcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;I)V

    .line 74
    .line 75
    .line 76
    sput-object v7, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 77
    .line 78
    new-instance v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 79
    .line 80
    const-string/jumbo v5, "hsc"

    .line 81
    .line 82
    .line 83
    const/4 v9, 0x7

    .line 84
    invoke-direct {v8, v5, v9}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 88
    .line 89
    new-instance v9, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 90
    .line 91
    const-string/jumbo v5, "scl"

    .line 92
    .line 93
    .line 94
    const/16 v10, 0x8

    .line 95
    .line 96
    invoke-direct {v9, v5, v10}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    sput-object v9, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 100
    .line 101
    new-instance v10, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 102
    .line 103
    const-string/jumbo v5, "cgc17_enc_s"

    .line 104
    .line 105
    .line 106
    const/16 v11, 0x9

    .line 107
    .line 108
    invoke-direct {v10, v5, v11}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sput-object v10, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 112
    .line 113
    new-instance v11, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 114
    .line 115
    const/16 v5, 0xa

    .line 116
    .line 117
    const/16 v12, 0x33

    .line 118
    .line 119
    const-string/jumbo v13, "cgc17_enc_e"

    .line 120
    .line 121
    .line 122
    invoke-direct {v11, v13, v5, v10, v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;ILcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;I)V

    .line 123
    .line 124
    .line 125
    sput-object v11, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 126
    .line 127
    new-instance v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 128
    .line 129
    const-string/jumbo v5, "cgc17_dec"

    .line 130
    .line 131
    .line 132
    const/16 v13, 0xb

    .line 133
    .line 134
    invoke-direct {v12, v5, v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    sput-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 138
    .line 139
    new-instance v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 140
    .line 141
    const-string/jumbo v5, "cgc17_con"

    .line 142
    .line 143
    .line 144
    const/16 v14, 0xc

    .line 145
    .line 146
    invoke-direct {v13, v5, v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    sput-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 150
    .line 151
    new-instance v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 152
    .line 153
    const-string/jumbo v5, "de"

    .line 154
    .line 155
    .line 156
    const/16 v15, 0xd

    .line 157
    .line 158
    invoke-direct {v14, v5, v15}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    sput-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 162
    .line 163
    new-instance v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 164
    .line 165
    const-string/jumbo v5, "max"

    .line 166
    .line 167
    .line 168
    move-object/from16 v16, v14

    .line 169
    .line 170
    const/16 v14, 0xe

    .line 171
    .line 172
    invoke-direct {v15, v5, v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 176
    .line 177
    move-object v5, v6

    .line 178
    move-object v6, v7

    .line 179
    move-object v7, v8

    .line 180
    move-object v8, v9

    .line 181
    move-object v9, v10

    .line 182
    move-object v10, v11

    .line 183
    move-object v11, v12

    .line 184
    move-object v12, v13

    .line 185
    move-object/from16 v13, v16

    .line 186
    .line 187
    move-object v14, v15

    .line 188
    filled-new-array/range {v0 .. v14}, [Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 193
    .line 194
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id:I

    add-int/lit8 p2, p2, 0x1

    .line 4
    sput p2, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder$CalibCounter;->nid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder$CalibCounter;->nid:I

    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;I)V
    .locals 0

    .line 5
    iget p3, p3, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id:I

    add-int/lit8 p4, p4, -0x1

    add-int/2addr p4, p3

    .line 6
    invoke-direct {p0, p2, p4, p1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final id()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id:I

    .line 2
    .line 3
    return p0
.end method
