.class public Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field private static final TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mResponse:[B

.field public mResponseCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponseCode:I

    .line 7
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Length = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v3, "TACommandResponse"

    .line 22
    .line 23
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    .line 29
    .line 30
    array-length v2, v2

    .line 31
    mul-int/lit8 v2, v2, 0x3

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x64

    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .line 37
    .line 38
    move v2, v1

    .line 39
    :goto_0
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    .line 40
    .line 41
    array-length v5, v4

    .line 42
    if-ge v2, v5, :cond_1

    .line 43
    .line 44
    if-lez v2, :cond_0

    .line 45
    .line 46
    aget-byte v5, v4, v2

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    add-int/lit8 v5, v2, -0x1

    .line 51
    .line 52
    aget-byte v4, v4, v5

    .line 53
    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    const-string v4, "\n"

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    .line 62
    .line 63
    aget-byte v4, v4, v2

    .line 64
    .line 65
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v5, "%02X "

    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    invoke-static {v5, v4, v0, v2, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    new-array v2, v1, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {v3, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    .line 92
    .line 93
    const-string v3, "/mnt/sdcard/respbuf.txt"

    .line 94
    .line 95
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 96
    .line 97
    invoke-direct {v2, v3, v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 98
    .line 99
    .line 100
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_6

    .line 119
    :catch_0
    move-exception p0

    .line 120
    goto :goto_1

    .line 121
    :catch_1
    move-exception p0

    .line 122
    goto :goto_2

    .line 123
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    goto :goto_6

    .line 127
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    goto :goto_7

    .line 133
    :catch_2
    move-exception p0

    .line 134
    goto :goto_5

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    move-object v1, p0

    .line 137
    :goto_3
    move-object p0, v0

    .line 138
    goto :goto_7

    .line 139
    :catch_3
    move-exception v0

    .line 140
    move-object v1, p0

    .line 141
    :goto_4
    move-object p0, v0

    .line 142
    goto :goto_5

    .line 143
    :catchall_2
    move-exception v0

    .line 144
    move-object v1, p0

    .line 145
    move-object v2, v1

    .line 146
    goto :goto_3

    .line 147
    :catch_4
    move-exception v0

    .line 148
    move-object v1, p0

    .line 149
    move-object v2, v1

    .line 150
    goto :goto_4

    .line 151
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    .line 153
    .line 154
    if-eqz v1, :cond_2

    .line 155
    .line 156
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 157
    .line 158
    .line 159
    :cond_2
    if-eqz v2, :cond_3

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 162
    .line 163
    .line 164
    :cond_3
    :goto_6
    return-void

    .line 165
    :goto_7
    if-eqz v1, :cond_4

    .line 166
    .line 167
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 168
    .line 169
    .line 170
    goto :goto_8

    .line 171
    :catch_5
    move-exception v0

    .line 172
    goto :goto_9

    .line 173
    :catch_6
    move-exception v0

    .line 174
    goto :goto_a

    .line 175
    :cond_4
    :goto_8
    if-eqz v2, :cond_5

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 178
    .line 179
    .line 180
    goto :goto_b

    .line 181
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    goto :goto_b

    .line 185
    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    .line 187
    .line 188
    :cond_5
    :goto_b
    throw p0
.end method
