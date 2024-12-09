.class public final Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCmdNumber:I

.field public final mCode:I

.field public final mLogMessage:Ljava/lang/String;

.field public final mMessage:Ljava/lang/String;

.field public final mResponseCode:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCmdNumber:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mResponseCode:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static parseRawEvent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    .locals 12

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-lt v2, v3, :cond_5

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    aget-object v4, v1, v2

    .line 13
    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    aget-object v4, v1, v2

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 24
    const/4 v5, 0x1

    .line 25
    add-int/2addr v4, v5

    .line 26
    const/16 v6, 0x258

    .line 27
    .line 28
    if-lt v7, v6, :cond_0

    .line 29
    .line 30
    const/16 v6, 0x2bc

    .line 31
    .line 32
    if-ge v7, v6, :cond_0

    .line 33
    .line 34
    move v6, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v6, v2

    .line 37
    :goto_0
    const/4 v8, 0x3

    .line 38
    if-nez v6, :cond_3

    .line 39
    .line 40
    array-length v6, v1

    .line 41
    const-string v9, "Insufficient arguemnts"

    .line 42
    .line 43
    if-lt v6, v3, :cond_2

    .line 44
    .line 45
    :try_start_1
    aget-object v6, v1, v5

    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    aget-object v10, v1, v5

    .line 52
    .line 53
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    add-int/2addr v10, v5

    .line 58
    add-int/2addr v10, v4

    .line 59
    array-length v4, v1

    .line 60
    if-lt v4, v8, :cond_1

    .line 61
    .line 62
    :try_start_2
    aget-object v4, v1, v3

    .line 63
    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    aget-object v3, v1, v3

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    add-int/2addr v3, v5

    .line 75
    add-int/2addr v3, v10

    .line 76
    move v11, v4

    .line 77
    move v4, v3

    .line 78
    move v3, v11

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string/jumbo v1, "problem parsing responseCode"

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :catch_1
    move-exception p0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string/jumbo v1, "problem parsing cmdNumber"

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_3
    const/4 v3, -0x1

    .line 113
    move v6, v3

    .line 114
    :goto_1
    array-length v9, v1

    .line 115
    if-le v9, v8, :cond_4

    .line 116
    .line 117
    aget-object v9, v1, v8

    .line 118
    .line 119
    const-string/jumbo v10, "{{sensitive}}"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_4

    .line 127
    .line 128
    aget-object v8, v1, v8

    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    add-int/2addr v8, v5

    .line 135
    add-int/2addr v4, v8

    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    aget-object v2, v1, v2

    .line 142
    .line 143
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    aget-object v0, v1, v5

    .line 150
    .line 151
    const-string v1, " {}"

    .line 152
    .line 153
    invoke-static {v8, v0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    move-object v10, v0

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    move-object v10, p0

    .line 160
    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    new-instance p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 165
    .line 166
    move-object v5, p0

    .line 167
    move v8, v3

    .line 168
    invoke-direct/range {v5 .. v10}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :catch_2
    move-exception p0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string/jumbo v1, "problem parsing code"

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    const-string v0, "Insufficient arguments"

    .line 185
    .line 186
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p0
.end method

.method public static unescapeArgs(Ljava/lang/String;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    const/16 v5, 0x22

    .line 17
    .line 18
    if-ne v3, v5, :cond_0

    .line 19
    .line 20
    move v3, v4

    .line 21
    :goto_0
    move v6, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move v3, v2

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    if-ge v3, v1, :cond_8

    .line 26
    .line 27
    const/16 v7, 0x20

    .line 28
    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    move v8, v5

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    move v8, v7

    .line 34
    :goto_2
    move v9, v3

    .line 35
    :goto_3
    if-ge v9, v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    if-eq v10, v8, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    const/16 v11, 0x5c

    .line 48
    .line 49
    if-ne v10, v11, :cond_2

    .line 50
    .line 51
    add-int/lit8 v9, v9, 0x1

    .line 52
    .line 53
    :cond_2
    add-int/2addr v9, v4

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    if-le v9, v1, :cond_4

    .line 56
    .line 57
    move v9, v1

    .line 58
    :cond_4
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    add-int/2addr v9, v3

    .line 67
    if-nez v6, :cond_5

    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    goto :goto_4

    .line 74
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 75
    .line 76
    :goto_4
    const-string v3, "\\\\"

    .line 77
    .line 78
    const-string v6, "\\"

    .line 79
    .line 80
    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v6, "\\\""

    .line 85
    .line 86
    const-string v8, "\""

    .line 87
    .line 88
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->indexOf(II)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const-string v6, " \""

    .line 100
    .line 101
    invoke-virtual {p0, v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    const/4 v7, -0x1

    .line 106
    if-le v6, v7, :cond_6

    .line 107
    .line 108
    if-gt v6, v3, :cond_6

    .line 109
    .line 110
    add-int/lit8 v6, v6, 0x2

    .line 111
    .line 112
    move v3, v6

    .line 113
    move v6, v4

    .line 114
    goto :goto_1

    .line 115
    :cond_6
    if-le v3, v7, :cond_7

    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    move v6, v2

    .line 120
    goto :goto_1

    .line 121
    :cond_7
    move v6, v2

    .line 122
    move v3, v9

    .line 123
    goto :goto_1

    .line 124
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    new-array p0, p0, [Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, [Ljava/lang/String;

    .line 135
    .line 136
    return-void
.end method


# virtual methods
.method public final isClassContinue()Z
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    .line 4
    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xc8

    .line 8
    .line 9
    if-ge p0, v0, :cond_0

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

.method public final isClassOk()Z
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    .line 4
    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x12c

    .line 8
    .line 9
    if-ge p0, v0, :cond_0

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

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
