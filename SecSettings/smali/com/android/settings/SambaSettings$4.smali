.class Lcom/android/settings_ex/SambaSettings$4;
.super Ljava/lang/Object;
.source "SambaSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SambaSettings;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/settings_ex/SambaSettings$4;->this$0:Lcom/android/settings_ex/SambaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 384
    const-string v1, "SambaSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passwd Button isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings$4;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/SambaSettings;->access$100(Lcom/android/settings_ex/SambaSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 387
    .local v0, pos:I
    if-eqz p2, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings$4;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/SambaSettings;->access$100(Lcom/android/settings_ex/SambaSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 397
    :goto_0
    if-ltz v0, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings$4;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/SambaSettings;->access$100(Lcom/android/settings_ex/SambaSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 401
    :cond_0
    return-void

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings$4;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/SambaSettings;->access$100(Lcom/android/settings_ex/SambaSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0
.end method
