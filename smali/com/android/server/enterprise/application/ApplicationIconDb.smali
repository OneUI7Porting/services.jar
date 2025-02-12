.class public final Lcom/android/server/enterprise/application/ApplicationIconDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const-string/jumbo v2, "dmappmgr.db"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationIconDb;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method public static isTableExists(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string v1, "SELECT 1 FROM ApplicationIcon WHERE 1=0"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const-string p0, "ApplicationIconDb"

    .line 12
    .line 13
    const-string v1, "::isTableExists:Table Does not exists "

    .line 14
    .line 15
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-string v0, "ApplicationIconDb"

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string/jumbo p0, "create table ApplicationIcon (_id integer primary key autoincrement, pkgname text, imagedata BLOB, newname text, userid int, nameowner int);"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p0, "::onCreate: Table is Created "

    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "::onCreate: Exception while table is creating "

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p0, "ALTER TABLE ApplicationIcon ADD COLUMN "

    .line 32
    .line 33
    const-string v1, " DEFAULT 0"

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :try_start_1
    const-string v2, "ALTER TABLE ApplicationIcon ADD COLUMN newname TEXT;"

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v2, "userid INT"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, ";"

    .line 62
    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p0, "ALTER TABLE ApplicationIcon ADD COLUMN nameowner INT;"

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_1
    move-exception p0

    .line 80
    const-string p1, "::insertNewColumns: Exception while table is upgrading "

    .line 81
    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 1
    const/4 p2, 0x3

    .line 2
    if-ne p3, p2, :cond_0

    .line 3
    .line 4
    const-string/jumbo p2, "securefolder customizedinfo owner updated to "

    .line 5
    .line 6
    .line 7
    const-string p3, " where pkgname=\'com.samsung.knox.securefolder\' and nameowner=1000"

    .line 8
    .line 9
    const-string/jumbo v0, "update ApplicationIcon set nameowner="

    .line 10
    .line 11
    .line 12
    :try_start_0
    const-string/jumbo v1, "com.samsung.knox.securefolder"

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationIconDb;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p1, "ApplicationIconDb"

    .line 45
    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_0
    :goto_0
    return-void
.end method
