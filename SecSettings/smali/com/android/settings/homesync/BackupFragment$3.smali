.class Lcom/android/settings_ex/homesync/BackupFragment$3;
.super Ljava/lang/Object;
.source "BackupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/BackupFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/BackupFragment;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings_ex/homesync/BackupFragment$3;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 207
    const-string v1, "BackupFragment"

    const-string v2, "Fileoperation is going to be canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$3;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/homesync/BackupFragment;->createCancelDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 209
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 210
    return-void
.end method
