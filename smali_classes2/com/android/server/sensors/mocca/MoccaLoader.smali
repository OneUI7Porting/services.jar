.class public abstract Lcom/android/server/sensors/mocca/MoccaLoader;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final sServiceBridge:Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/sensors/mocca/MoccaLoader;->sServiceBridge:Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;

    .line 7
    .line 8
    return-void
.end method

.method public static getMoccaService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 4

    .line 1
    const-string v0, "com.samsung.android.mocca"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "com.samsung.android.mocca.MoccaSystemService"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Class;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const-class v3, Landroid/content/Context;

    .line 25
    .line 26
    aput-object v3, v1, v2

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/os/IBinder;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p0, "MoccaLoader"

    .line 44
    .line 45
    const-string v0, "Why Mocca service class is null?"

    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    :goto_0
    return-object p0
.end method

.method public static systemReady(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "systemReady"

    .line 2
    .line 3
    .line 4
    const-string v1, "com.samsung.android.mocca"

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "com.samsung.android.mocca.MoccaSystemService"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const-string p0, "MoccaLoader"

    .line 24
    .line 25
    const-string p1, "Why Mocca service class is null?"

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mocca/IMoccaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    const/4 v2, 0x0

    .line 39
    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    .line 40
    .line 41
    const-class v3, Landroid/os/IBinder;

    .line 42
    .line 43
    aput-object v3, v1, v2

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v3, Lcom/android/server/sensors/mocca/MoccaLoader;->sServiceBridge:Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;

    .line 50
    .line 51
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    new-array v1, v2, [Ljava/lang/Class;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method
