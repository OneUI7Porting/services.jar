.class public final Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;
.super Landroid/app/IGrammaticalInflectionManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IGrammaticalInflectionManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSystemGrammaticalGender(Landroid/content/AttributionSource;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionUtils;->checkSystemGrammaticalGenderPermission(Landroid/permission/PermissionManager;Landroid/content/AttributionSource;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->checkSystemTermsOfAddressIsEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getSystemGrammaticalGender(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "AttributionSource: "

    .line 31
    .line 32
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " does not have READ_SYSTEM_GRAMMATICAL_GENDER permission."

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBinderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v2, v1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;-><init>(Landroid/app/IGrammaticalInflectionManager;Landroid/content/AttributionSource;)V

    .line 14
    .line 15
    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    move-object v5, p4

    .line 21
    move-object v6, p5

    .line 22
    move-object v7, p6

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final peekSystemGrammaticalGenderByUserId(Landroid/content/AttributionSource;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->checkSystemTermsOfAddressIsEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionUtils;->checkSystemGrammaticalGenderPermission(Landroid/permission/PermissionManager;Landroid/content/AttributionSource;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getSystemGrammaticalGender(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSystemWideGrammaticalGender(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$menforceCallerPermissions(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setSystemWideGrammaticalGender(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
