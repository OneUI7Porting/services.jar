.class public final synthetic Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onNameResolved(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteFieldClassificationService()V

    .line 24
    .line 25
    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 31
    .line 32
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->-$$Nest$msetServiceInfo(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter p2

    .line 38
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    if-nez p3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 51
    .line 52
    .line 53
    :goto_2
    monitor-exit p2

    .line 54
    return-void

    .line 55
    :goto_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    throw p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
