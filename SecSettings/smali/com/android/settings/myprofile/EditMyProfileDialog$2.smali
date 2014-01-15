.class Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;
.super Ljava/lang/Object;
.source "EditMyProfileDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;->this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;->this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    #getter for: Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mOnProfileTextChangedListener:Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->access$000(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;->this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    #getter for: Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mOnProfileTextChangedListener:Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->access$000(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;->this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    #getter for: Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mLabelEditMyProfile:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->access$100(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;->onProfileTextChanged(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;->this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;->this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    #getter for: Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mEditMyProfile:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->access$200(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->saveProfileTextToDB(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->access$300(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;->this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 92
    return-void
.end method
