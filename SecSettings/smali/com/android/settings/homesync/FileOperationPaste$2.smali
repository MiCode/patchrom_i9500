.class Lcom/android/settings_ex/homesync/FileOperationPaste$2;
.super Ljava/lang/Object;
.source "FileOperationPaste.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/FileOperationPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/FileOperationPaste;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste$2;->this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 126
    const-string v1, "HomeSyncFileOperation"

    const-string v2, "Fileoperation is going to be canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste$2;->this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;

    invoke-virtual {v1}, Lcom/android/settings_ex/homesync/FileOperationPaste;->createCancelDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 128
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 129
    return-void
.end method
