.class public interface abstract Landroid/hardware/broadcastradio/IdentifierType$$;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "null"

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/StringJoiner;

    .line 22
    .line 23
    const-string v3, "["

    .line 24
    .line 25
    const-string v4, "]"

    .line 26
    .line 27
    const-string v5, ", "

    .line 28
    .line 29
    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ge v3, v0, :cond_2

    .line 44
    .line 45
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/hardware/broadcastradio/IdentifierType$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-class v1, [I

    .line 60
    .line 61
    if-ne v0, v1, :cond_3

    .line 62
    .line 63
    check-cast p0, [I

    .line 64
    .line 65
    array-length v0, p0

    .line 66
    :goto_1
    if-ge v3, v0, :cond_2

    .line 67
    .line 68
    aget v1, p0, v3

    .line 69
    .line 70
    invoke-static {v1}, Landroid/hardware/broadcastradio/IdentifierType$$;->toString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo v2, "wrong type: "

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string/jumbo v2, "not an array: "

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "VENDOR_START"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/16 v0, 0x7cf

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    const-string p0, "VENDOR_END"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    if-nez p0, :cond_2

    .line 16
    .line 17
    const-string p0, "INVALID"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    const/4 v0, 0x1

    .line 21
    if-ne p0, v0, :cond_3

    .line 22
    .line 23
    const-string p0, "AMFM_FREQUENCY_KHZ"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    const/4 v0, 0x2

    .line 27
    if-ne p0, v0, :cond_4

    .line 28
    .line 29
    const-string p0, "RDS_PI"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    const/4 v0, 0x3

    .line 33
    if-ne p0, v0, :cond_5

    .line 34
    .line 35
    const-string p0, "HD_STATION_ID_EXT"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_5
    const/4 v0, 0x4

    .line 39
    if-ne p0, v0, :cond_6

    .line 40
    .line 41
    const-string p0, "HD_STATION_NAME"

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_6
    const/4 v0, 0x5

    .line 45
    if-ne p0, v0, :cond_7

    .line 46
    .line 47
    const-string p0, "DAB_SID_EXT"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_7
    const/4 v0, 0x6

    .line 51
    if-ne p0, v0, :cond_8

    .line 52
    .line 53
    const-string p0, "DAB_ENSEMBLE"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_8
    const/4 v0, 0x7

    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    const-string p0, "DAB_SCID"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0x8

    .line 63
    .line 64
    if-ne p0, v0, :cond_a

    .line 65
    .line 66
    const-string p0, "DAB_FREQUENCY_KHZ"

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0x9

    .line 70
    .line 71
    if-ne p0, v0, :cond_b

    .line 72
    .line 73
    const-string p0, "DRMO_SERVICE_ID"

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_b
    const/16 v0, 0xa

    .line 77
    .line 78
    if-ne p0, v0, :cond_c

    .line 79
    .line 80
    const-string p0, "DRMO_FREQUENCY_KHZ"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_c
    const/16 v0, 0xc

    .line 84
    .line 85
    if-ne p0, v0, :cond_d

    .line 86
    .line 87
    const-string p0, "SXM_SERVICE_ID"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_d
    const/16 v0, 0xd

    .line 91
    .line 92
    if-ne p0, v0, :cond_e

    .line 93
    .line 94
    const-string p0, "SXM_CHANNEL"

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_e
    const/16 v0, 0xe

    .line 98
    .line 99
    if-ne p0, v0, :cond_f

    .line 100
    .line 101
    const-string p0, "HD_STATION_LOCATION"

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_f
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method
