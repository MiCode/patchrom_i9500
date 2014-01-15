.class Lcom/android/settings_ex/myprofile/EditMyProfileDialog$1;
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
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$1;->this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$1;->this$0:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 97
    return-void
.end method
