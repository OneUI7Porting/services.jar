.class public final Landroid/os/epic/EpicAIDLObject;
.super Landroid/os/epic/IEpicObject$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field private static final EPIC_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest"

.field private static final EPIC_CLASS_STUB:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest$Stub"

.field private static final EPIC_HANDLE_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicHandle"

.field private static final IEPIC_AIDL_INTERFACE:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

.field private static final TAG:Ljava/lang/String; = "EpicObject"

.field private static m_epic_asInterface_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_handle_cls:Ljava/lang/Class; = null

.field private static m_epic_hint_release_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_init_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_init_multi_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_perf_hint_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_release_conditional_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_release_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_request_cls:Ljava/lang/Class; = null

.field private static m_epic_request_conditional_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_request_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_request_opt_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_request_opt_multi_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_request_stub_cls:Ljava/lang/Class; = null

.field private static m_has_load:Z = false


# instance fields
.field private m_binder:Landroid/os/IBinder;

.field private m_handle_obj:Ljava/lang/Object;

.field private m_request_obj:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/epic/IEpicObject$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    .line 5
    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;->create_instance()V

    .line 6
    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;->getService()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 7
    const-string v0, "EpicObject"

    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;-><init>()V

    .line 8
    sget-boolean v1, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/epic/EpicAIDLObject;->m_epic_asInterface_func:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    if-nez v2, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    :try_start_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 10
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 11
    :cond_1
    const-string/jumbo p0, "failed to get request_obj"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :goto_0
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 13
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 14
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>([I)V
    .locals 4

    .line 16
    const-string v0, "EpicObject"

    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;-><init>()V

    .line 17
    sget-boolean v1, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/epic/EpicAIDLObject;->m_epic_asInterface_func:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    if-nez v2, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    :try_start_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 19
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 20
    :cond_1
    const-string/jumbo p0, "failed to get request_obj"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 21
    :goto_0
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 22
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 23
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private create_instance()V
    .locals 17

    .line 1
    const-class v1, Landroid/os/epic/EpicAIDLObject;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    :try_start_2
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest"

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 22
    .line 23
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicHandle"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_handle_cls:Ljava/lang/Class;

    .line 31
    .line 32
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest$Stub"

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_stub_cls:Ljava/lang/Class;

    .line 40
    .line 41
    new-array v3, v2, [Ljava/lang/Class;

    .line 42
    .line 43
    const-class v4, Landroid/os/IBinder;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    aput-object v4, v3, v5

    .line 47
    .line 48
    new-array v4, v2, [Ljava/lang/Class;

    .line 49
    .line 50
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    aput-object v6, v4, v5

    .line 53
    .line 54
    new-array v7, v2, [Ljava/lang/Class;

    .line 55
    .line 56
    const-class v8, [I

    .line 57
    .line 58
    aput-object v8, v7, v5

    .line 59
    .line 60
    new-array v8, v2, [Ljava/lang/Class;

    .line 61
    .line 62
    sget-object v9, Landroid/os/epic/EpicAIDLObject;->m_epic_handle_cls:Ljava/lang/Class;

    .line 63
    .line 64
    aput-object v9, v8, v5

    .line 65
    .line 66
    new-array v10, v2, [Ljava/lang/Class;

    .line 67
    .line 68
    aput-object v9, v10, v5

    .line 69
    .line 70
    const/4 v11, 0x3

    .line 71
    new-array v12, v11, [Ljava/lang/Class;

    .line 72
    .line 73
    aput-object v9, v12, v5

    .line 74
    .line 75
    aput-object v6, v12, v2

    .line 76
    .line 77
    const/4 v13, 0x2

    .line 78
    aput-object v6, v12, v13

    .line 79
    .line 80
    new-array v6, v11, [Ljava/lang/Class;

    .line 81
    .line 82
    aput-object v9, v6, v5

    .line 83
    .line 84
    const-class v11, [I

    .line 85
    .line 86
    aput-object v11, v6, v2

    .line 87
    .line 88
    const-class v11, [I

    .line 89
    .line 90
    aput-object v11, v6, v13

    .line 91
    .line 92
    new-array v11, v13, [Ljava/lang/Class;

    .line 93
    .line 94
    aput-object v9, v11, v5

    .line 95
    .line 96
    const-class v14, Ljava/lang/String;

    .line 97
    .line 98
    aput-object v14, v11, v2

    .line 99
    .line 100
    new-array v14, v13, [Ljava/lang/Class;

    .line 101
    .line 102
    aput-object v9, v14, v5

    .line 103
    .line 104
    const-class v15, Ljava/lang/String;

    .line 105
    .line 106
    aput-object v15, v14, v2

    .line 107
    .line 108
    new-array v15, v13, [Ljava/lang/Class;

    .line 109
    .line 110
    aput-object v9, v15, v5

    .line 111
    .line 112
    const-class v16, Ljava/lang/String;

    .line 113
    .line 114
    aput-object v16, v15, v2

    .line 115
    .line 116
    new-array v13, v13, [Ljava/lang/Class;

    .line 117
    .line 118
    aput-object v9, v13, v5

    .line 119
    .line 120
    const-class v5, Ljava/lang/String;

    .line 121
    .line 122
    aput-object v5, v13, v2

    .line 123
    .line 124
    const-string/jumbo v5, "asInterface"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_asInterface_func:Ljava/lang/reflect/Method;

    .line 132
    .line 133
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 134
    .line 135
    const-string/jumbo v3, "init"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    .line 143
    .line 144
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 145
    .line 146
    const-string/jumbo v3, "init_multi"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    .line 154
    .line 155
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 156
    .line 157
    const-string v3, "acquire_lock"

    .line 158
    .line 159
    invoke-virtual {v0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    .line 164
    .line 165
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 166
    .line 167
    const-string/jumbo v3, "release_lock"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    .line 175
    .line 176
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 177
    .line 178
    const-string v3, "acquire_lock_option"

    .line 179
    .line 180
    invoke-virtual {v0, v3, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    .line 185
    .line 186
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 187
    .line 188
    const-string v3, "acquire_lock_multi_option"

    .line 189
    .line 190
    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    .line 195
    .line 196
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 197
    .line 198
    const-string v3, "acquire_lock_conditional"

    .line 199
    .line 200
    invoke-virtual {v0, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    .line 205
    .line 206
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 207
    .line 208
    const-string/jumbo v3, "release_lock_conditional"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v3, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    .line 216
    .line 217
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 218
    .line 219
    const-string/jumbo v3, "perf_hint"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    .line 227
    .line 228
    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 229
    .line 230
    const-string/jumbo v3, "hint_release"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v3, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    .line 238
    .line 239
    sput-boolean v2, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    .line 241
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_3
    new-instance v2, Ljava/io/StringWriter;

    .line 244
    .line 245
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 246
    .line 247
    .line 248
    new-instance v3, Ljava/io/PrintWriter;

    .line 249
    .line 250
    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const-string v2, "EpicObject"

    .line 261
    .line 262
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    :goto_0
    monitor-exit v1

    .line 266
    return-void

    .line 267
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    throw v0
.end method

.method private getService()V
    .locals 1

    .line 1
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, "EpicObject"

    .line 13
    .line 14
    const-string/jumbo v0, "failed to get service daemon binder"

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire_lock()Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Ljava/io/StringWriter;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/io/PrintWriter;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "EpicObject"

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_conditional(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/io/StringWriter;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/io/PrintWriter;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "EpicObject"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_option(II)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/io/StringWriter;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance p2, Ljava/io/PrintWriter;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "EpicObject"

    .line 60
    .line 61
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_option_multi([I[I)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/io/StringWriter;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance p2, Ljava/io/PrintWriter;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "EpicObject"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method public hint_release(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/io/StringWriter;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/io/PrintWriter;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "EpicObject"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method public perf_hint(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/io/StringWriter;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/io/PrintWriter;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "EpicObject"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method public release_lock()Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Ljava/io/StringWriter;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/io/PrintWriter;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "EpicObject"

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method public release_lock_conditional(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/io/StringWriter;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/io/PrintWriter;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "EpicObject"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return v1
.end method
