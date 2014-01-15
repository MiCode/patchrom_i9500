.class Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings$2;
.super Ljava/lang/Object;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep2Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;

    #getter for: Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->access$100(Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;)Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->access$102(Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    .line 379
    return-void
.end method
