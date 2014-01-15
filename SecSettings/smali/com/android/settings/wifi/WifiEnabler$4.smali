.class Lcom/android/settings_ex/wifi/WifiEnabler$4;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler$4;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$4;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    #getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$1100(Lcom/android/settings_ex/wifi/WifiEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$4;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$1200(Lcom/android/settings_ex/wifi/WifiEnabler;Z)V

    .line 528
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$4;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 531
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$4;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    #getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$1000(Lcom/android/settings_ex/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v1, -0x2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$4;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    #getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$1000(Lcom/android/settings_ex/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v1, v0}, Lcom/android/settings_ex/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 536
    :cond_0
    return-void
.end method
