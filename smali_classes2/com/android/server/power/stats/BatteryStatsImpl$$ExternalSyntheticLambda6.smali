.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$2:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryPermil()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryCCInfo()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    .line 27
    .line 28
    sub-int/2addr v4, v2

    .line 29
    if-lez v4, :cond_2

    .line 30
    .line 31
    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargePermil:I

    .line 32
    .line 33
    add-int/2addr v5, v4

    .line 34
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargePermil:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    .line 44
    .line 45
    sub-int/2addr v4, v2

    .line 46
    if-lez v4, :cond_2

    .line 47
    .line 48
    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceChargePermil:I

    .line 49
    .line 50
    add-int/2addr v5, v4

    .line 51
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceChargePermil:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v1}, Landroid/view/Display;->isOffState(I)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    .line 61
    .line 62
    sub-int/2addr v4, v2

    .line 63
    if-lez v4, :cond_2

    .line 64
    .line 65
    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargePermil:I

    .line 66
    .line 67
    add-int/2addr v5, v4

    .line 68
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargePermil:I

    .line 69
    .line 70
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/4 v5, 0x0

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    .line 78
    .line 79
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    .line 80
    .line 81
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    .line 91
    .line 92
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    .line 93
    .line 94
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-static {p0}, Landroid/view/Display;->isOffState(I)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    .line 104
    .line 105
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    .line 106
    .line 107
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    .line 108
    .line 109
    :cond_5
    :goto_1
    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    .line 116
    .line 117
    sub-int/2addr v1, v3

    .line 118
    if-lez v1, :cond_8

    .line 119
    .line 120
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargeCoulombCounter:I

    .line 121
    .line 122
    add-int/2addr v2, v1

    .line 123
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargeCoulombCounter:I

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 133
    .line 134
    sub-int/2addr v1, v3

    .line 135
    if-lez v1, :cond_8

    .line 136
    .line 137
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    .line 138
    .line 139
    add-int/2addr v2, v1

    .line 140
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    invoke-static {v1}, Landroid/view/Display;->isOffState(I)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 150
    .line 151
    sub-int/2addr v1, v3

    .line 152
    if-lez v1, :cond_8

    .line 153
    .line 154
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    .line 155
    .line 156
    add-int/2addr v2, v1

    .line 157
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    .line 158
    .line 159
    :cond_8
    :goto_2
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    .line 166
    .line 167
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_9
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_a

    .line 175
    .line 176
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    .line 177
    .line 178
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_a
    invoke-static {p0}, Landroid/view/Display;->isOffState(I)Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-eqz p0, :cond_b

    .line 186
    .line 187
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    .line 188
    .line 189
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 190
    .line 191
    :cond_b
    :goto_3
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 193
    .line 194
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 195
    .line 196
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$2:I

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryPermil()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iget-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsSubScreen:Z

    .line 203
    .line 204
    if-eqz v3, :cond_d

    .line 205
    .line 206
    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_c

    .line 211
    .line 212
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSubScreenOnUnplugLevelPermil:I

    .line 213
    .line 214
    sub-int/2addr v1, v2

    .line 215
    if-lez v1, :cond_d

    .line 216
    .line 217
    iget v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountSubScreenOnSinceChargePermil:I

    .line 218
    .line 219
    add-int/2addr v3, v1

    .line 220
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountSubScreenOnSinceChargePermil:I

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_c
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_d

    .line 228
    .line 229
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSubScreenDozeUnplugLevelPermil:I

    .line 230
    .line 231
    sub-int/2addr v1, v2

    .line 232
    if-lez v1, :cond_d

    .line 233
    .line 234
    iget v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountSubScreenDozeSinceChargePermil:I

    .line 235
    .line 236
    add-int/2addr v3, v1

    .line 237
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountSubScreenDozeSinceChargePermil:I

    .line 238
    .line 239
    :cond_d
    :goto_4
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsSubScreen:Z

    .line 240
    .line 241
    if-eqz v1, :cond_10

    .line 242
    .line 243
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    const/4 v3, 0x0

    .line 248
    if-eqz v1, :cond_e

    .line 249
    .line 250
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSubScreenOnUnplugLevelPermil:I

    .line 251
    .line 252
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSubScreenDozeUnplugLevelPermil:I

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_e
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    if-eqz p0, :cond_f

    .line 260
    .line 261
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSubScreenOnUnplugLevelPermil:I

    .line 262
    .line 263
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSubScreenDozeUnplugLevelPermil:I

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_f
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSubScreenOnUnplugLevelPermil:I

    .line 267
    .line 268
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSubScreenDozeUnplugLevelPermil:I

    .line 269
    .line 270
    :cond_10
    :goto_5
    return-void

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
