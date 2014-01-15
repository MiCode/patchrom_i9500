.class Lcom/android/settings_ex/guide/BtSettingsGuider$3;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/guide/BtSettingsGuider;->initHelpDialogContent(II)V
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
    .line 429
    iput-object p1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$3;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$3;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    #getter for: Lcom/android/settings_ex/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->access$000(Lcom/android/settings_ex/guide/BtSettingsGuider;)Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$3;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    #getter for: Lcom/android/settings_ex/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->access$000(Lcom/android/settings_ex/guide/BtSettingsGuider;)Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$3;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 436
    return-void
.end method
