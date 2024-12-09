.class public final Lcom/android/server/am/mars/database/MARsComponentTracker;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public isEnabledCT:Z


# direct methods
.method public static sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    const/4 v4, 0x6

    .line 9
    const/4 v5, 0x5

    .line 10
    const/4 v6, 0x4

    .line 11
    const/4 v7, 0x3

    .line 12
    const/4 v8, 0x2

    .line 13
    const/4 v9, -0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    const/4 v11, 0x1

    .line 16
    const-string v12, "android"

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v13

    .line 24
    if-eqz v13, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v13, v10

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v13, v11

    .line 30
    :goto_1
    const-string/jumbo v14, "system"

    .line 31
    .line 32
    .line 33
    if-eqz v13, :cond_2

    .line 34
    .line 35
    move-object/from16 v19, v14

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-object/from16 v19, v1

    .line 39
    .line 40
    :goto_2
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move-object/from16 v17, v0

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_4
    :goto_3
    move-object/from16 v17, v14

    .line 53
    .line 54
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    sparse-switch v0, :sswitch_data_0

    .line 62
    .line 63
    .line 64
    :goto_5
    move v0, v9

    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :sswitch_0
    const-string/jumbo v0, "startService"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_5
    move v0, v3

    .line 78
    goto :goto_6

    .line 79
    :sswitch_1
    const-string/jumbo v0, "bindService"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_6
    move v0, v4

    .line 90
    goto :goto_6

    .line 91
    :sswitch_2
    const-string v0, "alarm"

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_7

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_7
    move v0, v5

    .line 101
    goto :goto_6

    .line 102
    :sswitch_3
    const-string/jumbo v0, "job"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_8

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_8
    move v0, v6

    .line 113
    goto :goto_6

    .line 114
    :sswitch_4
    const-string/jumbo v0, "provider"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_9

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_9
    move v0, v7

    .line 125
    goto :goto_6

    .line 126
    :sswitch_5
    const-string/jumbo v0, "backup"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_a

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_a
    move v0, v8

    .line 137
    goto :goto_6

    .line 138
    :sswitch_6
    const-string/jumbo v0, "broadcast"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_b

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_b
    move v0, v11

    .line 149
    goto :goto_6

    .line 150
    :sswitch_7
    const-string v0, "activity"

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_c

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_c
    move v0, v10

    .line 160
    :goto_6
    packed-switch v0, :pswitch_data_0

    .line 161
    .line 162
    .line 163
    move/from16 v20, v9

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :pswitch_0
    move/from16 v20, v11

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :pswitch_1
    move/from16 v20, v8

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :pswitch_2
    move/from16 v20, v4

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :pswitch_3
    move/from16 v20, v3

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :pswitch_4
    move/from16 v20, v7

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :pswitch_5
    move/from16 v20, v5

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :pswitch_6
    move/from16 v20, v6

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :pswitch_7
    move/from16 v20, v10

    .line 188
    .line 189
    :goto_7
    const v15, 0x18768

    .line 190
    .line 191
    .line 192
    move/from16 v16, p3

    .line 193
    .line 194
    move/from16 v18, p5

    .line 195
    .line 196
    move-object/from16 v21, p4

    .line 197
    .line 198
    move-object/from16 v22, p6

    .line 199
    .line 200
    invoke-static/range {v15 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    nop

    .line 205
    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_7
        -0x607e173f -> :sswitch_6
        -0x533f8a3e -> :sswitch_5
        -0x3adbfa0f -> :sswitch_4
        0x19bbd -> :sswitch_3
        0x5897a51 -> :sswitch_2
        0x54856bb8 -> :sswitch_1
        0x6e4047f3 -> :sswitch_0
    .end sparse-switch

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
