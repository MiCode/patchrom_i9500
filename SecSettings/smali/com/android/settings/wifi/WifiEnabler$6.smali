.class Lcom/android/settings_ex/wifi/WifiEnabler$6;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 559
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler$6;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$6;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    #getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$1100(Lcom/android/settings_ex/wifi/WifiEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$6;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    #calls: Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$1200(Lcom/android/settings_ex/wifi/WifiEnabler;Z)V

    .line 564
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$6;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 565
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$6;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    #getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$1000(Lcom/android/settings_ex/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0903dd

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 566
    return-void
.end method
