.class Lcom/android/settings_ex/SambaSettings$1;
.super Ljava/lang/Object;
.source "SambaSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SambaSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SambaSettings;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SambaSettings;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    iput-object p2, p0, Lcom/android/settings_ex/SambaSettings$1;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 343
    .local v0, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, passwd:Ljava/lang/String;
    const-string v2, "SambaSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afterTextChanged passwd ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->val$okButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    #calls: Lcom/android/settings_ex/SambaSettings;->isValidPasswd(Ljava/lang/String;I)Z
    invoke-static {v2, v1, v0}, Lcom/android/settings_ex/SambaSettings;->access$200(Lcom/android/settings_ex/SambaSettings;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->val$okButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->val$okButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 333
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/SambaSettings;->mTempPasswd:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/SambaSettings;->access$002(Lcom/android/settings_ex/SambaSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v4, 0x20

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, temp:Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 311
    .local v0, length:I
    const-string v2, "SambaSettings"

    const-string v3, "addTextChangedListener "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-nez v0, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->val$okButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 329
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->val$okButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 319
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-le v2, v4, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mTempPasswd:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/SambaSettings;->access$000(Lcom/android/settings_ex/SambaSettings;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mTempPasswd:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/SambaSettings;->access$000(Lcom/android/settings_ex/SambaSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-gt v2, v4, :cond_2

    .line 321
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/SambaSettings;->access$100(Lcom/android/settings_ex/SambaSettings;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mTempPasswd:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/SambaSettings;->access$000(Lcom/android/settings_ex/SambaSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/SambaSettings;->access$100(Lcom/android/settings_ex/SambaSettings;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings_ex/SambaSettings;->access$100(Lcom/android/settings_ex/SambaSettings;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings$1;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/SambaSettings;->access$100(Lcom/android/settings_ex/SambaSettings;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
