.class Lcom/android/settings_ex/guide/BtSettingsGuider$4;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/guide/BtSettingsGuider;->showCompleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$4;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "settings:guide_completed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$4;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-virtual {v1}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 506
    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$4;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-virtual {v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->onDestroy()V

    .line 507
    return-void
.end method
