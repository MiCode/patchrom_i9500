.class Lcom/android/settings_ex/homesync/RestoreFragment$2;
.super Ljava/lang/Object;
.source "RestoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/RestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/RestoreFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/RestoreFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$2;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 161
    move-object v1, p1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 162
    .local v0, checked:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    const-string v1, "RestoreFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPasteType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/homesync/RestoreFragment$2;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    #getter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;
    invoke-static {v3}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$000(Lcom/android/settings_ex/homesync/RestoreFragment;)Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 164
    :pswitch_0
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$2;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    sget-object v2, Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;->OverwriteAll:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    #setter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;
    invoke-static {v1, v2}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$002(Lcom/android/settings_ex/homesync/RestoreFragment;Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;)Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    goto :goto_0

    .line 169
    :pswitch_1
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$2;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    sget-object v2, Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;->SkipAll:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    #setter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;
    invoke-static {v1, v2}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$002(Lcom/android/settings_ex/homesync/RestoreFragment;Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;)Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    goto :goto_0

    .line 174
    :pswitch_2
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$2;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    sget-object v2, Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;->SelectNewer:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    #setter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;
    invoke-static {v1, v2}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$002(Lcom/android/settings_ex/homesync/RestoreFragment;Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;)Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0346
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
