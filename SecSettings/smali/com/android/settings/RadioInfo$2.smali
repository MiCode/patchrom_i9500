.class Lcom/android/settings_ex/RadioInfo$2;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 189
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 191
    :sswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updatePhoneState()V
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$1200(Lcom/android/settings_ex/RadioInfo;)V

    goto :goto_0

    .line 195
    :sswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateSignalStrength()V
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$1300(Lcom/android/settings_ex/RadioInfo;)V

    goto :goto_0

    .line 199
    :sswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateServiceState()V
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$1400(Lcom/android/settings_ex/RadioInfo;)V

    .line 200
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updatePowerState()V
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$1500(Lcom/android/settings_ex/RadioInfo;)V

    goto :goto_0

    .line 204
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 205
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 206
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 207
    .local v1, type:I
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$1600(Lcom/android/settings_ex/RadioInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 208
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RadioInfo] EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$1600(Lcom/android/settings_ex/RadioInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$1700(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 214
    .end local v1           #type:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$1700(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/RadioInfo;->access$1600(Lcom/android/settings_ex/RadioInfo;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 218
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 219
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$1800(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 225
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 226
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 227
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V
    invoke-static {v3, v2}, Lcom/android/settings_ex/RadioInfo;->access$1900(Lcom/android/settings_ex/RadioInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 229
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$2000(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 233
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 234
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 235
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->smsc:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$2100(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "refresh error"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 237
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->smsc:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$2100(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 241
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->updateSmscButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$2200(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 243
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->smsc:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->access$2100(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "update error"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method
