.class Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog$1;
.super Ljava/lang/Object;
.source "WifiHiddenApAddDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->access$100(Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    #calls: Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->access$200(Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;)V

    .line 76
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->access$002(Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 65
    return-void
.end method
