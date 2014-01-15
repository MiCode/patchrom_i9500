.class Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$1;
.super Ljava/lang/Object;
.source "HomeSyncAccountManagement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$1;->this$0:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "key_request_for"

    const-string v2, "deleteAdmin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$1;->this$0:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 185
    return-void
.end method
