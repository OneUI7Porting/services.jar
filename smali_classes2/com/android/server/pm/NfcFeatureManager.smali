.class public abstract Lcom/android/server/pm/NfcFeatureManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static updateFeatureAndPackage(Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/install/SkippingApks;)V
    .locals 13

    .line 1
    const-string/jumbo v0, "ro.boot.product.hardware.sku"

    .line 2
    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "hcesimese"

    .line 11
    .line 12
    const-string v2, "hceese"

    .line 13
    .line 14
    const-string v3, "hcesim"

    .line 15
    .line 16
    const-string v4, "hce"

    .line 17
    .line 18
    const-string v5, "disabled"

    .line 19
    .line 20
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string/jumbo v2, "ro.vendor.nfc.support.ese"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "ro.vendor.nfc.support.uicc"

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const-string v6, "cannot remove eSE feature"

    .line 40
    .line 41
    const-string/jumbo v7, "removed eSE feature"

    .line 42
    .line 43
    .line 44
    const-string v8, "cannot remove SIM feature"

    .line 45
    .line 46
    const-string/jumbo v9, "removed SIM feature"

    .line 47
    .line 48
    .line 49
    const-string v10, "android.hardware.nfc.ese"

    .line 50
    .line 51
    const-string v11, "android.hardware.nfc.uicc"

    .line 52
    .line 53
    const-string v12, "NfcFeatureManager"

    .line 54
    .line 55
    if-eqz v1, :cond_7

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    if-eqz p0, :cond_0

    .line 64
    .line 65
    const-string v0, "android.hardware.nfc"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string v0, "android.hardware.nfc.hce"

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const-string v0, "android.hardware.nfc.hcef"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const-string v0, "android.hardware.nfc.any"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v0, "android.sofware.nfc.beam"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v0, "com.nxp.mifare"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception p0

    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :cond_0
    const-string p0, "cannot remove NFC features"

    .line 106
    .line 107
    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :goto_0
    if-eqz p1, :cond_1

    .line 111
    .line 112
    const-string p0, "Nfc.apk"

    .line 113
    .line 114
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string p0, "NfcNci.apk"

    .line 118
    .line 119
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p0, "NfcFn.apk"

    .line 123
    .line 124
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string p0, "NfcTest.apk"

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string p0, "NfcTag.apk"

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string p0, "Tag.apk"

    .line 138
    .line 139
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string p0, "SamsungNfcTag.apk"

    .line 143
    .line 144
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string p0, "NfcFactoryCard.apk"

    .line 148
    .line 149
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    const-string p0, "cannot remove NFC packages"

    .line 154
    .line 155
    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :goto_1
    const-string/jumbo p0, "removed NFC features and packages"

    .line 159
    .line 160
    .line 161
    invoke-static {v12, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_2
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_3

    .line 170
    .line 171
    const-string/jumbo p1, "sim"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    if-eqz p0, :cond_4

    .line 182
    .line 183
    invoke-virtual {p0, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_4
    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    :goto_2
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_5

    .line 198
    .line 199
    const-string p1, "ese"

    .line 200
    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_5

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_5
    if-eqz p0, :cond_6

    .line 209
    .line 210
    invoke-virtual {p0, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    invoke-static {v12, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_6
    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :goto_3
    const-string p1, "Unexpected exception: "

    .line 222
    .line 223
    invoke-static {v12, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .line 225
    .line 226
    :goto_4
    return-void

    .line 227
    :cond_7
    const-string p1, "Non-single binary (sku: "

    .line 228
    .line 229
    const-string v1, ")"

    .line 230
    .line 231
    invoke-static {p1, v0, v1, v12}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-nez p1, :cond_9

    .line 239
    .line 240
    if-eqz p0, :cond_8

    .line 241
    .line 242
    invoke-virtual {p0, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_8
    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    :cond_9
    :goto_5
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-nez p1, :cond_b

    .line 257
    .line 258
    if-eqz p0, :cond_a

    .line 259
    .line 260
    invoke-virtual {p0, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    invoke-static {v12, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_a
    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    :cond_b
    :goto_6
    return-void
.end method
