.class public final Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic val$activityComponent:Landroid/content/ComponentName;

.field public final synthetic val$activityToken:Landroid/os/IBinder;

.field public final synthetic val$cancellationRef:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$client:Landroid/view/autofill/IAutoFillManagerClient;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$focusedValue:Landroid/view/autofill/AutofillValue;

.field public final synthetic val$inlineSuggestionsCallback:Ljava/util/function/Function;

.field public final synthetic val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public final synthetic val$onErrorCallback:Ljava/lang/Runnable;

.field public final synthetic val$remoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public final synthetic val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$requestTime:J

.field public final synthetic val$service:Landroid/service/autofill/augmented/IAugmentedAutofillService;

.field public final synthetic val$sessionId:I

.field public final synthetic val$taskId:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/service/autofill/augmented/IAugmentedAutofillService;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Landroid/view/autofill/IAutoFillManagerClient;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$service:Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move v1, p3

    iput v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$sessionId:I

    move v1, p4

    iput v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$taskId:I

    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityComponent:Landroid/content/ComponentName;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedValue:Landroid/view/autofill/AutofillValue;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestTime:J

    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$onErrorCallback:Ljava/lang/Runnable;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$remoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$userId:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityToken:Landroid/os/IBinder;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$cancellationRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 11

    .line 1
    const-string p1, "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$service:Landroid/service/autofill/augmented/IAugmentedAutofillService;

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$sessionId:I

    .line 10
    .line 11
    iget v3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$taskId:I

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityComponent:Landroid/content/ComponentName;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 16
    .line 17
    iget-object v6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedValue:Landroid/view/autofill/AutofillValue;

    .line 18
    .line 19
    iget-wide v7, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestTime:J

    .line 20
    .line 21
    iget-object v9, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 22
    .line 23
    new-instance v10, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;

    .line 24
    .line 25
    invoke-direct {v10, p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;)V

    .line 26
    .line 27
    .line 28
    invoke-interface/range {v0 .. v10}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
