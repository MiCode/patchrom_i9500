.class Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;
.super Ljava/lang/Object;
.source "SimeDecManager.java"

# interfaces
.implements Lcom/samsung/inputmethod/SimeEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/decoder/SimeDecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "eventNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/decoder/SimeDecManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter "event"
    .parameter "param1"
    .parameter "param2"

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 111
    :pswitch_1
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v3, :cond_0

    .line 113
    sget-object v2, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->MESSAGE_START:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    .line 115
    .local v2, sequnceType:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    #getter for: Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->access$000(Lcom/samsung/inputmethod/decoder/SimeDecManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 116
    .local v0, editInfo:Landroid/view/inputmethod/EditorInfo;
    const/4 v1, 0x0

    .line 117
    .local v1, editorFlag:I
    if-eqz v0, :cond_1

    .line 118
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v4, 0xfff000

    and-int v1, v3, v4

    .line 120
    :cond_1
    and-int/lit16 v3, v1, 0x4000

    if-nez v3, :cond_2

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_3

    .line 122
    :cond_2
    sget-object v2, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->MESSAGE_START:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    .line 126
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    #getter for: Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;
    invoke-static {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->access$100(Lcom/samsung/inputmethod/decoder/SimeDecManager;)Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setSequenceType(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;)V

    goto :goto_0

    .line 124
    :cond_3
    sget-object v2, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->NORMAL:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    goto :goto_1

    .line 131
    .end local v0           #editInfo:Landroid/view/inputmethod/EditorInfo;
    .end local v1           #editorFlag:I
    .end local v2           #sequnceType:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    #calls: Lcom/samsung/inputmethod/decoder/SimeDecManager;->storeUDB()Z
    invoke-static {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->access$200(Lcom/samsung/inputmethod/decoder/SimeDecManager;)Z

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    #calls: Lcom/samsung/inputmethod/decoder/SimeDecManager;->destroy()V
    invoke-static {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->access$300(Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
