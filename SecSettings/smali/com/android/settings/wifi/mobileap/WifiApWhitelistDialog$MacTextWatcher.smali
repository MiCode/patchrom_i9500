.class Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
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
    name = "MacTextWatcher"
.end annotation


# instance fields
.field private mIndex:I

.field private mTempMac:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    .line 214
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 219
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 233
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->validate()V
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)V

    .line 234
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$002(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    .line 241
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
    .line 246
    return-void
.end method
