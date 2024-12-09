.class public final synthetic Lcom/android/internal/protolog/ProtoLogImpl_54989576$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_ERROR_enabled:[Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 4
    .line 5
    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-boolean v2, p0, v3

    .line 13
    .line 14
    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x1

    .line 21
    aput-boolean v4, p0, v5

    .line 22
    .line 23
    sget-object v4, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    .line 24
    .line 25
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/4 v7, 0x2

    .line 30
    aput-boolean v6, p0, v7

    .line 31
    .line 32
    sget-object v6, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    .line 33
    .line 34
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    const/4 v9, 0x3

    .line 39
    aput-boolean v8, p0, v9

    .line 40
    .line 41
    sget-object v8, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    .line 42
    .line 43
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    const/4 v11, 0x4

    .line 48
    aput-boolean v10, p0, v11

    .line 49
    .line 50
    sget-object v10, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    .line 51
    .line 52
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v12, 0x5

    .line 57
    aput-boolean v0, p0, v12

    .line 58
    .line 59
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 60
    .line 61
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    aput-boolean v13, p0, v3

    .line 68
    .line 69
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    aput-boolean v13, p0, v5

    .line 74
    .line 75
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    aput-boolean v13, p0, v7

    .line 80
    .line 81
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    aput-boolean v13, p0, v9

    .line 86
    .line 87
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    aput-boolean v13, p0, v11

    .line 92
    .line 93
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    aput-boolean v0, p0, v12

    .line 98
    .line 99
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 100
    .line 101
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    aput-boolean v13, p0, v3

    .line 108
    .line 109
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    aput-boolean v13, p0, v5

    .line 114
    .line 115
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    aput-boolean v13, p0, v7

    .line 120
    .line 121
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    aput-boolean v13, p0, v9

    .line 126
    .line 127
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    aput-boolean v13, p0, v11

    .line 132
    .line 133
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    aput-boolean v0, p0, v12

    .line 138
    .line 139
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_BOOT_enabled:[Z

    .line 140
    .line 141
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 142
    .line 143
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 144
    .line 145
    .line 146
    move-result v13

    .line 147
    aput-boolean v13, p0, v3

    .line 148
    .line 149
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    aput-boolean v13, p0, v5

    .line 154
    .line 155
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    aput-boolean v13, p0, v7

    .line 160
    .line 161
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    aput-boolean v13, p0, v9

    .line 166
    .line 167
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    aput-boolean v13, p0, v11

    .line 172
    .line 173
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    aput-boolean v0, p0, v12

    .line 178
    .line 179
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    .line 180
    .line 181
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 182
    .line 183
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    aput-boolean v13, p0, v3

    .line 188
    .line 189
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    aput-boolean v13, p0, v5

    .line 194
    .line 195
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    aput-boolean v13, p0, v7

    .line 200
    .line 201
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    aput-boolean v13, p0, v9

    .line 206
    .line 207
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    aput-boolean v13, p0, v11

    .line 212
    .line 213
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    aput-boolean v0, p0, v12

    .line 218
    .line 219
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 220
    .line 221
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 222
    .line 223
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    aput-boolean v13, p0, v3

    .line 228
    .line 229
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 230
    .line 231
    .line 232
    move-result v13

    .line 233
    aput-boolean v13, p0, v5

    .line 234
    .line 235
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    aput-boolean v13, p0, v7

    .line 240
    .line 241
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    aput-boolean v13, p0, v9

    .line 246
    .line 247
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 248
    .line 249
    .line 250
    move-result v13

    .line 251
    aput-boolean v13, p0, v11

    .line 252
    .line 253
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    aput-boolean v0, p0, v12

    .line 258
    .line 259
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    .line 260
    .line 261
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 262
    .line 263
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    aput-boolean v13, p0, v3

    .line 268
    .line 269
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 270
    .line 271
    .line 272
    move-result v13

    .line 273
    aput-boolean v13, p0, v5

    .line 274
    .line 275
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    aput-boolean v13, p0, v7

    .line 280
    .line 281
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 282
    .line 283
    .line 284
    move-result v13

    .line 285
    aput-boolean v13, p0, v9

    .line 286
    .line 287
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    aput-boolean v13, p0, v11

    .line 292
    .line 293
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    aput-boolean v0, p0, v12

    .line 298
    .line 299
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    .line 300
    .line 301
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 302
    .line 303
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    aput-boolean v13, p0, v3

    .line 308
    .line 309
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 310
    .line 311
    .line 312
    move-result v13

    .line 313
    aput-boolean v13, p0, v5

    .line 314
    .line 315
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 316
    .line 317
    .line 318
    move-result v13

    .line 319
    aput-boolean v13, p0, v7

    .line 320
    .line 321
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    aput-boolean v13, p0, v9

    .line 326
    .line 327
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    aput-boolean v13, p0, v11

    .line 332
    .line 333
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    aput-boolean v0, p0, v12

    .line 338
    .line 339
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    .line 340
    .line 341
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 342
    .line 343
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 344
    .line 345
    .line 346
    move-result v13

    .line 347
    aput-boolean v13, p0, v3

    .line 348
    .line 349
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 350
    .line 351
    .line 352
    move-result v13

    .line 353
    aput-boolean v13, p0, v5

    .line 354
    .line 355
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 356
    .line 357
    .line 358
    move-result v13

    .line 359
    aput-boolean v13, p0, v7

    .line 360
    .line 361
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 362
    .line 363
    .line 364
    move-result v13

    .line 365
    aput-boolean v13, p0, v9

    .line 366
    .line 367
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 368
    .line 369
    .line 370
    move-result v13

    .line 371
    aput-boolean v13, p0, v11

    .line 372
    .line 373
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    aput-boolean v0, p0, v12

    .line 378
    .line 379
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    .line 380
    .line 381
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 382
    .line 383
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 384
    .line 385
    .line 386
    move-result v13

    .line 387
    aput-boolean v13, p0, v3

    .line 388
    .line 389
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 390
    .line 391
    .line 392
    move-result v13

    .line 393
    aput-boolean v13, p0, v5

    .line 394
    .line 395
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 396
    .line 397
    .line 398
    move-result v13

    .line 399
    aput-boolean v13, p0, v7

    .line 400
    .line 401
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    aput-boolean v13, p0, v9

    .line 406
    .line 407
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 408
    .line 409
    .line 410
    move-result v13

    .line 411
    aput-boolean v13, p0, v11

    .line 412
    .line 413
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    aput-boolean v0, p0, v12

    .line 418
    .line 419
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    .line 420
    .line 421
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 422
    .line 423
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 424
    .line 425
    .line 426
    move-result v13

    .line 427
    aput-boolean v13, p0, v3

    .line 428
    .line 429
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 430
    .line 431
    .line 432
    move-result v13

    .line 433
    aput-boolean v13, p0, v5

    .line 434
    .line 435
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 436
    .line 437
    .line 438
    move-result v13

    .line 439
    aput-boolean v13, p0, v7

    .line 440
    .line 441
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 442
    .line 443
    .line 444
    move-result v13

    .line 445
    aput-boolean v13, p0, v9

    .line 446
    .line 447
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 448
    .line 449
    .line 450
    move-result v13

    .line 451
    aput-boolean v13, p0, v11

    .line 452
    .line 453
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    aput-boolean v0, p0, v12

    .line 458
    .line 459
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 460
    .line 461
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 462
    .line 463
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 464
    .line 465
    .line 466
    move-result v13

    .line 467
    aput-boolean v13, p0, v3

    .line 468
    .line 469
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 470
    .line 471
    .line 472
    move-result v13

    .line 473
    aput-boolean v13, p0, v5

    .line 474
    .line 475
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 476
    .line 477
    .line 478
    move-result v13

    .line 479
    aput-boolean v13, p0, v7

    .line 480
    .line 481
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 482
    .line 483
    .line 484
    move-result v13

    .line 485
    aput-boolean v13, p0, v9

    .line 486
    .line 487
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 488
    .line 489
    .line 490
    move-result v13

    .line 491
    aput-boolean v13, p0, v11

    .line 492
    .line 493
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    aput-boolean v0, p0, v12

    .line 498
    .line 499
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 500
    .line 501
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 502
    .line 503
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 504
    .line 505
    .line 506
    move-result v13

    .line 507
    aput-boolean v13, p0, v3

    .line 508
    .line 509
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 510
    .line 511
    .line 512
    move-result v13

    .line 513
    aput-boolean v13, p0, v5

    .line 514
    .line 515
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 516
    .line 517
    .line 518
    move-result v13

    .line 519
    aput-boolean v13, p0, v7

    .line 520
    .line 521
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 522
    .line 523
    .line 524
    move-result v13

    .line 525
    aput-boolean v13, p0, v9

    .line 526
    .line 527
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 528
    .line 529
    .line 530
    move-result v13

    .line 531
    aput-boolean v13, p0, v11

    .line 532
    .line 533
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    aput-boolean v0, p0, v12

    .line 538
    .line 539
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 540
    .line 541
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 542
    .line 543
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 544
    .line 545
    .line 546
    move-result v13

    .line 547
    aput-boolean v13, p0, v3

    .line 548
    .line 549
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 550
    .line 551
    .line 552
    move-result v13

    .line 553
    aput-boolean v13, p0, v5

    .line 554
    .line 555
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 556
    .line 557
    .line 558
    move-result v13

    .line 559
    aput-boolean v13, p0, v7

    .line 560
    .line 561
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 562
    .line 563
    .line 564
    move-result v13

    .line 565
    aput-boolean v13, p0, v9

    .line 566
    .line 567
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 568
    .line 569
    .line 570
    move-result v13

    .line 571
    aput-boolean v13, p0, v11

    .line 572
    .line 573
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    aput-boolean v0, p0, v12

    .line 578
    .line 579
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    .line 580
    .line 581
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 582
    .line 583
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 584
    .line 585
    .line 586
    move-result v13

    .line 587
    aput-boolean v13, p0, v3

    .line 588
    .line 589
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 590
    .line 591
    .line 592
    move-result v13

    .line 593
    aput-boolean v13, p0, v5

    .line 594
    .line 595
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 596
    .line 597
    .line 598
    move-result v13

    .line 599
    aput-boolean v13, p0, v7

    .line 600
    .line 601
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 602
    .line 603
    .line 604
    move-result v13

    .line 605
    aput-boolean v13, p0, v9

    .line 606
    .line 607
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 608
    .line 609
    .line 610
    move-result v13

    .line 611
    aput-boolean v13, p0, v11

    .line 612
    .line 613
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    aput-boolean v0, p0, v12

    .line 618
    .line 619
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 620
    .line 621
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 622
    .line 623
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 624
    .line 625
    .line 626
    move-result v13

    .line 627
    aput-boolean v13, p0, v3

    .line 628
    .line 629
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 630
    .line 631
    .line 632
    move-result v13

    .line 633
    aput-boolean v13, p0, v5

    .line 634
    .line 635
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 636
    .line 637
    .line 638
    move-result v13

    .line 639
    aput-boolean v13, p0, v7

    .line 640
    .line 641
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 642
    .line 643
    .line 644
    move-result v13

    .line 645
    aput-boolean v13, p0, v9

    .line 646
    .line 647
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 648
    .line 649
    .line 650
    move-result v13

    .line 651
    aput-boolean v13, p0, v11

    .line 652
    .line 653
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    aput-boolean v0, p0, v12

    .line 658
    .line 659
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 660
    .line 661
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 662
    .line 663
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 664
    .line 665
    .line 666
    move-result v13

    .line 667
    aput-boolean v13, p0, v3

    .line 668
    .line 669
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 670
    .line 671
    .line 672
    move-result v13

    .line 673
    aput-boolean v13, p0, v5

    .line 674
    .line 675
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 676
    .line 677
    .line 678
    move-result v13

    .line 679
    aput-boolean v13, p0, v7

    .line 680
    .line 681
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 682
    .line 683
    .line 684
    move-result v13

    .line 685
    aput-boolean v13, p0, v9

    .line 686
    .line 687
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 688
    .line 689
    .line 690
    move-result v13

    .line 691
    aput-boolean v13, p0, v11

    .line 692
    .line 693
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    aput-boolean v0, p0, v12

    .line 698
    .line 699
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 700
    .line 701
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 702
    .line 703
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 704
    .line 705
    .line 706
    move-result v13

    .line 707
    aput-boolean v13, p0, v3

    .line 708
    .line 709
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 710
    .line 711
    .line 712
    move-result v13

    .line 713
    aput-boolean v13, p0, v5

    .line 714
    .line 715
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 716
    .line 717
    .line 718
    move-result v13

    .line 719
    aput-boolean v13, p0, v7

    .line 720
    .line 721
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 722
    .line 723
    .line 724
    move-result v13

    .line 725
    aput-boolean v13, p0, v9

    .line 726
    .line 727
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 728
    .line 729
    .line 730
    move-result v13

    .line 731
    aput-boolean v13, p0, v11

    .line 732
    .line 733
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    aput-boolean v0, p0, v12

    .line 738
    .line 739
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 740
    .line 741
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 742
    .line 743
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 744
    .line 745
    .line 746
    move-result v13

    .line 747
    aput-boolean v13, p0, v3

    .line 748
    .line 749
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 750
    .line 751
    .line 752
    move-result v13

    .line 753
    aput-boolean v13, p0, v5

    .line 754
    .line 755
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 756
    .line 757
    .line 758
    move-result v13

    .line 759
    aput-boolean v13, p0, v7

    .line 760
    .line 761
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 762
    .line 763
    .line 764
    move-result v13

    .line 765
    aput-boolean v13, p0, v9

    .line 766
    .line 767
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 768
    .line 769
    .line 770
    move-result v13

    .line 771
    aput-boolean v13, p0, v11

    .line 772
    .line 773
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    aput-boolean v0, p0, v12

    .line 778
    .line 779
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    .line 780
    .line 781
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 782
    .line 783
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 784
    .line 785
    .line 786
    move-result v13

    .line 787
    aput-boolean v13, p0, v3

    .line 788
    .line 789
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 790
    .line 791
    .line 792
    move-result v13

    .line 793
    aput-boolean v13, p0, v5

    .line 794
    .line 795
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 796
    .line 797
    .line 798
    move-result v13

    .line 799
    aput-boolean v13, p0, v7

    .line 800
    .line 801
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 802
    .line 803
    .line 804
    move-result v13

    .line 805
    aput-boolean v13, p0, v9

    .line 806
    .line 807
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 808
    .line 809
    .line 810
    move-result v13

    .line 811
    aput-boolean v13, p0, v11

    .line 812
    .line 813
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 814
    .line 815
    .line 816
    move-result v0

    .line 817
    aput-boolean v0, p0, v12

    .line 818
    .line 819
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 820
    .line 821
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 822
    .line 823
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 824
    .line 825
    .line 826
    move-result v13

    .line 827
    aput-boolean v13, p0, v3

    .line 828
    .line 829
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 830
    .line 831
    .line 832
    move-result v13

    .line 833
    aput-boolean v13, p0, v5

    .line 834
    .line 835
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 836
    .line 837
    .line 838
    move-result v13

    .line 839
    aput-boolean v13, p0, v7

    .line 840
    .line 841
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 842
    .line 843
    .line 844
    move-result v13

    .line 845
    aput-boolean v13, p0, v9

    .line 846
    .line 847
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 848
    .line 849
    .line 850
    move-result v13

    .line 851
    aput-boolean v13, p0, v11

    .line 852
    .line 853
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    aput-boolean v0, p0, v12

    .line 858
    .line 859
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_DRAW_enabled:[Z

    .line 860
    .line 861
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 862
    .line 863
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 864
    .line 865
    .line 866
    move-result v13

    .line 867
    aput-boolean v13, p0, v3

    .line 868
    .line 869
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 870
    .line 871
    .line 872
    move-result v13

    .line 873
    aput-boolean v13, p0, v5

    .line 874
    .line 875
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 876
    .line 877
    .line 878
    move-result v13

    .line 879
    aput-boolean v13, p0, v7

    .line 880
    .line 881
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 882
    .line 883
    .line 884
    move-result v13

    .line 885
    aput-boolean v13, p0, v9

    .line 886
    .line 887
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 888
    .line 889
    .line 890
    move-result v13

    .line 891
    aput-boolean v13, p0, v11

    .line 892
    .line 893
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    aput-boolean v0, p0, v12

    .line 898
    .line 899
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 900
    .line 901
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 902
    .line 903
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 904
    .line 905
    .line 906
    move-result v13

    .line 907
    aput-boolean v13, p0, v3

    .line 908
    .line 909
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 910
    .line 911
    .line 912
    move-result v13

    .line 913
    aput-boolean v13, p0, v5

    .line 914
    .line 915
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 916
    .line 917
    .line 918
    move-result v13

    .line 919
    aput-boolean v13, p0, v7

    .line 920
    .line 921
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 922
    .line 923
    .line 924
    move-result v13

    .line 925
    aput-boolean v13, p0, v9

    .line 926
    .line 927
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 928
    .line 929
    .line 930
    move-result v13

    .line 931
    aput-boolean v13, p0, v11

    .line 932
    .line 933
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    aput-boolean v0, p0, v12

    .line 938
    .line 939
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    .line 940
    .line 941
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 942
    .line 943
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 944
    .line 945
    .line 946
    move-result v13

    .line 947
    aput-boolean v13, p0, v3

    .line 948
    .line 949
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 950
    .line 951
    .line 952
    move-result v13

    .line 953
    aput-boolean v13, p0, v5

    .line 954
    .line 955
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 956
    .line 957
    .line 958
    move-result v13

    .line 959
    aput-boolean v13, p0, v7

    .line 960
    .line 961
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 962
    .line 963
    .line 964
    move-result v13

    .line 965
    aput-boolean v13, p0, v9

    .line 966
    .line 967
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 968
    .line 969
    .line 970
    move-result v13

    .line 971
    aput-boolean v13, p0, v11

    .line 972
    .line 973
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 974
    .line 975
    .line 976
    move-result v0

    .line 977
    aput-boolean v0, p0, v12

    .line 978
    .line 979
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    .line 980
    .line 981
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 982
    .line 983
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 984
    .line 985
    .line 986
    move-result v13

    .line 987
    aput-boolean v13, p0, v3

    .line 988
    .line 989
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 990
    .line 991
    .line 992
    move-result v13

    .line 993
    aput-boolean v13, p0, v5

    .line 994
    .line 995
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 996
    .line 997
    .line 998
    move-result v13

    .line 999
    aput-boolean v13, p0, v7

    .line 1000
    .line 1001
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v13

    .line 1005
    aput-boolean v13, p0, v9

    .line 1006
    .line 1007
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v13

    .line 1011
    aput-boolean v13, p0, v11

    .line 1012
    .line 1013
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v0

    .line 1017
    aput-boolean v0, p0, v12

    .line 1018
    .line 1019
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    .line 1020
    .line 1021
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1022
    .line 1023
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v13

    .line 1027
    aput-boolean v13, p0, v3

    .line 1028
    .line 1029
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v13

    .line 1033
    aput-boolean v13, p0, v5

    .line 1034
    .line 1035
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v13

    .line 1039
    aput-boolean v13, p0, v7

    .line 1040
    .line 1041
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v13

    .line 1045
    aput-boolean v13, p0, v9

    .line 1046
    .line 1047
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v13

    .line 1051
    aput-boolean v13, p0, v11

    .line 1052
    .line 1053
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v0

    .line 1057
    aput-boolean v0, p0, v12

    .line 1058
    .line 1059
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_IME_enabled:[Z

    .line 1060
    .line 1061
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1062
    .line 1063
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v13

    .line 1067
    aput-boolean v13, p0, v3

    .line 1068
    .line 1069
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1070
    .line 1071
    .line 1072
    move-result v13

    .line 1073
    aput-boolean v13, p0, v5

    .line 1074
    .line 1075
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v13

    .line 1079
    aput-boolean v13, p0, v7

    .line 1080
    .line 1081
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result v13

    .line 1085
    aput-boolean v13, p0, v9

    .line 1086
    .line 1087
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v13

    .line 1091
    aput-boolean v13, p0, v11

    .line 1092
    .line 1093
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    aput-boolean v0, p0, v12

    .line 1098
    .line 1099
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 1100
    .line 1101
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1102
    .line 1103
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v13

    .line 1107
    aput-boolean v13, p0, v3

    .line 1108
    .line 1109
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v13

    .line 1113
    aput-boolean v13, p0, v5

    .line 1114
    .line 1115
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1116
    .line 1117
    .line 1118
    move-result v13

    .line 1119
    aput-boolean v13, p0, v7

    .line 1120
    .line 1121
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v13

    .line 1125
    aput-boolean v13, p0, v9

    .line 1126
    .line 1127
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1128
    .line 1129
    .line 1130
    move-result v13

    .line 1131
    aput-boolean v13, p0, v11

    .line 1132
    .line 1133
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v0

    .line 1137
    aput-boolean v0, p0, v12

    .line 1138
    .line 1139
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 1140
    .line 1141
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1142
    .line 1143
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v13

    .line 1147
    aput-boolean v13, p0, v3

    .line 1148
    .line 1149
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1150
    .line 1151
    .line 1152
    move-result v13

    .line 1153
    aput-boolean v13, p0, v5

    .line 1154
    .line 1155
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v13

    .line 1159
    aput-boolean v13, p0, v7

    .line 1160
    .line 1161
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v13

    .line 1165
    aput-boolean v13, p0, v9

    .line 1166
    .line 1167
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v13

    .line 1171
    aput-boolean v13, p0, v11

    .line 1172
    .line 1173
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1174
    .line 1175
    .line 1176
    move-result v0

    .line 1177
    aput-boolean v0, p0, v12

    .line 1178
    .line 1179
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 1180
    .line 1181
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1182
    .line 1183
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v13

    .line 1187
    aput-boolean v13, p0, v3

    .line 1188
    .line 1189
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v13

    .line 1193
    aput-boolean v13, p0, v5

    .line 1194
    .line 1195
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v13

    .line 1199
    aput-boolean v13, p0, v7

    .line 1200
    .line 1201
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1202
    .line 1203
    .line 1204
    move-result v13

    .line 1205
    aput-boolean v13, p0, v9

    .line 1206
    .line 1207
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v13

    .line 1211
    aput-boolean v13, p0, v11

    .line 1212
    .line 1213
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v0

    .line 1217
    aput-boolean v0, p0, v12

    .line 1218
    .line 1219
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 1220
    .line 1221
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1222
    .line 1223
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1224
    .line 1225
    .line 1226
    move-result v13

    .line 1227
    aput-boolean v13, p0, v3

    .line 1228
    .line 1229
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v13

    .line 1233
    aput-boolean v13, p0, v5

    .line 1234
    .line 1235
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v13

    .line 1239
    aput-boolean v13, p0, v7

    .line 1240
    .line 1241
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v13

    .line 1245
    aput-boolean v13, p0, v9

    .line 1246
    .line 1247
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v13

    .line 1251
    aput-boolean v13, p0, v11

    .line 1252
    .line 1253
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v0

    .line 1257
    aput-boolean v0, p0, v12

    .line 1258
    .line 1259
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    .line 1260
    .line 1261
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1262
    .line 1263
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v13

    .line 1267
    aput-boolean v13, p0, v3

    .line 1268
    .line 1269
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v13

    .line 1273
    aput-boolean v13, p0, v5

    .line 1274
    .line 1275
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v13

    .line 1279
    aput-boolean v13, p0, v7

    .line 1280
    .line 1281
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v13

    .line 1285
    aput-boolean v13, p0, v9

    .line 1286
    .line 1287
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1288
    .line 1289
    .line 1290
    move-result v13

    .line 1291
    aput-boolean v13, p0, v11

    .line 1292
    .line 1293
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v0

    .line 1297
    aput-boolean v0, p0, v12

    .line 1298
    .line 1299
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 1300
    .line 1301
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1302
    .line 1303
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result v13

    .line 1307
    aput-boolean v13, p0, v3

    .line 1308
    .line 1309
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v13

    .line 1313
    aput-boolean v13, p0, v5

    .line 1314
    .line 1315
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v13

    .line 1319
    aput-boolean v13, p0, v7

    .line 1320
    .line 1321
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v13

    .line 1325
    aput-boolean v13, p0, v9

    .line 1326
    .line 1327
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v13

    .line 1331
    aput-boolean v13, p0, v11

    .line 1332
    .line 1333
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1334
    .line 1335
    .line 1336
    move-result v0

    .line 1337
    aput-boolean v0, p0, v12

    .line 1338
    .line 1339
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 1340
    .line 1341
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1342
    .line 1343
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1344
    .line 1345
    .line 1346
    move-result v13

    .line 1347
    aput-boolean v13, p0, v3

    .line 1348
    .line 1349
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1350
    .line 1351
    .line 1352
    move-result v13

    .line 1353
    aput-boolean v13, p0, v5

    .line 1354
    .line 1355
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1356
    .line 1357
    .line 1358
    move-result v13

    .line 1359
    aput-boolean v13, p0, v7

    .line 1360
    .line 1361
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v13

    .line 1365
    aput-boolean v13, p0, v9

    .line 1366
    .line 1367
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1368
    .line 1369
    .line 1370
    move-result v13

    .line 1371
    aput-boolean v13, p0, v11

    .line 1372
    .line 1373
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v0

    .line 1377
    aput-boolean v0, p0, v12

    .line 1378
    .line 1379
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 1380
    .line 1381
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1382
    .line 1383
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v13

    .line 1387
    aput-boolean v13, p0, v3

    .line 1388
    .line 1389
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v13

    .line 1393
    aput-boolean v13, p0, v5

    .line 1394
    .line 1395
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v13

    .line 1399
    aput-boolean v13, p0, v7

    .line 1400
    .line 1401
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v13

    .line 1405
    aput-boolean v13, p0, v9

    .line 1406
    .line 1407
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1408
    .line 1409
    .line 1410
    move-result v13

    .line 1411
    aput-boolean v13, p0, v11

    .line 1412
    .line 1413
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1414
    .line 1415
    .line 1416
    move-result v0

    .line 1417
    aput-boolean v0, p0, v12

    .line 1418
    .line 1419
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_DREAM_enabled:[Z

    .line 1420
    .line 1421
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1422
    .line 1423
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1424
    .line 1425
    .line 1426
    move-result v13

    .line 1427
    aput-boolean v13, p0, v3

    .line 1428
    .line 1429
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v13

    .line 1433
    aput-boolean v13, p0, v5

    .line 1434
    .line 1435
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v13

    .line 1439
    aput-boolean v13, p0, v7

    .line 1440
    .line 1441
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1442
    .line 1443
    .line 1444
    move-result v13

    .line 1445
    aput-boolean v13, p0, v9

    .line 1446
    .line 1447
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v13

    .line 1451
    aput-boolean v13, p0, v11

    .line 1452
    .line 1453
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v0

    .line 1457
    aput-boolean v0, p0, v12

    .line 1458
    .line 1459
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    .line 1460
    .line 1461
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1462
    .line 1463
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v13

    .line 1467
    aput-boolean v13, p0, v3

    .line 1468
    .line 1469
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1470
    .line 1471
    .line 1472
    move-result v13

    .line 1473
    aput-boolean v13, p0, v5

    .line 1474
    .line 1475
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1476
    .line 1477
    .line 1478
    move-result v13

    .line 1479
    aput-boolean v13, p0, v7

    .line 1480
    .line 1481
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1482
    .line 1483
    .line 1484
    move-result v13

    .line 1485
    aput-boolean v13, p0, v9

    .line 1486
    .line 1487
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v13

    .line 1491
    aput-boolean v13, p0, v11

    .line 1492
    .line 1493
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1494
    .line 1495
    .line 1496
    move-result v0

    .line 1497
    aput-boolean v0, p0, v12

    .line 1498
    .line 1499
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_TPL_enabled:[Z

    .line 1500
    .line 1501
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1502
    .line 1503
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1504
    .line 1505
    .line 1506
    move-result v13

    .line 1507
    aput-boolean v13, p0, v3

    .line 1508
    .line 1509
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v13

    .line 1513
    aput-boolean v13, p0, v5

    .line 1514
    .line 1515
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1516
    .line 1517
    .line 1518
    move-result v13

    .line 1519
    aput-boolean v13, p0, v7

    .line 1520
    .line 1521
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1522
    .line 1523
    .line 1524
    move-result v13

    .line 1525
    aput-boolean v13, p0, v9

    .line 1526
    .line 1527
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1528
    .line 1529
    .line 1530
    move-result v13

    .line 1531
    aput-boolean v13, p0, v11

    .line 1532
    .line 1533
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1534
    .line 1535
    .line 1536
    move-result v0

    .line 1537
    aput-boolean v0, p0, v12

    .line 1538
    .line 1539
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    .line 1540
    .line 1541
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1542
    .line 1543
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1544
    .line 1545
    .line 1546
    move-result v13

    .line 1547
    aput-boolean v13, p0, v3

    .line 1548
    .line 1549
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1550
    .line 1551
    .line 1552
    move-result v13

    .line 1553
    aput-boolean v13, p0, v5

    .line 1554
    .line 1555
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1556
    .line 1557
    .line 1558
    move-result v13

    .line 1559
    aput-boolean v13, p0, v7

    .line 1560
    .line 1561
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1562
    .line 1563
    .line 1564
    move-result v13

    .line 1565
    aput-boolean v13, p0, v9

    .line 1566
    .line 1567
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1568
    .line 1569
    .line 1570
    move-result v13

    .line 1571
    aput-boolean v13, p0, v11

    .line 1572
    .line 1573
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1574
    .line 1575
    .line 1576
    move-result v0

    .line 1577
    aput-boolean v0, p0, v12

    .line 1578
    .line 1579
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_ORIENTATION_enabled:[Z

    .line 1580
    .line 1581
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1582
    .line 1583
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1584
    .line 1585
    .line 1586
    move-result v13

    .line 1587
    aput-boolean v13, p0, v3

    .line 1588
    .line 1589
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1590
    .line 1591
    .line 1592
    move-result v13

    .line 1593
    aput-boolean v13, p0, v5

    .line 1594
    .line 1595
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1596
    .line 1597
    .line 1598
    move-result v13

    .line 1599
    aput-boolean v13, p0, v7

    .line 1600
    .line 1601
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1602
    .line 1603
    .line 1604
    move-result v13

    .line 1605
    aput-boolean v13, p0, v9

    .line 1606
    .line 1607
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1608
    .line 1609
    .line 1610
    move-result v13

    .line 1611
    aput-boolean v13, p0, v11

    .line 1612
    .line 1613
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1614
    .line 1615
    .line 1616
    move-result v0

    .line 1617
    aput-boolean v0, p0, v12

    .line 1618
    .line 1619
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 1620
    .line 1621
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1622
    .line 1623
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1624
    .line 1625
    .line 1626
    move-result v13

    .line 1627
    aput-boolean v13, p0, v3

    .line 1628
    .line 1629
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1630
    .line 1631
    .line 1632
    move-result v13

    .line 1633
    aput-boolean v13, p0, v5

    .line 1634
    .line 1635
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1636
    .line 1637
    .line 1638
    move-result v13

    .line 1639
    aput-boolean v13, p0, v7

    .line 1640
    .line 1641
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1642
    .line 1643
    .line 1644
    move-result v13

    .line 1645
    aput-boolean v13, p0, v9

    .line 1646
    .line 1647
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1648
    .line 1649
    .line 1650
    move-result v13

    .line 1651
    aput-boolean v13, p0, v11

    .line 1652
    .line 1653
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1654
    .line 1655
    .line 1656
    move-result v0

    .line 1657
    aput-boolean v0, p0, v12

    .line 1658
    .line 1659
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_BOOT_enabled:[Z

    .line 1660
    .line 1661
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1662
    .line 1663
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1664
    .line 1665
    .line 1666
    move-result v13

    .line 1667
    aput-boolean v13, p0, v3

    .line 1668
    .line 1669
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1670
    .line 1671
    .line 1672
    move-result v13

    .line 1673
    aput-boolean v13, p0, v5

    .line 1674
    .line 1675
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1676
    .line 1677
    .line 1678
    move-result v13

    .line 1679
    aput-boolean v13, p0, v7

    .line 1680
    .line 1681
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1682
    .line 1683
    .line 1684
    move-result v13

    .line 1685
    aput-boolean v13, p0, v9

    .line 1686
    .line 1687
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1688
    .line 1689
    .line 1690
    move-result v13

    .line 1691
    aput-boolean v13, p0, v11

    .line 1692
    .line 1693
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    aput-boolean v0, p0, v12

    .line 1698
    .line 1699
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_RESIZE_enabled:[Z

    .line 1700
    .line 1701
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1702
    .line 1703
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1704
    .line 1705
    .line 1706
    move-result v13

    .line 1707
    aput-boolean v13, p0, v3

    .line 1708
    .line 1709
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1710
    .line 1711
    .line 1712
    move-result v13

    .line 1713
    aput-boolean v13, p0, v5

    .line 1714
    .line 1715
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1716
    .line 1717
    .line 1718
    move-result v13

    .line 1719
    aput-boolean v13, p0, v7

    .line 1720
    .line 1721
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1722
    .line 1723
    .line 1724
    move-result v13

    .line 1725
    aput-boolean v13, p0, v9

    .line 1726
    .line 1727
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1728
    .line 1729
    .line 1730
    move-result v13

    .line 1731
    aput-boolean v13, p0, v11

    .line 1732
    .line 1733
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1734
    .line 1735
    .line 1736
    move-result v0

    .line 1737
    aput-boolean v0, p0, v12

    .line 1738
    .line 1739
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_ADD_REMOVE_enabled:[Z

    .line 1740
    .line 1741
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1742
    .line 1743
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v13

    .line 1747
    aput-boolean v13, p0, v3

    .line 1748
    .line 1749
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1750
    .line 1751
    .line 1752
    move-result v13

    .line 1753
    aput-boolean v13, p0, v5

    .line 1754
    .line 1755
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1756
    .line 1757
    .line 1758
    move-result v13

    .line 1759
    aput-boolean v13, p0, v7

    .line 1760
    .line 1761
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1762
    .line 1763
    .line 1764
    move-result v13

    .line 1765
    aput-boolean v13, p0, v9

    .line 1766
    .line 1767
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1768
    .line 1769
    .line 1770
    move-result v13

    .line 1771
    aput-boolean v13, p0, v11

    .line 1772
    .line 1773
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1774
    .line 1775
    .line 1776
    move-result v0

    .line 1777
    aput-boolean v0, p0, v12

    .line 1778
    .line 1779
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_CONFIGURATION_enabled:[Z

    .line 1780
    .line 1781
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1782
    .line 1783
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1784
    .line 1785
    .line 1786
    move-result v13

    .line 1787
    aput-boolean v13, p0, v3

    .line 1788
    .line 1789
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1790
    .line 1791
    .line 1792
    move-result v13

    .line 1793
    aput-boolean v13, p0, v5

    .line 1794
    .line 1795
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1796
    .line 1797
    .line 1798
    move-result v13

    .line 1799
    aput-boolean v13, p0, v7

    .line 1800
    .line 1801
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1802
    .line 1803
    .line 1804
    move-result v13

    .line 1805
    aput-boolean v13, p0, v9

    .line 1806
    .line 1807
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1808
    .line 1809
    .line 1810
    move-result v13

    .line 1811
    aput-boolean v13, p0, v11

    .line 1812
    .line 1813
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1814
    .line 1815
    .line 1816
    move-result v0

    .line 1817
    aput-boolean v0, p0, v12

    .line 1818
    .line 1819
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_FOCUS_enabled:[Z

    .line 1820
    .line 1821
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1822
    .line 1823
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1824
    .line 1825
    .line 1826
    move-result v13

    .line 1827
    aput-boolean v13, p0, v3

    .line 1828
    .line 1829
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1830
    .line 1831
    .line 1832
    move-result v13

    .line 1833
    aput-boolean v13, p0, v5

    .line 1834
    .line 1835
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1836
    .line 1837
    .line 1838
    move-result v13

    .line 1839
    aput-boolean v13, p0, v7

    .line 1840
    .line 1841
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1842
    .line 1843
    .line 1844
    move-result v13

    .line 1845
    aput-boolean v13, p0, v9

    .line 1846
    .line 1847
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1848
    .line 1849
    .line 1850
    move-result v13

    .line 1851
    aput-boolean v13, p0, v11

    .line 1852
    .line 1853
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1854
    .line 1855
    .line 1856
    move-result v0

    .line 1857
    aput-boolean v0, p0, v12

    .line 1858
    .line 1859
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_STARTING_WINDOW_enabled:[Z

    .line 1860
    .line 1861
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1862
    .line 1863
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1864
    .line 1865
    .line 1866
    move-result v13

    .line 1867
    aput-boolean v13, p0, v3

    .line 1868
    .line 1869
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1870
    .line 1871
    .line 1872
    move-result v13

    .line 1873
    aput-boolean v13, p0, v5

    .line 1874
    .line 1875
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1876
    .line 1877
    .line 1878
    move-result v13

    .line 1879
    aput-boolean v13, p0, v7

    .line 1880
    .line 1881
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1882
    .line 1883
    .line 1884
    move-result v13

    .line 1885
    aput-boolean v13, p0, v9

    .line 1886
    .line 1887
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1888
    .line 1889
    .line 1890
    move-result v13

    .line 1891
    aput-boolean v13, p0, v11

    .line 1892
    .line 1893
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1894
    .line 1895
    .line 1896
    move-result v0

    .line 1897
    aput-boolean v0, p0, v12

    .line 1898
    .line 1899
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_SHOW_TRANSACTIONS_enabled:[Z

    .line 1900
    .line 1901
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1902
    .line 1903
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1904
    .line 1905
    .line 1906
    move-result v13

    .line 1907
    aput-boolean v13, p0, v3

    .line 1908
    .line 1909
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1910
    .line 1911
    .line 1912
    move-result v13

    .line 1913
    aput-boolean v13, p0, v5

    .line 1914
    .line 1915
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1916
    .line 1917
    .line 1918
    move-result v13

    .line 1919
    aput-boolean v13, p0, v7

    .line 1920
    .line 1921
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1922
    .line 1923
    .line 1924
    move-result v13

    .line 1925
    aput-boolean v13, p0, v9

    .line 1926
    .line 1927
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1928
    .line 1929
    .line 1930
    move-result v13

    .line 1931
    aput-boolean v13, p0, v11

    .line 1932
    .line 1933
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1934
    .line 1935
    .line 1936
    move-result v0

    .line 1937
    aput-boolean v0, p0, v12

    .line 1938
    .line 1939
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 1940
    .line 1941
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1942
    .line 1943
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1944
    .line 1945
    .line 1946
    move-result v13

    .line 1947
    aput-boolean v13, p0, v3

    .line 1948
    .line 1949
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1950
    .line 1951
    .line 1952
    move-result v13

    .line 1953
    aput-boolean v13, p0, v5

    .line 1954
    .line 1955
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1956
    .line 1957
    .line 1958
    move-result v13

    .line 1959
    aput-boolean v13, p0, v7

    .line 1960
    .line 1961
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1962
    .line 1963
    .line 1964
    move-result v13

    .line 1965
    aput-boolean v13, p0, v9

    .line 1966
    .line 1967
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1968
    .line 1969
    .line 1970
    move-result v13

    .line 1971
    aput-boolean v13, p0, v11

    .line 1972
    .line 1973
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1974
    .line 1975
    .line 1976
    move-result v0

    .line 1977
    aput-boolean v0, p0, v12

    .line 1978
    .line 1979
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 1980
    .line 1981
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1982
    .line 1983
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1984
    .line 1985
    .line 1986
    move-result v13

    .line 1987
    aput-boolean v13, p0, v3

    .line 1988
    .line 1989
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1990
    .line 1991
    .line 1992
    move-result v13

    .line 1993
    aput-boolean v13, p0, v5

    .line 1994
    .line 1995
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 1996
    .line 1997
    .line 1998
    move-result v13

    .line 1999
    aput-boolean v13, p0, v7

    .line 2000
    .line 2001
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2002
    .line 2003
    .line 2004
    move-result v13

    .line 2005
    aput-boolean v13, p0, v9

    .line 2006
    .line 2007
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2008
    .line 2009
    .line 2010
    move-result v13

    .line 2011
    aput-boolean v13, p0, v11

    .line 2012
    .line 2013
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2014
    .line 2015
    .line 2016
    move-result v0

    .line 2017
    aput-boolean v0, p0, v12

    .line 2018
    .line 2019
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    .line 2020
    .line 2021
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2022
    .line 2023
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2024
    .line 2025
    .line 2026
    move-result v13

    .line 2027
    aput-boolean v13, p0, v3

    .line 2028
    .line 2029
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2030
    .line 2031
    .line 2032
    move-result v13

    .line 2033
    aput-boolean v13, p0, v5

    .line 2034
    .line 2035
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2036
    .line 2037
    .line 2038
    move-result v13

    .line 2039
    aput-boolean v13, p0, v7

    .line 2040
    .line 2041
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2042
    .line 2043
    .line 2044
    move-result v13

    .line 2045
    aput-boolean v13, p0, v9

    .line 2046
    .line 2047
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2048
    .line 2049
    .line 2050
    move-result v13

    .line 2051
    aput-boolean v13, p0, v11

    .line 2052
    .line 2053
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2054
    .line 2055
    .line 2056
    move-result v0

    .line 2057
    aput-boolean v0, p0, v12

    .line 2058
    .line 2059
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 2060
    .line 2061
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2062
    .line 2063
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2064
    .line 2065
    .line 2066
    move-result v13

    .line 2067
    aput-boolean v13, p0, v3

    .line 2068
    .line 2069
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2070
    .line 2071
    .line 2072
    move-result v13

    .line 2073
    aput-boolean v13, p0, v5

    .line 2074
    .line 2075
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2076
    .line 2077
    .line 2078
    move-result v13

    .line 2079
    aput-boolean v13, p0, v7

    .line 2080
    .line 2081
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2082
    .line 2083
    .line 2084
    move-result v13

    .line 2085
    aput-boolean v13, p0, v9

    .line 2086
    .line 2087
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2088
    .line 2089
    .line 2090
    move-result v13

    .line 2091
    aput-boolean v13, p0, v11

    .line 2092
    .line 2093
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2094
    .line 2095
    .line 2096
    move-result v0

    .line 2097
    aput-boolean v0, p0, v12

    .line 2098
    .line 2099
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_DRAW_enabled:[Z

    .line 2100
    .line 2101
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2102
    .line 2103
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2104
    .line 2105
    .line 2106
    move-result v13

    .line 2107
    aput-boolean v13, p0, v3

    .line 2108
    .line 2109
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2110
    .line 2111
    .line 2112
    move-result v13

    .line 2113
    aput-boolean v13, p0, v5

    .line 2114
    .line 2115
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2116
    .line 2117
    .line 2118
    move-result v13

    .line 2119
    aput-boolean v13, p0, v7

    .line 2120
    .line 2121
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2122
    .line 2123
    .line 2124
    move-result v13

    .line 2125
    aput-boolean v13, p0, v9

    .line 2126
    .line 2127
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2128
    .line 2129
    .line 2130
    move-result v13

    .line 2131
    aput-boolean v13, p0, v11

    .line 2132
    .line 2133
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2134
    .line 2135
    .line 2136
    move-result v0

    .line 2137
    aput-boolean v0, p0, v12

    .line 2138
    .line 2139
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 2140
    .line 2141
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2142
    .line 2143
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2144
    .line 2145
    .line 2146
    move-result v13

    .line 2147
    aput-boolean v13, p0, v3

    .line 2148
    .line 2149
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2150
    .line 2151
    .line 2152
    move-result v13

    .line 2153
    aput-boolean v13, p0, v5

    .line 2154
    .line 2155
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2156
    .line 2157
    .line 2158
    move-result v13

    .line 2159
    aput-boolean v13, p0, v7

    .line 2160
    .line 2161
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2162
    .line 2163
    .line 2164
    move-result v13

    .line 2165
    aput-boolean v13, p0, v9

    .line 2166
    .line 2167
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2168
    .line 2169
    .line 2170
    move-result v13

    .line 2171
    aput-boolean v13, p0, v11

    .line 2172
    .line 2173
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2174
    .line 2175
    .line 2176
    move-result v0

    .line 2177
    aput-boolean v0, p0, v12

    .line 2178
    .line 2179
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_SCREEN_ON_enabled:[Z

    .line 2180
    .line 2181
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2182
    .line 2183
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2184
    .line 2185
    .line 2186
    move-result v13

    .line 2187
    aput-boolean v13, p0, v3

    .line 2188
    .line 2189
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2190
    .line 2191
    .line 2192
    move-result v13

    .line 2193
    aput-boolean v13, p0, v5

    .line 2194
    .line 2195
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2196
    .line 2197
    .line 2198
    move-result v13

    .line 2199
    aput-boolean v13, p0, v7

    .line 2200
    .line 2201
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2202
    .line 2203
    .line 2204
    move-result v13

    .line 2205
    aput-boolean v13, p0, v9

    .line 2206
    .line 2207
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2208
    .line 2209
    .line 2210
    move-result v13

    .line 2211
    aput-boolean v13, p0, v11

    .line 2212
    .line 2213
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2214
    .line 2215
    .line 2216
    move-result v0

    .line 2217
    aput-boolean v0, p0, v12

    .line 2218
    .line 2219
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    .line 2220
    .line 2221
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2222
    .line 2223
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2224
    .line 2225
    .line 2226
    move-result v13

    .line 2227
    aput-boolean v13, p0, v3

    .line 2228
    .line 2229
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2230
    .line 2231
    .line 2232
    move-result v13

    .line 2233
    aput-boolean v13, p0, v5

    .line 2234
    .line 2235
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2236
    .line 2237
    .line 2238
    move-result v13

    .line 2239
    aput-boolean v13, p0, v7

    .line 2240
    .line 2241
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2242
    .line 2243
    .line 2244
    move-result v13

    .line 2245
    aput-boolean v13, p0, v9

    .line 2246
    .line 2247
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2248
    .line 2249
    .line 2250
    move-result v13

    .line 2251
    aput-boolean v13, p0, v11

    .line 2252
    .line 2253
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2254
    .line 2255
    .line 2256
    move-result v0

    .line 2257
    aput-boolean v0, p0, v12

    .line 2258
    .line 2259
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    .line 2260
    .line 2261
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2262
    .line 2263
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2264
    .line 2265
    .line 2266
    move-result v13

    .line 2267
    aput-boolean v13, p0, v3

    .line 2268
    .line 2269
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2270
    .line 2271
    .line 2272
    move-result v13

    .line 2273
    aput-boolean v13, p0, v5

    .line 2274
    .line 2275
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2276
    .line 2277
    .line 2278
    move-result v13

    .line 2279
    aput-boolean v13, p0, v7

    .line 2280
    .line 2281
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2282
    .line 2283
    .line 2284
    move-result v13

    .line 2285
    aput-boolean v13, p0, v9

    .line 2286
    .line 2287
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2288
    .line 2289
    .line 2290
    move-result v13

    .line 2291
    aput-boolean v13, p0, v11

    .line 2292
    .line 2293
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2294
    .line 2295
    .line 2296
    move-result v0

    .line 2297
    aput-boolean v0, p0, v12

    .line 2298
    .line 2299
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_IME_enabled:[Z

    .line 2300
    .line 2301
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2302
    .line 2303
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2304
    .line 2305
    .line 2306
    move-result v13

    .line 2307
    aput-boolean v13, p0, v3

    .line 2308
    .line 2309
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2310
    .line 2311
    .line 2312
    move-result v13

    .line 2313
    aput-boolean v13, p0, v5

    .line 2314
    .line 2315
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2316
    .line 2317
    .line 2318
    move-result v13

    .line 2319
    aput-boolean v13, p0, v7

    .line 2320
    .line 2321
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2322
    .line 2323
    .line 2324
    move-result v13

    .line 2325
    aput-boolean v13, p0, v9

    .line 2326
    .line 2327
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2328
    .line 2329
    .line 2330
    move-result v13

    .line 2331
    aput-boolean v13, p0, v11

    .line 2332
    .line 2333
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2334
    .line 2335
    .line 2336
    move-result v0

    .line 2337
    aput-boolean v0, p0, v12

    .line 2338
    .line 2339
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_ANIM_enabled:[Z

    .line 2340
    .line 2341
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2342
    .line 2343
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2344
    .line 2345
    .line 2346
    move-result v13

    .line 2347
    aput-boolean v13, p0, v3

    .line 2348
    .line 2349
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2350
    .line 2351
    .line 2352
    move-result v13

    .line 2353
    aput-boolean v13, p0, v5

    .line 2354
    .line 2355
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2356
    .line 2357
    .line 2358
    move-result v13

    .line 2359
    aput-boolean v13, p0, v7

    .line 2360
    .line 2361
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2362
    .line 2363
    .line 2364
    move-result v13

    .line 2365
    aput-boolean v13, p0, v9

    .line 2366
    .line 2367
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2368
    .line 2369
    .line 2370
    move-result v13

    .line 2371
    aput-boolean v13, p0, v11

    .line 2372
    .line 2373
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2374
    .line 2375
    .line 2376
    move-result v0

    .line 2377
    aput-boolean v0, p0, v12

    .line 2378
    .line 2379
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 2380
    .line 2381
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2382
    .line 2383
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2384
    .line 2385
    .line 2386
    move-result v13

    .line 2387
    aput-boolean v13, p0, v3

    .line 2388
    .line 2389
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2390
    .line 2391
    .line 2392
    move-result v13

    .line 2393
    aput-boolean v13, p0, v5

    .line 2394
    .line 2395
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2396
    .line 2397
    .line 2398
    move-result v13

    .line 2399
    aput-boolean v13, p0, v7

    .line 2400
    .line 2401
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2402
    .line 2403
    .line 2404
    move-result v13

    .line 2405
    aput-boolean v13, p0, v9

    .line 2406
    .line 2407
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2408
    .line 2409
    .line 2410
    move-result v13

    .line 2411
    aput-boolean v13, p0, v11

    .line 2412
    .line 2413
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2414
    .line 2415
    .line 2416
    move-result v0

    .line 2417
    aput-boolean v0, p0, v12

    .line 2418
    .line 2419
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 2420
    .line 2421
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2422
    .line 2423
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2424
    .line 2425
    .line 2426
    move-result v13

    .line 2427
    aput-boolean v13, p0, v3

    .line 2428
    .line 2429
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2430
    .line 2431
    .line 2432
    move-result v13

    .line 2433
    aput-boolean v13, p0, v5

    .line 2434
    .line 2435
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2436
    .line 2437
    .line 2438
    move-result v13

    .line 2439
    aput-boolean v13, p0, v7

    .line 2440
    .line 2441
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2442
    .line 2443
    .line 2444
    move-result v13

    .line 2445
    aput-boolean v13, p0, v9

    .line 2446
    .line 2447
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2448
    .line 2449
    .line 2450
    move-result v13

    .line 2451
    aput-boolean v13, p0, v11

    .line 2452
    .line 2453
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2454
    .line 2455
    .line 2456
    move-result v0

    .line 2457
    aput-boolean v0, p0, v12

    .line 2458
    .line 2459
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_INPUT_enabled:[Z

    .line 2460
    .line 2461
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_INPUT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2462
    .line 2463
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2464
    .line 2465
    .line 2466
    move-result v13

    .line 2467
    aput-boolean v13, p0, v3

    .line 2468
    .line 2469
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2470
    .line 2471
    .line 2472
    move-result v13

    .line 2473
    aput-boolean v13, p0, v5

    .line 2474
    .line 2475
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2476
    .line 2477
    .line 2478
    move-result v13

    .line 2479
    aput-boolean v13, p0, v7

    .line 2480
    .line 2481
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2482
    .line 2483
    .line 2484
    move-result v13

    .line 2485
    aput-boolean v13, p0, v9

    .line 2486
    .line 2487
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2488
    .line 2489
    .line 2490
    move-result v13

    .line 2491
    aput-boolean v13, p0, v11

    .line 2492
    .line 2493
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2494
    .line 2495
    .line 2496
    move-result v0

    .line 2497
    aput-boolean v0, p0, v12

    .line 2498
    .line 2499
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->TEST_GROUP_enabled:[Z

    .line 2500
    .line 2501
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->TEST_GROUP:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2502
    .line 2503
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2504
    .line 2505
    .line 2506
    move-result v1

    .line 2507
    aput-boolean v1, p0, v3

    .line 2508
    .line 2509
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2510
    .line 2511
    .line 2512
    move-result v1

    .line 2513
    aput-boolean v1, p0, v5

    .line 2514
    .line 2515
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2516
    .line 2517
    .line 2518
    move-result v1

    .line 2519
    aput-boolean v1, p0, v7

    .line 2520
    .line 2521
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2522
    .line 2523
    .line 2524
    move-result v1

    .line 2525
    aput-boolean v1, p0, v9

    .line 2526
    .line 2527
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2528
    .line 2529
    .line 2530
    move-result v1

    .line 2531
    aput-boolean v1, p0, v11

    .line 2532
    .line 2533
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2534
    .line 2535
    .line 2536
    move-result v0

    .line 2537
    aput-boolean v0, p0, v12

    .line 2538
    .line 2539
    return-void
.end method
