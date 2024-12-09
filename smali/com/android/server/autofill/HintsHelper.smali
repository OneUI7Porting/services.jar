.class public abstract Lcom/android/server/autofill/HintsHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static getHintsForSaveType(I)Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const-string/jumbo v2, "username"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "newUsername"

    .line 11
    .line 12
    .line 13
    if-eq p0, v1, :cond_4

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p0, v1, :cond_3

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq p0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    if-eq p0, v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    if-eq p0, v1, :cond_0

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    if-eq p0, v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x40

    .line 34
    .line 35
    if-eq p0, v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x80

    .line 38
    .line 39
    if-eq p0, v1, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    const-string/jumbo p0, "emailAddress"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    const-string/jumbo p0, "creditCardExpirationDate"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const-string/jumbo p0, "creditCardExpirationDay"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    const-string/jumbo p0, "creditCardExpirationMonth"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    const-string/jumbo p0, "creditCardExpirationYear"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    const-string/jumbo p0, "creditCardNumber"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string/jumbo p0, "creditCardSecurityCode"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_3
    const-string/jumbo p0, "postalAddress"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    const-string/jumbo p0, "aptNumber"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    const-string p0, "addressCountry"

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    const-string/jumbo p0, "dependentLocality"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    const-string/jumbo p0, "extendedAddress"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    const-string/jumbo p0, "extendedPostalCode"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    const-string p0, "addressLocality"

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    const-string p0, "addressRegion"

    .line 134
    .line 135
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    const-string/jumbo p0, "streetAddress"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    const-string/jumbo p0, "postalCode"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_4
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    const-string/jumbo p0, "newPassword"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    const-string/jumbo p0, "password"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    return-object v0
.end method
