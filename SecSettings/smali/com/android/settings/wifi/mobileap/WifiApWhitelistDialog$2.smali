.class Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)V

    .line 274
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$402(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v2, 0x20

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, temp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09041b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 263
    :cond_0
    return-void

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
